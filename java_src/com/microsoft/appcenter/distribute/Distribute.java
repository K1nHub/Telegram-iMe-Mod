package com.microsoft.appcenter.distribute;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;
import com.microsoft.appcenter.AbstractAppCenterService;
import com.microsoft.appcenter.channel.Channel;
import com.microsoft.appcenter.distribute.channel.DistributeInfoTracker;
import com.microsoft.appcenter.distribute.download.ReleaseDownloader;
import com.microsoft.appcenter.distribute.download.ReleaseDownloaderFactory;
import com.microsoft.appcenter.distribute.ingestion.DistributeIngestion;
import com.microsoft.appcenter.distribute.ingestion.models.DistributionStartSessionLog;
import com.microsoft.appcenter.distribute.ingestion.models.json.DistributionStartSessionLogFactory;
import com.microsoft.appcenter.distribute.permissions.PermissionRequestActivity;
import com.microsoft.appcenter.distribute.permissions.PermissionUtils;
import com.microsoft.appcenter.http.HttpException;
import com.microsoft.appcenter.http.HttpResponse;
import com.microsoft.appcenter.http.HttpUtils;
import com.microsoft.appcenter.http.ServiceCall;
import com.microsoft.appcenter.http.ServiceCallback;
import com.microsoft.appcenter.ingestion.models.json.LogFactory;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.AppNameHelper;
import com.microsoft.appcenter.utils.DeviceInfoHelper;
import com.microsoft.appcenter.utils.HandlerUtils;
import com.microsoft.appcenter.utils.IdHelper;
import com.microsoft.appcenter.utils.NetworkStateHelper;
import com.microsoft.appcenter.utils.async.AppCenterConsumer;
import com.microsoft.appcenter.utils.async.AppCenterFuture;
import com.microsoft.appcenter.utils.context.SessionContext;
import com.microsoft.appcenter.utils.crypto.CryptoUtils;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import java.lang.ref.WeakReference;
import java.net.URISyntaxException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class Distribute extends AbstractAppCenterService {
    private static Distribute sInstance;
    private String mAppSecret;
    private boolean mAutomaticCheckForUpdateDisabled;
    private String mBeforeStartDistributionGroupId;
    private String mBeforeStartRequestId;
    private String mBeforeStartTesterAppUpdateSetupFailed;
    private String mBeforeStartUpdateSetupFailed;
    private String mBeforeStartUpdateToken;
    private boolean mBrowserOpenedOrAborted;
    private ServiceCall mCheckReleaseApiCall;
    private Object mCheckReleaseCallId;
    private Dialog mCompletedDownloadDialog;
    private Context mContext;
    private DistributeInfoTracker mDistributeInfoTracker;
    private boolean mEnabledForDebuggableBuild;
    private final Map<String, LogFactory> mFactories;
    private Activity mForegroundActivity;
    private DistributeListener mListener;
    private boolean mManualCheckForUpdateRequested;
    private PackageInfo mPackageInfo;
    private ReleaseDetails mReleaseDetails;
    private ReleaseDownloader mReleaseDownloader;
    private ReleaseDownloadListener mReleaseDownloaderListener;
    private UpdateInstaller mReleaseInstaller;
    private boolean mTesterAppOpenedOrAborted;
    private Dialog mUnknownSourcesDialog;
    private Dialog mUpdateDialog;
    private Dialog mUpdateSetupFailedDialog;
    private Boolean mUsingDefaultUpdateDialog;
    private boolean mWorkflowCompleted;
    private String mInstallUrl = "https://install.appcenter.ms";
    private String mApiUrl = "https://api.appcenter.ms/v0.1";
    private int mUpdateTrack = 1;
    private WeakReference<Activity> mLastActivityWithDialog = new WeakReference<>(null);

    @Override // com.microsoft.appcenter.AbstractAppCenterService
    protected String getGroupName() {
        return "group_distribute";
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService
    protected String getLoggerTag() {
        return "AppCenterDistribute";
    }

    @Override // com.microsoft.appcenter.AppCenterService
    public String getServiceName() {
        return "Distribute";
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService
    protected int getTriggerCount() {
        return 1;
    }

    private Distribute() {
        HashMap hashMap = new HashMap();
        this.mFactories = hashMap;
        hashMap.put("distributionStartSession", new DistributionStartSessionLogFactory());
    }

    public static synchronized Distribute getInstance() {
        Distribute distribute;
        synchronized (Distribute.class) {
            if (sInstance == null) {
                sInstance = new Distribute();
            }
            distribute = sInstance;
        }
        return distribute;
    }

    public static void setListener(DistributeListener listener) {
        getInstance().setInstanceListener(listener);
    }

    public static void setEnabledForDebuggableBuild(boolean enabled) {
        getInstance().setInstanceEnabledForDebuggableBuild(enabled);
    }

    public static void notifyUpdateAction(int updateAction) {
        getInstance().handleUpdateAction(updateAction);
    }

    public static void checkForUpdate() {
        getInstance().instanceCheckForUpdate();
    }

    public static void disableAutomaticCheckForUpdate() {
        getInstance().instanceDisableAutomaticCheckForUpdate();
    }

    private synchronized void instanceDisableAutomaticCheckForUpdate() {
        if (isStarted()) {
            AppCenterLog.error("AppCenterDistribute", "Automatic check for update cannot be disabled after Distribute is started.");
        } else {
            this.mAutomaticCheckForUpdateDisabled = true;
        }
    }

    @Override // com.microsoft.appcenter.AppCenterService
    public Map<String, LogFactory> getLogFactories() {
        return this.mFactories;
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService, com.microsoft.appcenter.AppCenterService
    public synchronized void onStarted(Context context, Channel channel, String appSecret, String transmissionTargetToken, boolean startedFromApp) {
        this.mContext = context;
        this.mAppSecret = appSecret;
        this.mPackageInfo = DeviceInfoHelper.getPackageInfo(context);
        super.onStarted(context, channel, appSecret, transmissionTargetToken, startedFromApp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void startFromBackground(Context context) {
        if (this.mAppSecret == null) {
            AppCenterLog.debug("AppCenterDistribute", "Called before onStart, init storage");
            this.mContext = context;
            SharedPreferencesManager.initialize(context);
            updateReleaseDetails(DistributeUtils.loadCachedReleaseDetails());
        }
    }

    private boolean tryResetWorkflow() {
        if (DistributeUtils.getStoredDownloadState() == 0 && this.mCheckReleaseCallId == null) {
            this.mWorkflowCompleted = false;
            this.mBrowserOpenedOrAborted = false;
            return true;
        }
        return false;
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService, android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        this.mForegroundActivity = activity;
        if (isStarted()) {
            resumeDistributeWorkflow();
        }
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService, android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityPaused(Activity activity) {
        this.mForegroundActivity = null;
        ReleaseDownloadListener releaseDownloadListener = this.mReleaseDownloaderListener;
        if (releaseDownloadListener != null) {
            releaseDownloadListener.hideProgressDialog();
        }
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService, com.microsoft.appcenter.utils.ApplicationLifecycleListener.ApplicationLifecycleCallbacks
    public void onApplicationEnterForeground() {
        if (isStarted()) {
            AppCenterLog.debug("AppCenterDistribute", "Resetting workflow on entering foreground.");
            tryResetWorkflow();
        }
    }

    @Override // com.microsoft.appcenter.AbstractAppCenterService
    protected synchronized void applyEnabledState(boolean enabled) {
        if (enabled) {
            changeDistributionGroupIdAfterAppUpdateIfNeeded();
            DistributeInfoTracker distributeInfoTracker = new DistributeInfoTracker(SharedPreferencesManager.getString("Distribute.distribution_group_id"));
            this.mDistributeInfoTracker = distributeInfoTracker;
            this.mChannel.addListener(distributeInfoTracker);
            resumeWorkflowIfForeground();
        } else {
            this.mTesterAppOpenedOrAborted = false;
            this.mBrowserOpenedOrAborted = false;
            this.mWorkflowCompleted = false;
            cancelPreviousTasks();
            SharedPreferencesManager.remove("Distribute.request_id");
            SharedPreferencesManager.remove("Distribute.postpone_time");
            SharedPreferencesManager.remove("Distribute.update_setup_failed_package_hash");
            SharedPreferencesManager.remove("Distribute.update_setup_failed_message");
            SharedPreferencesManager.remove("Distribute.tester_app_update_setup_failed_message");
            this.mChannel.removeListener(this.mDistributeInfoTracker);
            this.mDistributeInfoTracker = null;
        }
    }

    private void resumeWorkflowIfForeground() {
        if (this.mForegroundActivity != null) {
            HandlerUtils.runOnUiThread(new Runnable() { // from class: com.microsoft.appcenter.distribute.Distribute$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Distribute.this.resumeDistributeWorkflow();
                }
            });
        } else {
            AppCenterLog.debug("AppCenterDistribute", "Distribute workflow will be resumed on activity resume event.");
        }
    }

    synchronized void handleUpdateAction(final int updateAction) {
        isInstanceEnabledAsync().thenAccept(new AppCenterConsumer<Boolean>() { // from class: com.microsoft.appcenter.distribute.Distribute.1
            @Override // com.microsoft.appcenter.utils.async.AppCenterConsumer
            public void accept(Boolean enabled) {
                if (enabled.booleanValue()) {
                    boolean z = Distribute.this.mReleaseDownloader != null && Distribute.this.mReleaseDownloader.isDownloading();
                    if (DistributeUtils.getStoredDownloadState() == 1 && !z) {
                        if (Distribute.this.mUsingDefaultUpdateDialog.booleanValue()) {
                            AppCenterLog.error("AppCenterDistribute", "Cannot handle user update action when using default dialog.");
                            return;
                        }
                        int i = updateAction;
                        if (i == -2) {
                            if (Distribute.this.mReleaseDetails.isMandatoryUpdate()) {
                                AppCenterLog.error("AppCenterDistribute", "Cannot postpone a mandatory update.");
                                return;
                            }
                            Distribute distribute = Distribute.this;
                            distribute.postponeRelease(distribute.mReleaseDetails);
                            return;
                        } else if (i == -1) {
                            Distribute distribute2 = Distribute.this;
                            distribute2.enqueueDownloadAndRequestPermissions(distribute2.mReleaseDetails);
                            return;
                        } else {
                            AppCenterLog.error("AppCenterDistribute", "Invalid update action: " + updateAction);
                            return;
                        }
                    }
                    AppCenterLog.error("AppCenterDistribute", "Cannot handle user update action at this time.");
                    return;
                }
                AppCenterLog.error("AppCenterDistribute", "Distribute is disabled");
            }
        });
    }

    private synchronized void setInstanceListener(DistributeListener listener) {
        this.mListener = listener;
    }

    private synchronized void setInstanceEnabledForDebuggableBuild(boolean enabled) {
        this.mEnabledForDebuggableBuild = enabled;
    }

    private void instanceCheckForUpdate() {
        post(new Runnable() { // from class: com.microsoft.appcenter.distribute.Distribute$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Distribute.this.handleCheckForUpdate();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleCheckForUpdate() {
        this.mManualCheckForUpdateRequested = true;
        if (tryResetWorkflow()) {
            resumeWorkflowIfForeground();
        } else {
            AppCenterLog.info("AppCenterDistribute", "A check for update is already ongoing.");
        }
    }

    private synchronized void cancelPreviousTasks() {
        ServiceCall serviceCall = this.mCheckReleaseApiCall;
        if (serviceCall != null) {
            serviceCall.cancel();
            this.mCheckReleaseApiCall = null;
        }
        this.mCheckReleaseCallId = null;
        this.mUpdateDialog = null;
        this.mUnknownSourcesDialog = null;
        this.mCompletedDownloadDialog = null;
        this.mUpdateSetupFailedDialog = null;
        this.mLastActivityWithDialog.clear();
        this.mUsingDefaultUpdateDialog = null;
        this.mManualCheckForUpdateRequested = false;
        updateReleaseDetails(null);
        SharedPreferencesManager.remove("Distribute.release_details");
        SharedPreferencesManager.remove("Distribute.download_state");
        SharedPreferencesManager.remove("Distribute.download_time");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void resumeDistributeWorkflow() {
        String string;
        if (this.mPackageInfo != null && this.mForegroundActivity != null && !this.mWorkflowCompleted && isInstanceEnabled()) {
            boolean z = false;
            if ((this.mContext.getApplicationInfo().flags & 2) == 2 && !this.mEnabledForDebuggableBuild) {
                AppCenterLog.info("AppCenterDistribute", "Not checking for in-app updates in debuggable build.");
                this.mWorkflowCompleted = true;
                this.mManualCheckForUpdateRequested = false;
            } else if (InstallerUtils.isInstalledFromAppStore("AppCenterDistribute", this.mContext)) {
                AppCenterLog.info("AppCenterDistribute", "Not checking in app updates as installed from a store.");
                this.mWorkflowCompleted = true;
                this.mManualCheckForUpdateRequested = false;
            } else {
                UpdateInstaller updateInstaller = this.mReleaseInstaller;
                if (updateInstaller != null) {
                    updateInstaller.resume();
                    return;
                }
                AppCenterLog.debug("AppCenterDistribute", "Resume distribute workflow...");
                boolean z2 = this.mUpdateTrack == 1;
                if (!z2 && (string = SharedPreferencesManager.getString("Distribute.update_setup_failed_package_hash")) != null) {
                    if (DistributeUtils.computeReleaseHash(this.mPackageInfo).equals(string)) {
                        AppCenterLog.info("AppCenterDistribute", "Skipping in-app updates setup, because it already failed on this release before.");
                        return;
                    }
                    AppCenterLog.info("AppCenterDistribute", "Re-attempting in-app updates setup and cleaning up failure info from storage.");
                    SharedPreferencesManager.remove("Distribute.update_setup_failed_package_hash");
                    SharedPreferencesManager.remove("Distribute.update_setup_failed_message");
                    SharedPreferencesManager.remove("Distribute.tester_app_update_setup_failed_message");
                }
                String str = null;
                if (this.mBeforeStartRequestId != null) {
                    AppCenterLog.debug("AppCenterDistribute", "Processing redirection parameters we kept in memory before onStarted");
                    String str2 = this.mBeforeStartDistributionGroupId;
                    if (str2 != null) {
                        storeRedirectionParameters(this.mBeforeStartRequestId, str2, this.mBeforeStartUpdateToken);
                    } else {
                        String str3 = this.mBeforeStartUpdateSetupFailed;
                        if (str3 != null) {
                            storeUpdateSetupFailedParameter(this.mBeforeStartRequestId, str3);
                        }
                    }
                    String str4 = this.mBeforeStartTesterAppUpdateSetupFailed;
                    if (str4 != null) {
                        storeTesterAppUpdateSetupFailedParameter(this.mBeforeStartRequestId, str4);
                    }
                    this.mBeforeStartRequestId = null;
                    this.mBeforeStartDistributionGroupId = null;
                    this.mBeforeStartUpdateToken = null;
                    this.mBeforeStartUpdateSetupFailed = null;
                    this.mBeforeStartTesterAppUpdateSetupFailed = null;
                    return;
                }
                int storedDownloadState = DistributeUtils.getStoredDownloadState();
                if (this.mReleaseDetails == null && storedDownloadState != 0) {
                    updateReleaseDetails(DistributeUtils.loadCachedReleaseDetails());
                    ReleaseDetails releaseDetails = this.mReleaseDetails;
                    if (releaseDetails != null && !releaseDetails.isMandatoryUpdate() && NetworkStateHelper.getSharedInstance(this.mContext).isNetworkConnected() && storedDownloadState == 1) {
                        cancelPreviousTasks();
                    }
                }
                if (storedDownloadState != 0 && storedDownloadState != 1 && this.mPackageInfo.lastUpdateTime > SharedPreferencesManager.getLong("Distribute.download_time")) {
                    AppCenterLog.debug("AppCenterDistribute", "Discarding previous download as application updated.");
                    cancelPreviousTasks();
                    DistributeUtils.cancelNotification(this.mContext);
                }
                ReleaseDetails releaseDetails2 = this.mReleaseDetails;
                if (releaseDetails2 != null) {
                    if (storedDownloadState != 4 && storedDownloadState != 3) {
                        if (storedDownloadState == 2) {
                            resumeDownload();
                            showDownloadProgress();
                        } else if (this.mUnknownSourcesDialog != null) {
                            enqueueDownloadAndRequestPermissions(releaseDetails2);
                        } else {
                            ReleaseDownloader releaseDownloader = this.mReleaseDownloader;
                            if (releaseDownloader == null || !releaseDownloader.isDownloading()) {
                                showUpdateDialog();
                            }
                        }
                        if (storedDownloadState != 1 && storedDownloadState != 4) {
                            return;
                        }
                    }
                    if (releaseDetails2.isMandatoryUpdate()) {
                        showMandatoryDownloadReadyDialog(this.mReleaseDetails);
                    } else {
                        resumeDownload();
                    }
                    if (storedDownloadState != 1) {
                        return;
                    }
                }
                if (SharedPreferencesManager.getString("Distribute.update_setup_failed_message") != null) {
                    AppCenterLog.debug("AppCenterDistribute", "In-app updates setup failure detected.");
                    showUpdateSetupFailedDialog();
                } else if (this.mCheckReleaseCallId != null) {
                    AppCenterLog.verbose("AppCenterDistribute", "Already checking or checked latest release.");
                } else if (this.mAutomaticCheckForUpdateDisabled && !this.mManualCheckForUpdateRequested) {
                    AppCenterLog.debug("AppCenterDistribute", "Automatic check for update is disabled. The SDK will not check for update now.");
                } else {
                    String string2 = SharedPreferencesManager.getString("Distribute.update_token");
                    String string3 = SharedPreferencesManager.getString("Distribute.distribution_group_id");
                    if (!z2 && string2 == null) {
                        String string4 = SharedPreferencesManager.getString("Distribute.tester_app_update_setup_failed_message");
                        if (isAppCenterTesterAppInstalled() && TextUtils.isEmpty(string4) && !this.mContext.getPackageName().equals("com.microsoft.hockeyapp.testerapp")) {
                            z = true;
                        }
                        if (z && !this.mTesterAppOpenedOrAborted) {
                            DistributeUtils.updateSetupUsingTesterApp(this.mForegroundActivity, this.mPackageInfo);
                            this.mTesterAppOpenedOrAborted = true;
                        } else if (!this.mBrowserOpenedOrAborted) {
                            DistributeUtils.updateSetupUsingBrowser(this.mForegroundActivity, this.mInstallUrl, this.mAppSecret, this.mPackageInfo);
                            this.mBrowserOpenedOrAborted = true;
                        }
                        return;
                    }
                    str = string2;
                    decryptAndGetReleaseDetails(str, string3);
                }
            }
        }
    }

    private boolean isAppCenterTesterAppInstalled() {
        try {
            this.mContext.getPackageManager().getPackageInfo("com.microsoft.hockeyapp.testerapp", 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private void decryptAndGetReleaseDetails(String updateToken, String distributionGroupId) {
        if (updateToken != null) {
            CryptoUtils.DecryptedData decrypt = CryptoUtils.getInstance(this.mContext).decrypt(updateToken);
            String newEncryptedData = decrypt.getNewEncryptedData();
            if (newEncryptedData != null) {
                SharedPreferencesManager.putString("Distribute.update_token", newEncryptedData);
            }
            updateToken = decrypt.getDecryptedData();
        }
        getLatestReleaseDetails(distributionGroupId, updateToken);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void completeWorkflow(ReleaseDetails releaseDetails) {
        if (releaseDetails == this.mReleaseDetails) {
            completeWorkflow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void completeWorkflow() {
        AppCenterLog.debug("AppCenterDistribute", "Complete current updating process.");
        cancelDownloadCompletedNotification();
        SharedPreferencesManager.remove("Distribute.release_details");
        SharedPreferencesManager.remove("Distribute.download_state");
        UpdateInstaller updateInstaller = this.mReleaseInstaller;
        if (updateInstaller != null) {
            updateInstaller.clear();
            this.mReleaseInstaller = null;
        }
        this.mCheckReleaseApiCall = null;
        this.mCheckReleaseCallId = null;
        this.mUpdateDialog = null;
        this.mUpdateSetupFailedDialog = null;
        this.mUnknownSourcesDialog = null;
        this.mLastActivityWithDialog.clear();
        this.mReleaseDetails = null;
        ReleaseDownloadListener releaseDownloadListener = this.mReleaseDownloaderListener;
        if (releaseDownloadListener != null) {
            releaseDownloadListener.hideProgressDialog();
        }
        this.mWorkflowCompleted = true;
        this.mManualCheckForUpdateRequested = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void storeUpdateSetupFailedParameter(String requestId, String updateSetupFailed) {
        if (this.mContext == null) {
            AppCenterLog.debug("AppCenterDistribute", "Update setup failed parameter received before onStart, keep it in memory.");
            this.mBeforeStartRequestId = requestId;
            this.mBeforeStartUpdateSetupFailed = updateSetupFailed;
        } else if (requestId.equals(SharedPreferencesManager.getString("Distribute.request_id"))) {
            AppCenterLog.debug("AppCenterDistribute", "Stored update setup failed parameter.");
            SharedPreferencesManager.putString("Distribute.update_setup_failed_message", updateSetupFailed);
        } else {
            AppCenterLog.warn("AppCenterDistribute", "Ignoring redirection parameters as requestId is invalid.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void storeTesterAppUpdateSetupFailedParameter(String requestId, String testerAppUpdateSetupFailed) {
        if (this.mContext == null) {
            AppCenterLog.debug("AppCenterDistribute", "Tester app update setup failed parameter received before onStart, keep it in memory.");
            this.mBeforeStartRequestId = requestId;
            this.mBeforeStartTesterAppUpdateSetupFailed = testerAppUpdateSetupFailed;
        } else if (requestId.equals(SharedPreferencesManager.getString("Distribute.request_id"))) {
            AppCenterLog.debug("AppCenterDistribute", "Stored tester app update setup failed parameter.");
            SharedPreferencesManager.putString("Distribute.tester_app_update_setup_failed_message", testerAppUpdateSetupFailed);
        } else {
            AppCenterLog.warn("AppCenterDistribute", "Ignoring redirection parameters as requestId is invalid.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void storeRedirectionParameters(String requestId, String distributionGroupId, String updateToken) {
        if (this.mContext == null) {
            AppCenterLog.debug("AppCenterDistribute", "Redirection parameters received before onStart, keep them in memory.");
            this.mBeforeStartRequestId = requestId;
            this.mBeforeStartUpdateToken = updateToken;
            this.mBeforeStartDistributionGroupId = distributionGroupId;
        } else if (requestId.equals(SharedPreferencesManager.getString("Distribute.request_id"))) {
            if (updateToken != null) {
                SharedPreferencesManager.putString("Distribute.update_token", CryptoUtils.getInstance(this.mContext).encrypt(updateToken));
            } else {
                SharedPreferencesManager.remove("Distribute.update_token");
            }
            SharedPreferencesManager.remove("Distribute.request_id");
            processDistributionGroupId(distributionGroupId);
            AppCenterLog.debug("AppCenterDistribute", "Stored redirection parameters.");
            cancelPreviousTasks();
            getLatestReleaseDetails(distributionGroupId, updateToken);
        } else {
            AppCenterLog.warn("AppCenterDistribute", "Ignoring redirection parameters as requestId is invalid.");
        }
    }

    private void processDistributionGroupId(String distributionGroupId) {
        SharedPreferencesManager.putString("Distribute.distribution_group_id", distributionGroupId);
        this.mDistributeInfoTracker.updateDistributionGroupId(distributionGroupId);
        enqueueDistributionStartSessionLog();
    }

    synchronized void getLatestReleaseDetails(final String distributionGroupId, String updateToken) {
        String str;
        AppCenterLog.info("AppCenterDistribute", "Get latest release details...");
        String computeReleaseHash = DistributeUtils.computeReleaseHash(this.mPackageInfo);
        String str2 = this.mApiUrl;
        if (updateToken == null) {
            str = str2 + String.format("/public/sdk/apps/%s/releases/latest?release_hash=%s%s", this.mAppSecret, computeReleaseHash, getReportingParametersForUpdatedRelease(true, distributionGroupId));
        } else {
            str = str2 + String.format("/sdk/apps/%s/releases/private/latest?release_hash=%s%s", this.mAppSecret, computeReleaseHash, getReportingParametersForUpdatedRelease(false, distributionGroupId));
        }
        HashMap hashMap = new HashMap();
        if (updateToken != null) {
            hashMap.put("x-api-token", updateToken);
        }
        final Object obj = new Object();
        this.mCheckReleaseCallId = obj;
        this.mCheckReleaseApiCall = new DistributeIngestion(this.mContext).checkReleaseAsync(this.mAppSecret, str, hashMap, new ServiceCallback() { // from class: com.microsoft.appcenter.distribute.Distribute.2
            @Override // com.microsoft.appcenter.http.ServiceCallback
            public void onCallSucceeded(final HttpResponse httpResponse) {
                try {
                    String payload = httpResponse.getPayload();
                    Distribute.this.handleApiCallSuccess(obj, payload, ReleaseDetails.parse(payload), distributionGroupId);
                } catch (JSONException e) {
                    onCallFailed(e);
                }
            }

            @Override // com.microsoft.appcenter.http.ServiceCallback
            public void onCallFailed(Exception e) {
                Distribute.this.handleApiCallFailure(obj, e);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleApiCallFailure(Object releaseCallId, Exception e) {
        if (this.mCheckReleaseCallId != releaseCallId) {
            return;
        }
        completeWorkflow();
        if (HttpUtils.isRecoverableError(e)) {
            return;
        }
        if (e instanceof HttpException) {
            String str = null;
            try {
                str = ErrorDetails.parse(((HttpException) e).getHttpResponse().getPayload()).getCode();
            } catch (JSONException e2) {
                AppCenterLog.verbose("AppCenterDistribute", "Cannot read the error as JSON", e2);
            }
            if (!"no_releases_for_user".equals(str) && !"not_found".equals(str)) {
                AppCenterLog.error("AppCenterDistribute", "Failed to check latest release (delete setup state)", e);
                SharedPreferencesManager.remove("Distribute.distribution_group_id");
                SharedPreferencesManager.remove("Distribute.update_token");
                SharedPreferencesManager.remove("Distribute.postpone_time");
                this.mDistributeInfoTracker.removeDistributionGroupId();
            }
            AppCenterLog.info("AppCenterDistribute", "No release available to the current user.");
            if (this.mListener != null && this.mForegroundActivity != null) {
                AppCenterLog.debug("AppCenterDistribute", "Calling listener.onNoReleaseAvailable.");
                this.mListener.onNoReleaseAvailable(this.mForegroundActivity);
            }
        } else {
            AppCenterLog.error("AppCenterDistribute", "Failed to check latest release", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleApiCallSuccess(Object releaseCallId, String rawReleaseDetails, ReleaseDetails releaseDetails, String sourceDistributionId) {
        String string = SharedPreferencesManager.getString("Distribute.downloaded_release_hash");
        if (!TextUtils.isEmpty(string)) {
            if (isCurrentReleaseWasUpdated(string)) {
                AppCenterLog.debug("AppCenterDistribute", "Successfully reported app update for downloaded release hash (" + string + "), removing from store..");
                SharedPreferencesManager.remove("Distribute.downloaded_release_hash");
                SharedPreferencesManager.remove("Distribute.downloaded_release_id");
            } else {
                AppCenterLog.debug("AppCenterDistribute", "Stored release hash doesn't match current installation, probably downloaded but not installed yet, keep in store");
            }
        }
        if (this.mCheckReleaseCallId != releaseCallId) {
            return;
        }
        this.mCheckReleaseApiCall = null;
        if (sourceDistributionId == null) {
            processDistributionGroupId(releaseDetails.getDistributionGroupId());
        }
        if (Build.VERSION.SDK_INT >= releaseDetails.getMinApiLevel()) {
            AppCenterLog.debug("AppCenterDistribute", "Check if latest release is more recent.");
            if (!isMoreRecent(releaseDetails)) {
                if (this.mListener != null && this.mForegroundActivity != null) {
                    AppCenterLog.debug("AppCenterDistribute", "Calling listener.onNoReleaseAvailable.");
                    this.mListener.onNoReleaseAvailable(this.mForegroundActivity);
                }
            } else if (canUpdateNow(releaseDetails)) {
                if (this.mReleaseDetails == null) {
                    updateReleaseDetails(DistributeUtils.loadCachedReleaseDetails());
                }
                SharedPreferencesManager.putString("Distribute.release_details", rawReleaseDetails);
                ReleaseDetails releaseDetails2 = this.mReleaseDetails;
                if (releaseDetails2 != null && releaseDetails2.isMandatoryUpdate()) {
                    if (this.mReleaseDetails.getId() != releaseDetails.getId()) {
                        AppCenterLog.debug("AppCenterDistribute", "Latest release is more recent than the previous mandatory.");
                        SharedPreferencesManager.putInt("Distribute.download_state", 1);
                    } else {
                        AppCenterLog.debug("AppCenterDistribute", "The latest release is mandatory and already being processed.");
                    }
                    return;
                }
                updateReleaseDetails(releaseDetails);
                AppCenterLog.debug("AppCenterDistribute", "Latest release is more recent.");
                SharedPreferencesManager.putInt("Distribute.download_state", 1);
                if (this.mForegroundActivity != null) {
                    showUpdateDialog();
                }
                return;
            }
        } else {
            AppCenterLog.info("AppCenterDistribute", "This device is not compatible with the latest release.");
        }
        completeWorkflow();
    }

    private synchronized void updateReleaseDetails(ReleaseDetails releaseDetails) {
        if (this.mReleaseDownloader != null) {
            if (releaseDetails == null || releaseDetails.getId() != this.mReleaseDownloader.getReleaseDetails().getId()) {
                this.mReleaseDownloader.cancel();
            }
            this.mReleaseDownloader = null;
        } else if (releaseDetails == null) {
            ReleaseDownloaderFactory.create(this.mContext, null, null).cancel();
        }
        ReleaseDownloadListener releaseDownloadListener = this.mReleaseDownloaderListener;
        if (releaseDownloadListener != null) {
            releaseDownloadListener.hideProgressDialog();
            this.mReleaseDownloaderListener = null;
        }
        this.mReleaseDetails = releaseDetails;
        if (releaseDetails != null) {
            ReleaseDownloadListener releaseDownloadListener2 = new ReleaseDownloadListener(this.mContext, releaseDetails);
            this.mReleaseDownloaderListener = releaseDownloadListener2;
            this.mReleaseDownloader = ReleaseDownloaderFactory.create(this.mContext, this.mReleaseDetails, releaseDownloadListener2);
        }
    }

    private String getReportingParametersForUpdatedRelease(boolean isPublic, String distributionGroupId) {
        AppCenterLog.debug("AppCenterDistribute", "Check if we need to report release installation..");
        String string = SharedPreferencesManager.getString("Distribute.downloaded_release_hash");
        String str = "";
        if (!TextUtils.isEmpty(string)) {
            if (isCurrentReleaseWasUpdated(string)) {
                AppCenterLog.debug("AppCenterDistribute", "Current release was updated but not reported yet, reporting..");
                if (isPublic) {
                    str = "&install_id=" + IdHelper.getInstallId();
                }
                return (str + "&distribution_group_id=" + distributionGroupId) + "&downloaded_release_id=" + SharedPreferencesManager.getInt("Distribute.downloaded_release_id");
            }
            AppCenterLog.debug("AppCenterDistribute", "New release was downloaded but not installed yet, skip reporting.");
            return "";
        }
        AppCenterLog.debug("AppCenterDistribute", "Current release was already reported, skip reporting.");
        return "";
    }

    private void changeDistributionGroupIdAfterAppUpdateIfNeeded() {
        String string = SharedPreferencesManager.getString("Distribute.downloaded_release_hash");
        String string2 = SharedPreferencesManager.getString("Distribute.downloaded_distribution_group_id");
        if (!isCurrentReleaseWasUpdated(string) || TextUtils.isEmpty(string2) || string2.equals(SharedPreferencesManager.getString("Distribute.distribution_group_id"))) {
            return;
        }
        AppCenterLog.debug("AppCenterDistribute", "Current group ID doesn't match the group ID of downloaded release, updating current group id=" + string2);
        SharedPreferencesManager.putString("Distribute.distribution_group_id", string2);
        SharedPreferencesManager.remove("Distribute.downloaded_distribution_group_id");
    }

    private boolean isCurrentReleaseWasUpdated(String lastDownloadedReleaseHash) {
        if (this.mPackageInfo == null || TextUtils.isEmpty(lastDownloadedReleaseHash)) {
            return false;
        }
        return DistributeUtils.computeReleaseHash(this.mPackageInfo).equals(lastDownloadedReleaseHash);
    }

    private boolean isMoreRecent(ReleaseDetails releaseDetails) {
        boolean z;
        int versionCode = DeviceInfoHelper.getVersionCode(this.mPackageInfo);
        if (releaseDetails.getVersion() == versionCode) {
            z = !releaseDetails.getReleaseHash().equals(DistributeUtils.computeReleaseHash(this.mPackageInfo));
        } else {
            z = releaseDetails.getVersion() > versionCode;
        }
        AppCenterLog.debug("AppCenterDistribute", "Latest release more recent=" + z);
        return z;
    }

    private boolean canUpdateNow(ReleaseDetails releaseDetails) {
        if (releaseDetails.isMandatoryUpdate()) {
            AppCenterLog.debug("AppCenterDistribute", "Release is mandatory, ignoring any postpone action.");
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = SharedPreferencesManager.getLong("Distribute.postpone_time", 0L);
        if (currentTimeMillis < j) {
            AppCenterLog.debug("AppCenterDistribute", "User clock has been changed in past, cleaning postpone state and showing dialog");
            SharedPreferencesManager.remove("Distribute.postpone_time");
            return true;
        }
        long j2 = j + 86400000;
        if (currentTimeMillis < j2) {
            AppCenterLog.debug("AppCenterDistribute", "Optional updates are postponed until " + new Date(j2));
            return false;
        }
        return true;
    }

    private boolean shouldRefreshDialog(Dialog dialog) {
        if (dialog == null || !dialog.isShowing()) {
            return true;
        }
        if (this.mForegroundActivity == this.mLastActivityWithDialog.get()) {
            AppCenterLog.debug("AppCenterDistribute", "Previous dialog is still being shown in the same activity.");
            return false;
        }
        dialog.hide();
        return true;
    }

    private void showAndRememberDialogActivity(Dialog dialog) {
        dialog.show();
        this.mLastActivityWithDialog = new WeakReference<>(this.mForegroundActivity);
    }

    private synchronized void showUpdateDialog() {
        String string;
        DistributeListener distributeListener = this.mListener;
        if (distributeListener == null && this.mUsingDefaultUpdateDialog == null) {
            this.mUsingDefaultUpdateDialog = Boolean.TRUE;
        }
        if (distributeListener != null) {
            AppCenterLog.debug("AppCenterDistribute", "Calling listener.onReleaseAvailable.");
            boolean onReleaseAvailable = this.mListener.onReleaseAvailable(this.mForegroundActivity, this.mReleaseDetails);
            if (onReleaseAvailable) {
                this.mLastActivityWithDialog = new WeakReference<>(this.mForegroundActivity);
            }
            this.mUsingDefaultUpdateDialog = Boolean.valueOf(!onReleaseAvailable);
        }
        if (this.mUsingDefaultUpdateDialog.booleanValue()) {
            if (!shouldRefreshDialog(this.mUpdateDialog)) {
                return;
            }
            AppCenterLog.debug("AppCenterDistribute", "Show default update dialog.");
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mForegroundActivity);
            builder.setTitle(R$string.appcenter_distribute_update_dialog_title);
            final ReleaseDetails releaseDetails = this.mReleaseDetails;
            if (releaseDetails.isMandatoryUpdate()) {
                string = this.mContext.getString(R$string.appcenter_distribute_update_dialog_message_mandatory);
            } else {
                string = this.mContext.getString(R$string.appcenter_distribute_update_dialog_message_optional);
            }
            builder.setMessage(formatAppNameAndVersion(string));
            builder.setPositiveButton(R$string.appcenter_distribute_update_dialog_download, new DialogInterface.OnClickListener() { // from class: com.microsoft.appcenter.distribute.Distribute.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    Distribute.this.enqueueDownloadAndRequestPermissions(releaseDetails);
                }
            });
            builder.setCancelable(false);
            if (!releaseDetails.isMandatoryUpdate()) {
                builder.setNegativeButton(R$string.appcenter_distribute_update_dialog_postpone, new DialogInterface.OnClickListener() { // from class: com.microsoft.appcenter.distribute.Distribute.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        Distribute.this.postponeRelease(releaseDetails);
                    }
                });
            }
            if (!TextUtils.isEmpty(releaseDetails.getReleaseNotes()) && releaseDetails.getReleaseNotesUrl() != null) {
                builder.setNeutralButton(R$string.appcenter_distribute_update_dialog_view_release_notes, new DialogInterface.OnClickListener() { // from class: com.microsoft.appcenter.distribute.Distribute.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        Distribute.this.viewReleaseNotes(releaseDetails);
                    }
                });
            }
            AlertDialog create = builder.create();
            this.mUpdateDialog = create;
            showAndRememberDialogActivity(create);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void viewReleaseNotes(ReleaseDetails releaseDetails) {
        try {
            this.mForegroundActivity.startActivity(new Intent("android.intent.action.VIEW", releaseDetails.getReleaseNotesUrl()));
        } catch (ActivityNotFoundException e) {
            AppCenterLog.error("AppCenterDistribute", "Failed to navigate to release notes.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void storeUpdateSetupFailedPackageHash(DialogInterface dialog) {
        if (this.mUpdateSetupFailedDialog == dialog) {
            SharedPreferencesManager.putString("Distribute.update_setup_failed_package_hash", DistributeUtils.computeReleaseHash(this.mPackageInfo));
        } else {
            showDisabledToast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleUpdateFailedDialogReinstallAction(DialogInterface dialog) {
        String appendUri;
        if (this.mUpdateSetupFailedDialog == dialog) {
            try {
                appendUri = BrowserUtils.appendUri(this.mInstallUrl, "update_setup_failed=true");
            } catch (URISyntaxException e) {
                AppCenterLog.error("AppCenterDistribute", "Could not append query parameter to url.", e);
            }
            BrowserUtils.openBrowser(appendUri, this.mForegroundActivity);
            SharedPreferencesManager.remove("Distribute.update_setup_failed_package_hash");
            SharedPreferencesManager.remove("Distribute.tester_app_update_setup_failed_message");
        } else {
            showDisabledToast();
        }
    }

    private synchronized void showUnknownSourcesDialog() {
        if (this.mForegroundActivity == null) {
            AppCenterLog.warn("AppCenterDistribute", "The application is in background mode, the unknown sources dialog won't be displayed.");
        } else if (shouldRefreshDialog(this.mUnknownSourcesDialog)) {
            AppCenterLog.debug("AppCenterDistribute", "Show new unknown sources dialog.");
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mForegroundActivity);
            builder.setMessage(R$string.appcenter_distribute_unknown_sources_dialog_message);
            final ReleaseDetails releaseDetails = this.mReleaseDetails;
            if (releaseDetails.isMandatoryUpdate()) {
                builder.setCancelable(false);
            } else {
                builder.setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.microsoft.appcenter.distribute.Distribute.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        Distribute.this.completeWorkflow(releaseDetails);
                    }
                });
                builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.microsoft.appcenter.distribute.Distribute.7
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialog) {
                        Distribute.this.completeWorkflow(releaseDetails);
                    }
                });
            }
            builder.setPositiveButton(R$string.appcenter_distribute_unknown_sources_dialog_settings, new DialogInterface.OnClickListener() { // from class: com.microsoft.appcenter.distribute.Distribute.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    Distribute.this.goToUnknownAppsSettings(releaseDetails);
                }
            });
            AlertDialog create = builder.create();
            this.mUnknownSourcesDialog = create;
            showAndRememberDialogActivity(create);
        }
    }

    protected synchronized void showUpdateSetupFailedDialog() {
        if (shouldRefreshDialog(this.mUpdateSetupFailedDialog)) {
            if (this.mForegroundActivity == null) {
                AppCenterLog.debug("AppCenterDistribute", "Failed to show the update setup failed dialog. The foreground activity is null");
                return;
            }
            AppCenterLog.debug("AppCenterDistribute", "Show update setup failed dialog.");
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mForegroundActivity);
            builder.setCancelable(false);
            builder.setTitle(R$string.appcenter_distribute_update_failed_dialog_title);
            builder.setMessage(R$string.appcenter_distribute_update_failed_dialog_message);
            builder.setPositiveButton(R$string.appcenter_distribute_update_failed_dialog_ignore, new DialogInterface.OnClickListener() { // from class: com.microsoft.appcenter.distribute.Distribute.9
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    Distribute.this.storeUpdateSetupFailedPackageHash(dialog);
                }
            });
            builder.setNegativeButton(R$string.appcenter_distribute_update_failed_dialog_reinstall, new DialogInterface.OnClickListener() { // from class: com.microsoft.appcenter.distribute.Distribute.10
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    Distribute.this.handleUpdateFailedDialogReinstallAction(dialog);
                }
            });
            AlertDialog create = builder.create();
            this.mUpdateSetupFailedDialog = create;
            showAndRememberDialogActivity(create);
            SharedPreferencesManager.remove("Distribute.update_setup_failed_message");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void goToUnknownAppsSettings(ReleaseDetails releaseDetails) {
        Intent intent;
        if (this.mForegroundActivity == null) {
            AppCenterLog.warn("AppCenterDistribute", "The application is in background mode, the settings screen could not be opened.");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
            intent.setData(Uri.parse("package:" + this.mForegroundActivity.getPackageName()));
        } else {
            intent = new Intent("android.settings.SECURITY_SETTINGS");
        }
        try {
            this.mForegroundActivity.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            AppCenterLog.warn("AppCenterDistribute", "No way to navigate to secure settings on this device automatically");
            if (releaseDetails == this.mReleaseDetails) {
                completeWorkflow();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void postponeRelease(ReleaseDetails releaseDetails) {
        if (releaseDetails == this.mReleaseDetails) {
            AppCenterLog.info("AppCenterDistribute", "Postpone updates for a day.");
            SharedPreferencesManager.putLong("Distribute.postpone_time", System.currentTimeMillis());
            completeWorkflow();
        } else {
            showDisabledToast();
        }
    }

    synchronized void enqueueDownloadAndRequestPermissions(final ReleaseDetails releaseDetails) {
        if (releaseDetails == this.mReleaseDetails) {
            if (!InstallerUtils.isUnknownSourcesEnabled(this.mContext)) {
                showUnknownSourcesDialog();
                return;
            }
            requestPermissionsForDownload();
            AppCenterLog.debug("AppCenterDistribute", "Schedule download...");
            resumeDownload();
            showDownloadProgress();
            ServiceCall serviceCall = this.mCheckReleaseApiCall;
            if (serviceCall != null) {
                serviceCall.cancel();
            }
        } else {
            showDisabledToast();
        }
    }

    private void requestPermissionsForDownload() {
        if (Build.VERSION.SDK_INT < 33) {
            AppCenterLog.debug("AppCenterDistribute", "There is no need to request permissions in runtime on Android earlier than 6.0.");
        } else if (PermissionUtils.permissionsAreGranted(this.mContext, "android.permission.POST_NOTIFICATIONS")) {
            AppCenterLog.debug("AppCenterDistribute", "Post notification permission already granted.");
        } else {
            AppCenterFuture<PermissionRequestActivity.Result> requestPermissions = PermissionUtils.requestPermissions(this.mContext, "android.permission.POST_NOTIFICATIONS");
            if (requestPermissions == null) {
                AppCenterLog.error("AppCenterDistribute", "Future to get the result of a permission request is null.");
            } else {
                requestPermissions.thenAccept(new AppCenterConsumer<PermissionRequestActivity.Result>(this) { // from class: com.microsoft.appcenter.distribute.Distribute.11
                    @Override // com.microsoft.appcenter.utils.async.AppCenterConsumer
                    public void accept(PermissionRequestActivity.Result result) {
                        Exception exc = result.exception;
                        if (exc != null) {
                            AppCenterLog.warn("AppCenterDistribute", "Error when trying to request permissions.", exc);
                        } else if (result.areAllPermissionsGranted()) {
                            AppCenterLog.info("AppCenterDistribute", "Permissions have been successfully granted.");
                        } else {
                            AppCenterLog.info("AppCenterDistribute", "Permissions were not granted.");
                        }
                    }
                });
            }
        }
    }

    private void showDisabledToast() {
        showToast(R$string.appcenter_distribute_dialog_actioned_on_disabled_toast);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showToast(int messageId) {
        Context context = this.mForegroundActivity;
        if (context == null) {
            context = this.mContext;
        }
        Toast.makeText(context, messageId, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void resumeApp(Context context) {
        if (this.mForegroundActivity == null) {
            context.startActivity(DistributeUtils.getResumeAppIntent(context));
        }
    }

    private synchronized void notifyDownloadCompleted() {
        AppCenterLog.debug("AppCenterDistribute", "Post a notification as the download finished in background.");
        DistributeUtils.postNotification(this.mContext, this.mContext.getString(R$string.appcenter_distribute_install_ready_title), getInstallReadyMessage(), DistributeUtils.getResumeAppIntent(this.mContext));
        SharedPreferencesManager.putInt("Distribute.download_state", 3);
    }

    private synchronized void cancelDownloadCompletedNotification() {
        if (DistributeUtils.getStoredDownloadState() == 3) {
            AppCenterLog.debug("AppCenterDistribute", "Cancel download notification.");
            DistributeUtils.cancelNotification(this.mContext);
        }
    }

    private synchronized void showDownloadProgress() {
        Activity activity = this.mForegroundActivity;
        if (activity == null) {
            AppCenterLog.warn("AppCenterDistribute", "Could not display progress dialog in the background.");
            return;
        }
        ReleaseDownloadListener releaseDownloadListener = this.mReleaseDownloaderListener;
        if (releaseDownloadListener == null) {
            return;
        }
        ProgressDialog showDownloadProgress = releaseDownloadListener.showDownloadProgress(activity);
        if (showDownloadProgress != null) {
            showAndRememberDialogActivity(showDownloadProgress);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void showMandatoryDownloadReadyDialog(final ReleaseDetails releaseDetails) {
        if (releaseDetails != this.mReleaseDetails) {
            return;
        }
        if (this.mForegroundActivity == null) {
            return;
        }
        if (shouldRefreshDialog(this.mCompletedDownloadDialog)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mForegroundActivity);
            builder.setCancelable(false);
            builder.setTitle(R$string.appcenter_distribute_install_ready_title);
            builder.setMessage(getInstallReadyMessage());
            builder.setPositiveButton(R$string.appcenter_distribute_install, new DialogInterface.OnClickListener() { // from class: com.microsoft.appcenter.distribute.Distribute.12
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    Distribute.this.installMandatoryUpdate(releaseDetails);
                }
            });
            AlertDialog create = builder.create();
            this.mCompletedDownloadDialog = create;
            showAndRememberDialogActivity(create);
        }
    }

    private String getInstallReadyMessage() {
        return formatAppNameAndVersion(this.mContext.getString(R$string.appcenter_distribute_install_ready_message));
    }

    private String formatAppNameAndVersion(String format) {
        return String.format(format, AppNameHelper.getAppName(this.mContext), this.mReleaseDetails.getShortVersion(), Integer.valueOf(this.mReleaseDetails.getVersion()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void installMandatoryUpdate(ReleaseDetails releaseDetails) {
        if (releaseDetails == this.mReleaseDetails) {
            resumeDownload();
        } else {
            showDisabledToast();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void resumeDownload() {
        ReleaseDownloader releaseDownloader = this.mReleaseDownloader;
        if (releaseDownloader != null) {
            releaseDownloader.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void setDownloading(ReleaseDetails releaseDetails, long enqueueTime) {
        if (releaseDetails != this.mReleaseDetails) {
            return;
        }
        SharedPreferencesManager.putInt("Distribute.download_state", 2);
        SharedPreferencesManager.putLong("Distribute.download_time", enqueueTime);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void setInstalling(ReleaseDetails releaseDetails, Uri localUri) {
        if (releaseDetails != this.mReleaseDetails) {
            return;
        }
        if (this.mForegroundActivity == null && DistributeUtils.getStoredDownloadState() != 3) {
            notifyDownloadCompleted();
            return;
        }
        cancelDownloadCompletedNotification();
        AppCenterLog.info("AppCenterDistribute", "Start installing new release...");
        SharedPreferencesManager.putInt("Distribute.download_state", 4);
        storeInstallingReleaseDetails();
        if (this.mReleaseInstaller == null) {
            this.mReleaseInstaller = new UpdateInstaller(this.mContext, this.mReleaseDetails);
        }
        this.mReleaseInstaller.install(localUri);
    }

    private void storeInstallingReleaseDetails() {
        String distributionGroupId = this.mReleaseDetails.getDistributionGroupId();
        String releaseHash = this.mReleaseDetails.getReleaseHash();
        int id = this.mReleaseDetails.getId();
        AppCenterLog.debug("AppCenterDistribute", "Stored release details: group id=" + distributionGroupId + " release hash=" + releaseHash + " release id=" + id);
        SharedPreferencesManager.putString("Distribute.downloaded_distribution_group_id", distributionGroupId);
        SharedPreferencesManager.putString("Distribute.downloaded_release_hash", releaseHash);
        SharedPreferencesManager.putInt("Distribute.downloaded_release_id", id);
    }

    private synchronized void enqueueDistributionStartSessionLog() {
        SessionContext.SessionInfo sessionAt = SessionContext.getInstance().getSessionAt(System.currentTimeMillis());
        if (sessionAt != null && sessionAt.getSessionId() != null) {
            post(new Runnable() { // from class: com.microsoft.appcenter.distribute.Distribute.13
                @Override // java.lang.Runnable
                public void run() {
                    ((AbstractAppCenterService) Distribute.this).mChannel.enqueue(new DistributionStartSessionLog(), "group_distribute", 1);
                }
            });
            return;
        }
        AppCenterLog.debug("AppCenterDistribute", "No sessions were logged before, ignore sending of the distribution start session log.");
    }
}
