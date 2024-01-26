package com.microsoft.appcenter;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.exoplayer2.C0483C;
import com.microsoft.appcenter.channel.Channel;
import com.microsoft.appcenter.channel.DefaultChannel;
import com.microsoft.appcenter.channel.OneCollectorChannelListener;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.http.HttpUtils;
import com.microsoft.appcenter.ingestion.models.StartServiceLog;
import com.microsoft.appcenter.ingestion.models.json.DefaultLogSerializer;
import com.microsoft.appcenter.ingestion.models.json.LogFactory;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import com.microsoft.appcenter.ingestion.models.json.StartServiceLogFactory;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.ApplicationLifecycleListener;
import com.microsoft.appcenter.utils.IdHelper;
import com.microsoft.appcenter.utils.NetworkStateHelper;
import com.microsoft.appcenter.utils.async.DefaultAppCenterFuture;
import com.microsoft.appcenter.utils.context.SessionContext;
import com.microsoft.appcenter.utils.context.UserIdContext;
import com.microsoft.appcenter.utils.storage.FileManager;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4.dex */
public class AppCenter {
    private static AppCenter sInstance;
    private Boolean mAllowedNetworkRequests;
    private AppCenterHandler mAppCenterHandler;
    private String mAppSecret;
    private Application mApplication;
    private ApplicationLifecycleListener mApplicationLifecycleListener;
    private Channel mChannel;
    private boolean mConfiguredFromApp;
    private Context mContext;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private boolean mLogLevelConfigured;
    private LogSerializer mLogSerializer;
    private String mLogUrl;
    private OneCollectorChannelListener mOneCollectorChannelListener;
    private Set<AppCenterService> mServices;
    private Set<AppCenterService> mServicesStartedFromLibrary;
    private DefaultAppCenterFuture<Boolean> mSetMaxStorageSizeFuture;
    private String mTransmissionTargetToken;
    private UncaughtExceptionHandler mUncaughtExceptionHandler;
    private final List<String> mStartedServicesNamesToLog = new ArrayList();
    private long mMaxStorageSizeInBytes = 10485760;

    public static synchronized AppCenter getInstance() {
        AppCenter appCenter;
        synchronized (AppCenter.class) {
            if (sInstance == null) {
                sInstance = new AppCenter();
            }
            appCenter = sInstance;
        }
        return appCenter;
    }

    @SafeVarargs
    public static void start(Application application, String appSecret, Class<? extends AppCenterService>... services) {
        getInstance().configureAndStartServices(application, appSecret, services);
    }

    private synchronized void setInstanceUserId(String userId) {
        if (!this.mConfiguredFromApp) {
            AppCenterLog.error("AppCenter", "AppCenter must be configured from application, libraries cannot use call setUserId.");
            return;
        }
        String str = this.mAppSecret;
        if (str == null && this.mTransmissionTargetToken == null) {
            AppCenterLog.error("AppCenter", "AppCenter must be configured with a secret from application to call setUserId.");
            return;
        }
        if (userId != null) {
            if (str != null && !UserIdContext.checkUserIdValidForAppCenter(userId)) {
                return;
            }
            if (this.mTransmissionTargetToken != null && !UserIdContext.checkUserIdValidForOneCollector(userId)) {
                return;
            }
        }
        UserIdContext.getInstance().setUserId(userId);
    }

    private synchronized boolean checkPrecondition() {
        if (isInstanceConfigured()) {
            return true;
        }
        AppCenterLog.error("AppCenter", "App Center hasn't been configured. You need to call AppCenter.start with appSecret or AppCenter.configure first.");
        return false;
    }

    private synchronized boolean isInstanceConfigured() {
        return this.mApplication != null;
    }

    private synchronized boolean configureInstance(Application application, String secretString, final boolean configureFromApp) {
        if (application == null) {
            AppCenterLog.error("AppCenter", "Application context may not be null.");
            return false;
        }
        if (!this.mLogLevelConfigured && (application.getApplicationInfo().flags & 2) == 2) {
            AppCenterLog.setLogLevel(5);
        }
        String str = this.mAppSecret;
        if (!configureFromApp || configureSecretString(secretString)) {
            if (this.mHandler != null) {
                String str2 = this.mAppSecret;
                if (str2 != null && !str2.equals(str)) {
                    this.mHandler.post(new Runnable() { // from class: com.microsoft.appcenter.AppCenter.3
                        @Override // java.lang.Runnable
                        public void run() {
                            AppCenter.this.mChannel.setAppSecret(AppCenter.this.mAppSecret);
                            AppCenter.this.applyStorageMaxSize();
                        }
                    });
                }
                return true;
            }
            this.mApplication = application;
            Context applicationContext = ApplicationContextUtils.getApplicationContext(application);
            this.mContext = applicationContext;
            if (ApplicationContextUtils.isDeviceProtectedStorage(applicationContext)) {
                AppCenterLog.warn("AppCenter", "A user is locked, credential-protected private app data storage is not available.\nApp Center will use device-protected data storage that available without user authentication.\nPlease note that it's a separate storage, all settings and pending logs won't be shared with regular storage.");
            }
            HandlerThread handlerThread = new HandlerThread("AppCenter.Looper");
            this.mHandlerThread = handlerThread;
            handlerThread.start();
            this.mHandler = new Handler(this.mHandlerThread.getLooper());
            this.mAppCenterHandler = new AppCenterHandler() { // from class: com.microsoft.appcenter.AppCenter.4
                @Override // com.microsoft.appcenter.AppCenterHandler
                public void post(Runnable runnable, Runnable disabledRunnable) {
                    AppCenter.this.handlerAppCenterOperation(runnable, disabledRunnable);
                }
            };
            ApplicationLifecycleListener applicationLifecycleListener = new ApplicationLifecycleListener(this.mHandler);
            this.mApplicationLifecycleListener = applicationLifecycleListener;
            this.mApplication.registerActivityLifecycleCallbacks(applicationLifecycleListener);
            this.mServices = new HashSet();
            this.mServicesStartedFromLibrary = new HashSet();
            this.mHandler.post(new Runnable() { // from class: com.microsoft.appcenter.AppCenter.5
                @Override // java.lang.Runnable
                public void run() {
                    AppCenter.this.finishConfiguration(configureFromApp);
                }
            });
            AppCenterLog.info("AppCenter", "App Center SDK configured successfully.");
            return true;
        }
        return false;
    }

    private boolean configureSecretString(String secretString) {
        if (this.mConfiguredFromApp) {
            AppCenterLog.warn("AppCenter", "App Center may only be configured once.");
            return false;
        }
        this.mConfiguredFromApp = true;
        if (secretString != null) {
            for (String str : secretString.split(";")) {
                String[] split = str.split("=", -1);
                String str2 = split[0];
                if (split.length == 1) {
                    if (!str2.isEmpty()) {
                        this.mAppSecret = str2;
                    }
                } else if (!split[1].isEmpty()) {
                    String str3 = split[1];
                    if ("appsecret".equals(str2)) {
                        this.mAppSecret = str3;
                    } else if ("target".equals(str2)) {
                        this.mTransmissionTargetToken = str3;
                    }
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handlerAppCenterOperation(final Runnable runnable, final Runnable disabledRunnable) {
        if (checkPrecondition()) {
            Runnable runnable2 = new Runnable() { // from class: com.microsoft.appcenter.AppCenter.6
                @Override // java.lang.Runnable
                public void run() {
                    if (AppCenter.this.isInstanceEnabled()) {
                        runnable.run();
                        return;
                    }
                    Runnable runnable3 = disabledRunnable;
                    if (runnable3 != null) {
                        runnable3.run();
                    } else {
                        AppCenterLog.error("AppCenter", "App Center SDK is disabled.");
                    }
                }
            };
            if (Thread.currentThread() == this.mHandlerThread) {
                runnable.run();
            } else {
                this.mHandler.post(runnable2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishConfiguration(boolean configureFromApp) {
        Constants.loadFromContext(this.mContext);
        FileManager.initialize(this.mContext);
        SharedPreferencesManager.initialize(this.mContext);
        Boolean bool = this.mAllowedNetworkRequests;
        if (bool != null) {
            SharedPreferencesManager.putBoolean("allowedNetworkRequests", bool.booleanValue());
        }
        SessionContext.getInstance();
        boolean isInstanceEnabled = isInstanceEnabled();
        HttpClient httpClient = DependencyConfiguration.getHttpClient();
        if (httpClient == null) {
            httpClient = HttpUtils.createHttpClient(this.mContext);
        }
        DefaultLogSerializer defaultLogSerializer = new DefaultLogSerializer();
        this.mLogSerializer = defaultLogSerializer;
        defaultLogSerializer.addLogFactory("startService", new StartServiceLogFactory());
        DefaultChannel defaultChannel = new DefaultChannel(this.mContext, this.mAppSecret, this.mLogSerializer, httpClient, this.mHandler);
        this.mChannel = defaultChannel;
        if (configureFromApp) {
            applyStorageMaxSize();
        } else {
            defaultChannel.setMaxStorageSize(10485760L);
        }
        this.mChannel.setEnabled(isInstanceEnabled);
        this.mChannel.addGroup("group_core", 50, C0483C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, 3, null, null);
        this.mOneCollectorChannelListener = new OneCollectorChannelListener(this.mChannel, this.mLogSerializer, httpClient, IdHelper.getInstallId());
        if (this.mLogUrl != null) {
            if (this.mAppSecret != null) {
                AppCenterLog.info("AppCenter", "The log url of App Center endpoint has been changed to " + this.mLogUrl);
                this.mChannel.setLogUrl(this.mLogUrl);
            } else {
                AppCenterLog.info("AppCenter", "The log url of One Collector endpoint has been changed to " + this.mLogUrl);
                this.mOneCollectorChannelListener.setLogUrl(this.mLogUrl);
            }
        }
        this.mChannel.addListener(this.mOneCollectorChannelListener);
        if (!isInstanceEnabled) {
            NetworkStateHelper.getSharedInstance(this.mContext).close();
        }
        UncaughtExceptionHandler uncaughtExceptionHandler = new UncaughtExceptionHandler(this.mHandler, this.mChannel);
        this.mUncaughtExceptionHandler = uncaughtExceptionHandler;
        if (isInstanceEnabled) {
            uncaughtExceptionHandler.register();
        }
        AppCenterLog.debug("AppCenter", "App Center initialized.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyStorageMaxSize() {
        boolean maxStorageSize = this.mChannel.setMaxStorageSize(this.mMaxStorageSizeInBytes);
        DefaultAppCenterFuture<Boolean> defaultAppCenterFuture = this.mSetMaxStorageSizeFuture;
        if (defaultAppCenterFuture != null) {
            defaultAppCenterFuture.complete(Boolean.valueOf(maxStorageSize));
        }
    }

    @SafeVarargs
    private final synchronized void startServices(final boolean startFromApp, Class<? extends AppCenterService>... services) {
        if (services == null) {
            AppCenterLog.error("AppCenter", "Cannot start services, services array is null. Failed to start services.");
            return;
        }
        if (!isInstanceConfigured()) {
            StringBuilder sb = new StringBuilder();
            for (Class<? extends AppCenterService> cls : services) {
                sb.append("\t");
                sb.append(cls.getName());
                sb.append("\n");
            }
            AppCenterLog.error("AppCenter", "Cannot start services, App Center has not been configured. Failed to start the following services:\n" + ((Object) sb));
            return;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        for (Class<? extends AppCenterService> cls2 : services) {
            if (cls2 == null) {
                AppCenterLog.warn("AppCenter", "Skipping null service, please check your varargs/array does not contain any null reference.");
            } else {
                try {
                    startOrUpdateService((AppCenterService) cls2.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]), arrayList, arrayList2, startFromApp);
                } catch (Exception e) {
                    AppCenterLog.error("AppCenter", "Failed to get service instance '" + cls2.getName() + "', skipping it.", e);
                }
            }
        }
        this.mHandler.post(new Runnable() { // from class: com.microsoft.appcenter.AppCenter.7
            @Override // java.lang.Runnable
            public void run() {
                AppCenter.this.finishStartServices(arrayList2, arrayList, startFromApp);
            }
        });
    }

    private void startOrUpdateService(AppCenterService serviceInstance, Collection<AppCenterService> startedServices, Collection<AppCenterService> updatedServices, boolean startFromApp) {
        if (startFromApp) {
            startOrUpdateServiceFromApp(serviceInstance, startedServices, updatedServices);
        } else if (this.mServices.contains(serviceInstance)) {
        } else {
            startServiceFromLibrary(serviceInstance, startedServices);
        }
    }

    private void startOrUpdateServiceFromApp(AppCenterService serviceInstance, Collection<AppCenterService> startedServices, Collection<AppCenterService> updatedServices) {
        String serviceName = serviceInstance.getServiceName();
        if (this.mServices.contains(serviceInstance)) {
            if (this.mServicesStartedFromLibrary.remove(serviceInstance)) {
                updatedServices.add(serviceInstance);
                return;
            }
            AppCenterLog.warn("AppCenter", "App Center has already started the service with class name: " + serviceInstance.getServiceName());
        } else if (this.mAppSecret == null && serviceInstance.isAppSecretRequired()) {
            AppCenterLog.error("AppCenter", "App Center was started without app secret, but the service requires it; not starting service " + serviceName + ".");
        } else {
            startService(serviceInstance, startedServices);
        }
    }

    private void startServiceFromLibrary(AppCenterService serviceInstance, Collection<AppCenterService> startedServices) {
        String serviceName = serviceInstance.getServiceName();
        if (serviceInstance.isAppSecretRequired()) {
            AppCenterLog.error("AppCenter", "This service cannot be started from a library: " + serviceName + ".");
        } else if (startService(serviceInstance, startedServices)) {
            this.mServicesStartedFromLibrary.add(serviceInstance);
        }
    }

    private boolean startService(AppCenterService serviceInstance, Collection<AppCenterService> startedServices) {
        String serviceName = serviceInstance.getServiceName();
        if (ServiceInstrumentationUtils.isServiceDisabledByInstrumentation(serviceName)) {
            AppCenterLog.debug("AppCenter", "Instrumentation variable to disable service has been set; not starting service " + serviceName + ".");
            return false;
        }
        serviceInstance.onStarting(this.mAppCenterHandler);
        this.mApplicationLifecycleListener.registerApplicationLifecycleCallbacks(serviceInstance);
        this.mApplication.registerActivityLifecycleCallbacks(serviceInstance);
        this.mServices.add(serviceInstance);
        startedServices.add(serviceInstance);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishStartServices(Iterable<AppCenterService> updatedServices, Iterable<AppCenterService> startedServices, boolean startFromApp) {
        for (AppCenterService appCenterService : updatedServices) {
            appCenterService.onConfigurationUpdated(this.mAppSecret, this.mTransmissionTargetToken);
            AppCenterLog.info("AppCenter", appCenterService.getClass().getSimpleName() + " service configuration updated.");
        }
        boolean isInstanceEnabled = isInstanceEnabled();
        for (AppCenterService appCenterService2 : startedServices) {
            Map<String, LogFactory> logFactories = appCenterService2.getLogFactories();
            if (logFactories != null) {
                for (Map.Entry<String, LogFactory> entry : logFactories.entrySet()) {
                    this.mLogSerializer.addLogFactory(entry.getKey(), entry.getValue());
                }
            }
            if (!isInstanceEnabled && appCenterService2.isInstanceEnabled()) {
                appCenterService2.setInstanceEnabled(false);
            }
            if (startFromApp) {
                appCenterService2.onStarted(this.mContext, this.mChannel, this.mAppSecret, this.mTransmissionTargetToken, true);
                AppCenterLog.info("AppCenter", appCenterService2.getClass().getSimpleName() + " service started from application.");
            } else {
                appCenterService2.onStarted(this.mContext, this.mChannel, null, null, false);
                AppCenterLog.info("AppCenter", appCenterService2.getClass().getSimpleName() + " service started from library.");
            }
        }
        if (startFromApp) {
            for (AppCenterService appCenterService3 : updatedServices) {
                this.mStartedServicesNamesToLog.add(appCenterService3.getServiceName());
            }
            for (AppCenterService appCenterService4 : startedServices) {
                this.mStartedServicesNamesToLog.add(appCenterService4.getServiceName());
            }
            sendStartServiceLog();
        }
    }

    private void sendStartServiceLog() {
        if (this.mStartedServicesNamesToLog.isEmpty() || !isInstanceEnabled()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.mStartedServicesNamesToLog);
        this.mStartedServicesNamesToLog.clear();
        StartServiceLog startServiceLog = new StartServiceLog();
        startServiceLog.setServices(arrayList);
        startServiceLog.oneCollectorEnabled(Boolean.valueOf(this.mTransmissionTargetToken != null));
        this.mChannel.enqueue(startServiceLog, "group_core", 1);
    }

    private synchronized void configureAndStartServices(Application application, String appSecret, Class<? extends AppCenterService>[] services) {
        if (appSecret != null) {
            if (!appSecret.isEmpty()) {
                configureAndStartServices(application, appSecret, true, services);
            }
        }
        AppCenterLog.error("AppCenter", "appSecret may not be null or empty.");
    }

    private void configureAndStartServices(Application application, String appSecret, boolean startFromApp, Class<? extends AppCenterService>[] services) {
        if (configureInstance(application, appSecret, startFromApp)) {
            startServices(startFromApp, services);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInstanceEnabled() {
        return SharedPreferencesManager.getBoolean("enabled", true);
    }

    public static void setUserId(String userId) {
        getInstance().setInstanceUserId(userId);
    }
}
