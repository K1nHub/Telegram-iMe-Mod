package org.telegram.messenger;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.multidex.MultiDex;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.firebase.FirebaseApp;
import com.google.firebase.messaging.FirebaseMessaging;
import com.iMe.bots.usecase.AiBotsManager;
import com.iMe.common.AppLifecycleObserver;
import com.iMe.p023di.KoinJavaAppKt;
import com.iMe.p031ui.shop.PurchaseHelper;
import com.iMe.p031ui.shop.configuration.BillingConfiguration;
import com.iMe.p031ui.shop.configuration.BillingProvider;
import com.iMe.storage.data.manager.FlipperManager;
import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.data.utils.crypto.CryptoLibsLoader;
import com.iMe.utils.debug.FileLogTree;
import com.jakewharton.processphoenix.ProcessPhoenix;
import io.reactivex.plugins.RxJavaPlugins;
import java.io.File;
import org.koin.java.KoinJavaComponent;
import org.solovyev.android.checkout.Billing;
import org.telegram.messenger.PushListenerController;
import org.telegram.messenger.voip.VideoCapturerDevice;
import org.telegram.p043ui.Components.ForegroundDetector;
import org.telegram.p043ui.LauncherIconController;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* loaded from: classes4.dex */
public class ApplicationLoader extends Application implements BillingProvider {
    public static volatile Context applicationContext = null;
    public static volatile Handler applicationHandler = null;
    private static volatile boolean applicationInited = false;
    private static ApplicationLoader applicationLoaderInstance = null;
    public static boolean canDrawOverlays = false;
    private static ConnectivityManager connectivityManager = null;
    public static volatile NetworkInfo currentNetworkInfo = null;
    public static volatile boolean externalInterfacePaused = true;
    public static boolean isCheckForUpdateCanceled = false;
    public static boolean isCheckForUpdateInProgress = false;
    public static volatile boolean isScreenOn = false;
    private static int lastKnownNetworkType = -1;
    private static long lastNetworkCheckTypeTime = 0;
    private static ILocationServiceProvider locationServiceProvider = null;
    public static volatile boolean mainInterfacePaused = true;
    public static volatile boolean mainInterfacePausedStageQueue = true;
    public static volatile long mainInterfacePausedStageQueueTime = 0;
    public static volatile boolean mainInterfaceStopped = true;
    private static IMapsProvider mapsProvider;
    private static volatile ConnectivityManager.NetworkCallback networkCallback;
    public static volatile PurchaseHelper purchaseHelper;
    private static PushListenerController.IPushListenerServiceProvider pushProvider;
    public static volatile AiBotsManager smartBotsManager;
    public static long startTime;
    private final Billing mBilling = new Billing(this, new BillingConfiguration());

    protected void appCenterLogInternal(Throwable th) {
    }

    protected void checkForUpdatesInternal() {
    }

    protected boolean isHuaweiBuild() {
        return false;
    }

    protected String onGetApplicationId() {
        return null;
    }

    protected int onGetVersionCode() {
        return 0;
    }

    protected String onGetVersionName() {
        return null;
    }

    protected void startAppCenterInternal(Activity activity) {
    }

    public static void checkKoinInit() {
        try {
            try {
                KoinJavaComponent.getKoin();
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            initKoin();
        }
    }

    public static String getVersionName() {
        return applicationLoaderInstance.onGetVersionName();
    }

    public static int getVersionCode() {
        return applicationLoaderInstance.onGetVersionCode();
    }

    private static void initForkSmartBots() {
        try {
            File externalFilesDir = applicationContext.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            File file = new File(getFilesDirFixed().getAbsolutePath(), "ime");
            if (externalFilesDir != null) {
                smartBotsManager = AiBotsManager.Companion.getInstance(applicationContext, externalFilesDir, file);
            }
            purchaseHelper = PurchaseHelper.Companion.getInstance(smartBotsManager);
            applicationContext.registerReceiver(new BroadcastReceiver() { // from class: org.telegram.messenger.ApplicationLoader.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    ApplicationLoader.smartBotsManager.handleDownloadCompletion(intent.getLongExtra("extra_download_id", -1L));
                }
            }, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
        } catch (Exception e) {
            e.printStackTrace();
            FileLog.m49e(e);
        }
    }

    private static void initDebugTools() {
        Timber.plant(new FileLogTree());
        RxJavaPlugins.setErrorHandler(ApplicationLoader$$ExternalSyntheticLambda0.INSTANCE);
    }

    private static FirebaseApp initGoogleServices() {
        Context context = applicationContext;
        EnvironmentManager environmentManager = EnvironmentManager.INSTANCE;
        return FirebaseApp.initializeApp(context, environmentManager.getEnvironmentInformation().getGoogleServiceOptions(), environmentManager.getEnvironment().name());
    }

    private static void initCryptoSecureServices() {
        ProcessLifecycleOwner.get().getLifecycle().addObserver(new AppLifecycleObserver());
    }

    private static void initKoin() {
        KoinJavaAppKt.start(applicationContext);
    }

    @Override // com.iMe.p031ui.shop.configuration.BillingProvider
    public Billing provideBilling() {
        return this.mBilling;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }

    public static ILocationServiceProvider getLocationServiceProvider() {
        if (locationServiceProvider == null) {
            ILocationServiceProvider onCreateLocationServiceProvider = applicationLoaderInstance.onCreateLocationServiceProvider();
            locationServiceProvider = onCreateLocationServiceProvider;
            onCreateLocationServiceProvider.init(applicationContext);
        }
        return locationServiceProvider;
    }

    protected ILocationServiceProvider onCreateLocationServiceProvider() {
        return new GoogleLocationProvider();
    }

    public static IMapsProvider getMapsProvider() {
        if (mapsProvider == null) {
            mapsProvider = applicationLoaderInstance.onCreateMapsProvider();
        }
        return mapsProvider;
    }

    protected IMapsProvider onCreateMapsProvider() {
        return new GoogleMapsProvider();
    }

    public static PushListenerController.IPushListenerServiceProvider getPushProvider() {
        if (pushProvider == null) {
            pushProvider = applicationLoaderInstance.onCreatePushProvider();
        }
        return pushProvider;
    }

    protected PushListenerController.IPushListenerServiceProvider onCreatePushProvider() {
        return PushListenerController.GooglePushListenerServiceProvider.INSTANCE;
    }

    public static String getApplicationId() {
        return applicationLoaderInstance.onGetApplicationId();
    }

    public static boolean isHuaweiStoreBuild() {
        return applicationLoaderInstance.isHuaweiBuild();
    }

    public static File getFilesDirFixed() {
        for (int i = 0; i < 10; i++) {
            File filesDir = applicationContext.getFilesDir();
            if (filesDir != null) {
                return filesDir;
            }
        }
        try {
            File file = new File(applicationContext.getApplicationInfo().dataDir, "files");
            file.mkdirs();
            return file;
        } catch (Exception e) {
            FileLog.m49e(e);
            return new File("/data/data/org.telegram.messenger/files".replace(BuildConfig.LIBRARY_PACKAGE_NAME, getApplicationId()));
        }
    }

    public static void postInitApplication() {
        if (applicationInited || applicationContext == null) {
            checkKoinInit();
            return;
        }
        applicationInited = true;
        initForkSmartBots();
        checkKoinInit();
        PushListenerController.GooglePushListenerServiceProvider.INSTANCE.firebaseMessaging = (FirebaseMessaging) initGoogleServices().get(FirebaseMessaging.class);
        initDebugTools();
        initCryptoSecureServices();
        for (int i = 0; i < 5; i++) {
            UserConfig.getInstance(i).loadConfig();
        }
        CryptoLibsLoader.initTrustWalletCoreLibrary();
        try {
            LocaleController.getInstance();
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
            applicationContext.registerReceiver(new BroadcastReceiver() { // from class: org.telegram.messenger.ApplicationLoader.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    try {
                        ApplicationLoader.currentNetworkInfo = ApplicationLoader.connectivityManager.getActiveNetworkInfo();
                    } catch (Throwable unused) {
                    }
                    boolean isConnectionSlow = ApplicationLoader.isConnectionSlow();
                    for (int i2 = 0; i2 < 5; i2++) {
                        ConnectionsManager.getInstance(i2).checkConnection();
                        FileLoader.getInstance(i2).onNetworkChanged(isConnectionSlow);
                    }
                }
            }, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            applicationContext.registerReceiver(new ScreenReceiver(), intentFilter);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        try {
            isScreenOn = ((PowerManager) applicationContext.getSystemService("power")).isScreenOn();
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m52d("screen state = " + isScreenOn);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        SharedConfig.loadConfig();
        SharedPrefsHelper.init(applicationContext);
        for (int i2 = 0; i2 < 5; i2++) {
            MessagesController.getInstance(i2);
            if (i2 == 0) {
                SharedConfig.pushStringStatus = "__FIREBASE_GENERATING_SINCE_" + ConnectionsManager.getInstance(i2).getCurrentTime() + "__";
            } else {
                ConnectionsManager.getInstance(i2);
            }
            TLRPC$User currentUser = UserConfig.getInstance(i2).getCurrentUser();
            if (currentUser != null) {
                MessagesController.getInstance(i2).putUser(currentUser, true);
                SendMessagesHelper.getInstance(i2).checkUnsentMessages();
            }
        }
        ((ApplicationLoader) applicationContext).initPushServices();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m52d("app initied");
        }
        MediaController.getInstance();
        for (int i3 = 0; i3 < 5; i3++) {
            ContactsController.getInstance(i3).checkAppAccount();
            DownloadController.getInstance(i3);
        }
        ChatThemeController.init();
        BillingController.getInstance().startConnection();
    }

    @Override // android.app.Application
    public void onCreate() {
        if (ProcessPhoenix.isPhoenixProcess(this)) {
            return;
        }
        applicationLoaderInstance = this;
        try {
            applicationContext = getApplicationContext();
        } catch (Throwable unused) {
        }
        super.onCreate();
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            sb.append("app start time = ");
            long elapsedRealtime = SystemClock.elapsedRealtime();
            startTime = elapsedRealtime;
            sb.append(elapsedRealtime);
            FileLog.m52d(sb.toString());
            FileLog.m52d("buildVersion = " + BuildVars.BUILD_VERSION);
        }
        if (applicationContext == null) {
            applicationContext = getApplicationContext();
        }
        NativeLoader.initNativeLibs(applicationContext);
        try {
            ConnectionsManager.native_setJava(false);
            new ForegroundDetector(this) { // from class: org.telegram.messenger.ApplicationLoader.3
                @Override // org.telegram.p043ui.Components.ForegroundDetector, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    boolean isBackground = isBackground();
                    super.onActivityStarted(activity);
                    if (isBackground) {
                        ApplicationLoader.ensureCurrentNetworkGet(true);
                    }
                }
            };
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m52d("load libs time = " + (SystemClock.elapsedRealtime() - startTime));
            }
            applicationHandler = new Handler(applicationContext.getMainLooper());
            AndroidUtilities.runOnUIThread(ApplicationLoader$$ExternalSyntheticLambda2.INSTANCE);
            LauncherIconController.tryFixLauncherIconIfNeeded();
            ProxyRotationController.init();
            FlipperManager.start(this);
        } catch (UnsatisfiedLinkError unused2) {
            throw new RuntimeException("can't load native libraries " + Build.CPU_ABI + " lookup folder " + NativeLoader.getAbiFolder());
        }
    }

    public static void startPushService() {
        boolean z;
        SharedPreferences globalNotificationsSettings = MessagesController.getGlobalNotificationsSettings();
        if (globalNotificationsSettings.contains("pushService")) {
            z = globalNotificationsSettings.getBoolean("pushService", true);
        } else {
            z = MessagesController.getMainSettings(UserConfig.selectedAccount).getBoolean("keepAliveService", false);
        }
        if (z) {
            try {
                applicationContext.startService(new Intent(applicationContext, NotificationsService.class));
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        applicationContext.stopService(new Intent(applicationContext, NotificationsService.class));
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            LocaleController.getInstance().onDeviceConfigurationChange(configuration);
            AndroidUtilities.checkDisplaySize(applicationContext, configuration);
            VideoCapturerDevice.checkScreenCapturerSize();
            AndroidUtilities.resetTabletFlag();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void initPushServices() {
        AndroidUtilities.runOnUIThread(ApplicationLoader$$ExternalSyntheticLambda1.INSTANCE, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$initPushServices$0() {
        if (getPushProvider().hasServices()) {
            getPushProvider().onRequestPushToken();
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m52d("No valid " + getPushProvider().getLogTitle() + " APK found.");
        }
        SharedConfig.pushStringStatus = "__NO_GOOGLE_PLAY_SERVICES__";
        PushListenerController.sendRegistrationToServer(getPushProvider().getPushType(), null);
    }

    private boolean checkPlayServices() {
        try {
            return GooglePlayServicesUtil.isGooglePlayServicesAvailable(this) == 0;
        } catch (Exception e) {
            FileLog.m49e(e);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ensureCurrentNetworkGet(boolean z) {
        if (z || currentNetworkInfo == null) {
            try {
                if (connectivityManager == null) {
                    connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
                }
                currentNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (Build.VERSION.SDK_INT < 24 || networkCallback != null) {
                    return;
                }
                networkCallback = new ConnectivityManager.NetworkCallback() { // from class: org.telegram.messenger.ApplicationLoader.4
                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onAvailable(Network network) {
                        int unused = ApplicationLoader.lastKnownNetworkType = -1;
                    }

                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                        int unused = ApplicationLoader.lastKnownNetworkType = -1;
                    }
                };
                connectivityManager.registerDefaultNetworkCallback(networkCallback);
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean isRoaming() {
        try {
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null) {
                return currentNetworkInfo.isRoaming();
            }
            return false;
        } catch (Exception e) {
            FileLog.m49e(e);
            return false;
        }
    }

    public static boolean isConnectedOrConnectingToWiFi() {
        try {
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null && (currentNetworkInfo.getType() == 1 || currentNetworkInfo.getType() == 9)) {
                NetworkInfo.State state = currentNetworkInfo.getState();
                if (state != NetworkInfo.State.CONNECTED && state != NetworkInfo.State.CONNECTING) {
                    if (state == NetworkInfo.State.SUSPENDED) {
                    }
                }
                return true;
            }
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        return false;
    }

    public static boolean isConnectedToWiFi() {
        try {
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null && (currentNetworkInfo.getType() == 1 || currentNetworkInfo.getType() == 9)) {
                if (currentNetworkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        return false;
    }

    public static boolean isConnectionSlow() {
        try {
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null && currentNetworkInfo.getType() == 0) {
                int subtype = currentNetworkInfo.getSubtype();
                if (subtype == 1 || subtype == 2 || subtype == 4 || subtype == 7 || subtype == 11) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int getAutodownloadNetworkType() {
        int i;
        try {
            ensureCurrentNetworkGet(false);
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        if (currentNetworkInfo == null) {
            return 0;
        }
        if (currentNetworkInfo.getType() != 1 && currentNetworkInfo.getType() != 9) {
            return currentNetworkInfo.isRoaming() ? 2 : 0;
        }
        if (Build.VERSION.SDK_INT >= 24 && (((i = lastKnownNetworkType) == 0 || i == 1) && System.currentTimeMillis() - lastNetworkCheckTypeTime < 5000)) {
            return lastKnownNetworkType;
        }
        if (connectivityManager.isActiveNetworkMetered()) {
            lastKnownNetworkType = 0;
        } else {
            lastKnownNetworkType = 1;
        }
        lastNetworkCheckTypeTime = System.currentTimeMillis();
        return lastKnownNetworkType;
    }

    public static int getCurrentNetworkType() {
        if (isConnectedOrConnectingToWiFi()) {
            return 1;
        }
        return isRoaming() ? 2 : 0;
    }

    public static boolean isNetworkOnlineFast() {
        try {
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null && !currentNetworkInfo.isConnectedOrConnecting() && !currentNetworkInfo.isAvailable()) {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
                if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
                    NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
                    if (networkInfo2 != null) {
                        if (networkInfo2.isConnectedOrConnecting()) {
                            return true;
                        }
                    }
                    return false;
                }
                return true;
            }
            return true;
        } catch (Exception e) {
            FileLog.m49e(e);
            return true;
        }
    }

    public static boolean isNetworkOnlineRealtime() {
        try {
            ConnectivityManager connectivityManager2 = (ConnectivityManager) applicationContext.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager2.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !(activeNetworkInfo.isConnectedOrConnecting() || activeNetworkInfo.isAvailable())) {
                NetworkInfo networkInfo = connectivityManager2.getNetworkInfo(0);
                if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
                    NetworkInfo networkInfo2 = connectivityManager2.getNetworkInfo(1);
                    if (networkInfo2 != null) {
                        if (networkInfo2.isConnectedOrConnecting()) {
                            return true;
                        }
                    }
                    return false;
                }
                return true;
            }
            return true;
        } catch (Exception e) {
            FileLog.m49e(e);
            return true;
        }
    }

    public static boolean isNetworkOnline() {
        boolean isNetworkOnlineRealtime = isNetworkOnlineRealtime();
        if (BuildVars.DEBUG_PRIVATE_VERSION && isNetworkOnlineRealtime != isNetworkOnlineFast()) {
            FileLog.m52d("network online mismatch");
        }
        return isNetworkOnlineRealtime;
    }

    public static void startAppCenter(Activity activity) {
        applicationLoaderInstance.startAppCenterInternal(activity);
    }

    public static void checkForUpdates() {
        applicationLoaderInstance.checkForUpdatesInternal();
    }

    public static void appCenterLog(Throwable th) {
        applicationLoaderInstance.appCenterLogInternal(th);
    }
}
