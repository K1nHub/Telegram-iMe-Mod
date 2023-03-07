package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbHandler;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource;
import com.google.firebase.crashlytics.internal.log.LogFileManager;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.persistence.FileStoreImpl;
import com.google.firebase.crashlytics.internal.settings.SettingsDataProvider;
import com.google.firebase.crashlytics.internal.stacktrace.MiddleOutFallbackStrategy;
import com.google.firebase.crashlytics.internal.stacktrace.RemoveRepeatsStrategy;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3.dex */
public class CrashlyticsCore {
    private final AnalyticsEventLogger analyticsEventLogger;
    private final CrashlyticsBackgroundWorker backgroundWorker;
    public final BreadcrumbSource breadcrumbSource;
    private final Context context;
    private CrashlyticsController controller;
    private final ExecutorService crashHandlerExecutor;
    private CrashlyticsFileMarker crashMarker;
    private final DataCollectionArbiter dataCollectionArbiter;
    private final IdManager idManager;
    private CrashlyticsFileMarker initializationMarker;
    private final CrashlyticsNativeComponent nativeComponent;
    private final long startTime = System.currentTimeMillis();

    public static String getVersion() {
        return "18.2.3";
    }

    public CrashlyticsCore(FirebaseApp firebaseApp, IdManager idManager, CrashlyticsNativeComponent crashlyticsNativeComponent, DataCollectionArbiter dataCollectionArbiter, BreadcrumbSource breadcrumbSource, AnalyticsEventLogger analyticsEventLogger, ExecutorService executorService) {
        this.dataCollectionArbiter = dataCollectionArbiter;
        this.context = firebaseApp.getApplicationContext();
        this.idManager = idManager;
        this.nativeComponent = crashlyticsNativeComponent;
        this.breadcrumbSource = breadcrumbSource;
        this.analyticsEventLogger = analyticsEventLogger;
        this.crashHandlerExecutor = executorService;
        this.backgroundWorker = new CrashlyticsBackgroundWorker(executorService);
    }

    public boolean onPreExecute(AppData appData, SettingsDataProvider settingsDataProvider) {
        if (!isBuildIdValid(appData.buildId, CommonUtils.getBooleanResourceValue(this.context, "com.crashlytics.RequireBuildId", true))) {
            throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
        }
        try {
            FileStoreImpl fileStoreImpl = new FileStoreImpl(this.context);
            this.crashMarker = new CrashlyticsFileMarker("crash_marker", fileStoreImpl);
            this.initializationMarker = new CrashlyticsFileMarker("initialization_marker", fileStoreImpl);
            UserMetadata userMetadata = new UserMetadata();
            LogFileDirectoryProvider logFileDirectoryProvider = new LogFileDirectoryProvider(fileStoreImpl);
            LogFileManager logFileManager = new LogFileManager(this.context, logFileDirectoryProvider);
            this.controller = new CrashlyticsController(this.context, this.backgroundWorker, this.idManager, this.dataCollectionArbiter, fileStoreImpl, this.crashMarker, appData, userMetadata, logFileManager, logFileDirectoryProvider, SessionReportingCoordinator.create(this.context, this.idManager, fileStoreImpl, appData, logFileManager, userMetadata, new MiddleOutFallbackStrategy(1024, new RemoveRepeatsStrategy(10)), settingsDataProvider), this.nativeComponent, this.analyticsEventLogger);
            boolean didPreviousInitializationFail = didPreviousInitializationFail();
            checkForPreviousCrash();
            this.controller.enableExceptionHandling(Thread.getDefaultUncaughtExceptionHandler(), settingsDataProvider);
            if (didPreviousInitializationFail && CommonUtils.canTryConnection(this.context)) {
                Logger.getLogger().m738d("Crashlytics did not finish previous background initialization. Initializing synchronously.");
                finishInitSynchronously(settingsDataProvider);
                return false;
            }
            Logger.getLogger().m738d("Successfully configured exception handler.");
            return true;
        } catch (Exception e) {
            Logger.getLogger().m735e("Crashlytics was not started due to an exception during initialization", e);
            this.controller = null;
            return false;
        }
    }

    public Task<Void> doBackgroundInitializationAsync(final SettingsDataProvider settingsDataProvider) {
        return Utils.callTask(this.crashHandlerExecutor, new Callable<Task<Void>>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Task<Void> call() throws Exception {
                return CrashlyticsCore.this.doBackgroundInitialization(settingsDataProvider);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task<Void> doBackgroundInitialization(SettingsDataProvider settingsDataProvider) {
        markInitializationStarted();
        try {
            this.breadcrumbSource.registerBreadcrumbHandler(new BreadcrumbHandler() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore$$ExternalSyntheticLambda0
                @Override // com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbHandler
                public final void handleBreadcrumb(String str) {
                    CrashlyticsCore.this.log(str);
                }
            });
            if (!settingsDataProvider.getSettings().getFeaturesData().collectReports) {
                Logger.getLogger().m738d("Collection of crash reports disabled in Crashlytics settings.");
                return Tasks.forException(new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
            }
            if (!this.controller.finalizeSessions(settingsDataProvider)) {
                Logger.getLogger().m730w("Previous sessions could not be finalized.");
            }
            return this.controller.submitAllReports(settingsDataProvider.getAppSettings());
        } catch (Exception e) {
            Logger.getLogger().m735e("Crashlytics encountered a problem during asynchronous initialization.", e);
            return Tasks.forException(e);
        } finally {
            markInitializationComplete();
        }
    }

    public void logException(Throwable th) {
        this.controller.writeNonFatalException(Thread.currentThread(), th);
    }

    public void log(String str) {
        this.controller.writeToLog(System.currentTimeMillis() - this.startTime, str);
    }

    private void finishInitSynchronously(final SettingsDataProvider settingsDataProvider) {
        Future<?> submit = this.crashHandlerExecutor.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore.2
            @Override // java.lang.Runnable
            public void run() {
                CrashlyticsCore.this.doBackgroundInitialization(settingsDataProvider);
            }
        });
        Logger.getLogger().m738d("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Logger.getLogger().m735e("Crashlytics was interrupted during initialization.", e);
        } catch (ExecutionException e2) {
            Logger.getLogger().m735e("Crashlytics encountered a problem during initialization.", e2);
        } catch (TimeoutException e3) {
            Logger.getLogger().m735e("Crashlytics timed out during initialization.", e3);
        }
    }

    void markInitializationStarted() {
        this.backgroundWorker.checkRunningOnThread();
        this.initializationMarker.create();
        Logger.getLogger().m732v("Initialization marker file was created.");
    }

    void markInitializationComplete() {
        this.backgroundWorker.submit(new Callable<Boolean>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                try {
                    boolean remove = CrashlyticsCore.this.initializationMarker.remove();
                    if (!remove) {
                        Logger.getLogger().m730w("Initialization marker file was not properly removed.");
                    }
                    return Boolean.valueOf(remove);
                } catch (Exception e) {
                    Logger.getLogger().m735e("Problem encountered deleting Crashlytics initialization marker.", e);
                    return Boolean.FALSE;
                }
            }
        });
    }

    boolean didPreviousInitializationFail() {
        return this.initializationMarker.isPresent();
    }

    private void checkForPreviousCrash() {
        try {
            Boolean.TRUE.equals((Boolean) Utils.awaitEvenIfOnMainThread(this.backgroundWorker.submit(new Callable<Boolean>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Boolean call() throws Exception {
                    return Boolean.valueOf(CrashlyticsCore.this.controller.didCrashOnPreviousExecution());
                }
            })));
        } catch (Exception unused) {
        }
    }

    static boolean isBuildIdValid(String str, boolean z) {
        if (!z) {
            Logger.getLogger().m732v("Configured not to require a build ID.");
            return true;
        } else if (TextUtils.isEmpty(str)) {
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".     |  | ");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".   \\ |  | /");
            Log.e("FirebaseCrashlytics", ".    \\    /");
            Log.e("FirebaseCrashlytics", ".     \\  /");
            Log.e("FirebaseCrashlytics", ".      \\/");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".      /\\");
            Log.e("FirebaseCrashlytics", ".     /  \\");
            Log.e("FirebaseCrashlytics", ".    /    \\");
            Log.e("FirebaseCrashlytics", ".   / |  | \\");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".");
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class LogFileDirectoryProvider implements LogFileManager.DirectoryProvider {
        private final FileStore rootFileStore;

        public LogFileDirectoryProvider(FileStore fileStore) {
            this.rootFileStore = fileStore;
        }

        @Override // com.google.firebase.crashlytics.internal.log.LogFileManager.DirectoryProvider
        public File getLogFileDir() {
            File file = new File(this.rootFileStore.getFilesDir(), "log-files");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }
}
