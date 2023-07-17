.class public Lcom/microsoft/appcenter/distribute/Distribute;
.super Lcom/microsoft/appcenter/AbstractAppCenterService;
.source "Distribute.java"


# static fields
.field private static sInstance:Lcom/microsoft/appcenter/distribute/Distribute;


# instance fields
.field private mApiUrl:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mAutomaticCheckForUpdateDisabled:Z

.field private mBeforeStartDistributionGroupId:Ljava/lang/String;

.field private mBeforeStartRequestId:Ljava/lang/String;

.field private mBeforeStartTesterAppUpdateSetupFailed:Ljava/lang/String;

.field private mBeforeStartUpdateSetupFailed:Ljava/lang/String;

.field private mBeforeStartUpdateToken:Ljava/lang/String;

.field private mBrowserOpenedOrAborted:Z

.field private mCheckReleaseApiCall:Lcom/microsoft/appcenter/http/ServiceCall;

.field private mCheckReleaseCallId:Ljava/lang/Object;

.field private mCompletedDownloadDialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field private mDistributeInfoTracker:Lcom/microsoft/appcenter/distribute/channel/DistributeInfoTracker;

.field private mEnabledForDebuggableBuild:Z

.field private final mFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundActivity:Landroid/app/Activity;

.field private mInstallUrl:Ljava/lang/String;

.field private mLastActivityWithDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/microsoft/appcenter/distribute/DistributeListener;

.field private mManualCheckForUpdateRequested:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

.field private mReleaseDownloader:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

.field private mReleaseDownloaderListener:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

.field private mReleaseInstaller:Lcom/microsoft/appcenter/distribute/UpdateInstaller;

.field private mTesterAppOpenedOrAborted:Z

.field private mUnknownSourcesDialog:Landroid/app/Dialog;

.field private mUpdateDialog:Landroid/app/Dialog;

.field private mUpdateSetupFailedDialog:Landroid/app/Dialog;

.field private mUpdateTrack:I

.field private mUsingDefaultUpdateDialog:Ljava/lang/Boolean;

.field private mWorkflowCompleted:Z


# direct methods
.method public static synthetic $r8$lambda$5CfE4X2xRnQJW50Z9C3_CBNH7PU(Lcom/microsoft/appcenter/distribute/Distribute;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->resumeDistributeWorkflow()V

    return-void
.end method

.method public static synthetic $r8$lambda$tp_EE1dfTqNiQgfxGSNqWf6iPPE(Lcom/microsoft/appcenter/distribute/Distribute;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->handleCheckForUpdate()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 288
    invoke-direct {p0}, Lcom/microsoft/appcenter/AbstractAppCenterService;-><init>()V

    const-string v0, "https://install.appcenter.ms"

    .line 121
    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mInstallUrl:Ljava/lang/String;

    const-string v0, "https://api.appcenter.ms/v0.1"

    .line 126
    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mApiUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 186
    iput v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateTrack:I

    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mLastActivityWithDialog:Ljava/lang/ref/WeakReference;

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mFactories:Ljava/util/Map;

    .line 290
    new-instance v1, Lcom/microsoft/appcenter/distribute/ingestion/models/json/DistributionStartSessionLogFactory;

    invoke-direct {v1}, Lcom/microsoft/appcenter/distribute/ingestion/models/json/DistributionStartSessionLogFactory;-><init>()V

    const-string v2, "distributionStartSession"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/distribute/Distribute;)Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloader:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/distribute/Distribute;)Ljava/lang/Boolean;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUsingDefaultUpdateDialog:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->installMandatoryUpdate(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/microsoft/appcenter/distribute/Distribute;)Lcom/microsoft/appcenter/channel/Channel;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/microsoft/appcenter/AbstractAppCenterService;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/distribute/Distribute;)Lcom/microsoft/appcenter/distribute/ReleaseDetails;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->postponeRelease(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/distribute/Distribute;Ljava/lang/Object;Ljava/lang/String;Lcom/microsoft/appcenter/distribute/ReleaseDetails;Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/appcenter/distribute/Distribute;->handleApiCallSuccess(Ljava/lang/Object;Ljava/lang/String;Lcom/microsoft/appcenter/distribute/ReleaseDetails;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/microsoft/appcenter/distribute/Distribute;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/distribute/Distribute;->handleApiCallFailure(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->viewReleaseNotes(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    return-void
.end method

.method static synthetic access$700(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->goToUnknownAppsSettings(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    return-void
.end method

.method static synthetic access$800(Lcom/microsoft/appcenter/distribute/Distribute;Landroid/content/DialogInterface;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->storeUpdateSetupFailedPackageHash(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$900(Lcom/microsoft/appcenter/distribute/Distribute;Landroid/content/DialogInterface;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->handleUpdateFailedDialogReinstallAction(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private canUpdateNow(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDetails"
        }
    .end annotation

    .line 1347
    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "AppCenterDistribute"

    if-eqz p1, :cond_0

    const-string p1, "Release is mandatory, ignoring any postpone action."

    .line 1348
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1351
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string p1, "Distribute.postpone_time"

    .line 1352
    invoke-static {p1, v4, v5}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const-string v2, "User clock has been changed in past, cleaning postpone state and showing dialog"

    .line 1354
    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    return v0

    :cond_1
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    .line 1360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Optional updates are postponed until "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method private declared-synchronized cancelDownloadCompletedNotification()V
    .locals 2

    monitor-enter p0

    .line 1790
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->getStoredDownloadState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v1, "Cancel download notification."

    .line 1791
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->cancelNotification(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1794
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cancelPreviousTasks()V
    .locals 2

    monitor-enter p0

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseApiCall:Lcom/microsoft/appcenter/http/ServiceCall;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 691
    invoke-interface {v0}, Lcom/microsoft/appcenter/http/ServiceCall;->cancel()V

    .line 692
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseApiCall:Lcom/microsoft/appcenter/http/ServiceCall;

    .line 694
    :cond_0
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseCallId:Ljava/lang/Object;

    .line 695
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateDialog:Landroid/app/Dialog;

    .line 696
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUnknownSourcesDialog:Landroid/app/Dialog;

    .line 697
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCompletedDownloadDialog:Landroid/app/Dialog;

    .line 698
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateSetupFailedDialog:Landroid/app/Dialog;

    .line 699
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mLastActivityWithDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 700
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUsingDefaultUpdateDialog:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mManualCheckForUpdateRequested:Z

    .line 702
    invoke-direct {p0, v1}, Lcom/microsoft/appcenter/distribute/Distribute;->updateReleaseDetails(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    const-string v0, "Distribute.release_details"

    .line 703
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string v0, "Distribute.download_state"

    .line 704
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string v0, "Distribute.download_time"

    .line 705
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private changeDistributionGroupIdAfterAppUpdateIfNeeded()V
    .locals 5

    const-string v0, "Distribute.downloaded_release_hash"

    .line 1290
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Distribute.downloaded_distribution_group_id"

    .line 1291
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1292
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->isCurrentReleaseWasUpdated(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Distribute.distribution_group_id"

    .line 1295
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1296
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 1301
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current group ID doesn\'t match the group ID of downloaded release, updating current group id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppCenterDistribute"

    invoke-static {v4, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-static {v0, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static checkForUpdate()V
    .locals 1

    .line 410
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/distribute/Distribute;->instanceCheckForUpdate()V

    return-void
.end method

.method private decryptAndGetReleaseDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "updateToken",
            "distributionGroupId"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 930
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->decrypt(Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;

    move-result-object p1

    .line 931
    invoke-virtual {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->getNewEncryptedData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Distribute.update_token"

    .line 935
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->getDecryptedData()Ljava/lang/String;

    move-result-object p1

    .line 941
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->getLatestReleaseDetails(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static disableAutomaticCheckForUpdate()V
    .locals 1

    .line 417
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    invoke-direct {v0}, Lcom/microsoft/appcenter/distribute/Distribute;->instanceDisableAutomaticCheckForUpdate()V

    return-void
.end method

.method private declared-synchronized enqueueDistributionStartSessionLog()V
    .locals 3

    monitor-enter p0

    .line 1956
    :try_start_0
    invoke-static {}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getInstance()Lcom/microsoft/appcenter/utils/context/SessionContext;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/appcenter/utils/context/SessionContext;->getSessionAt(J)Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1957
    invoke-virtual {v0}, Lcom/microsoft/appcenter/utils/context/SessionContext$SessionInfo;->getSessionId()Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1961
    :cond_0
    new-instance v0, Lcom/microsoft/appcenter/distribute/Distribute$13;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/distribute/Distribute$13;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/AbstractAppCenterService;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "AppCenterDistribute"

    const-string v1, "No sessions were logged before, ignore sending of the distribution start session log."

    .line 1958
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1959
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private formatAppNameAndVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/AppNameHelper;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1862
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getShortVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getInstallReadyMessage()Ljava/lang/String;
    .locals 2

    .line 1854
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_install_ready_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->formatAppNameAndVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/appcenter/distribute/Distribute;
    .locals 2

    const-class v0, Lcom/microsoft/appcenter/distribute/Distribute;

    monitor-enter v0

    .line 299
    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/distribute/Distribute;->sInstance:Lcom/microsoft/appcenter/distribute/Distribute;

    if-nez v1, :cond_0

    .line 300
    new-instance v1, Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-direct {v1}, Lcom/microsoft/appcenter/distribute/Distribute;-><init>()V

    sput-object v1, Lcom/microsoft/appcenter/distribute/Distribute;->sInstance:Lcom/microsoft/appcenter/distribute/Distribute;

    .line 302
    :cond_0
    sget-object v1, Lcom/microsoft/appcenter/distribute/Distribute;->sInstance:Lcom/microsoft/appcenter/distribute/Distribute;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getReportingParametersForUpdatedRelease(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isPublic",
            "distributionGroupId"
        }
    .end annotation

    const-string v0, "AppCenterDistribute"

    const-string v1, "Check if we need to report release installation.."

    .line 1264
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Distribute.downloaded_release_hash"

    .line 1265
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1266
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_2

    .line 1267
    invoke-direct {p0, v1}, Lcom/microsoft/appcenter/distribute/Distribute;->isCurrentReleaseWasUpdated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Current release was updated but not reported yet, reporting.."

    .line 1268
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&install_id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/microsoft/appcenter/utils/IdHelper;->getInstallId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1272
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&distribution_group_id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Distribute.downloaded_release_id"

    .line 1273
    invoke-static {p2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&downloaded_release_id="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string p1, "New release was downloaded but not installed yet, skip reporting."

    .line 1276
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "Current release was already reported, skip reporting."

    .line 1279
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3
.end method

.method private declared-synchronized goToUnknownAppsSettings(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDetails"
        }
    .end annotation

    monitor-enter p0

    .line 1625
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "AppCenterDistribute"

    const-string v0, "The application is in background mode, the settings screen could not be opened."

    .line 1626
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1627
    monitor-exit p0

    return-void

    .line 1629
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 1630
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 1633
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1642
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v0, "AppCenterDistribute"

    const-string v1, "No way to navigate to secure settings on this device automatically"

    .line 1646
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    if-ne p1, v0, :cond_2

    .line 1650
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->completeWorkflow()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1653
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleApiCallFailure(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "releaseCallId",
            "e"
        }
    .end annotation

    monitor-enter p0

    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseCallId:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 1098
    monitor-exit p0

    return-void

    .line 1102
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->completeWorkflow()V

    .line 1105
    invoke-static {p2}, Lcom/microsoft/appcenter/http/HttpUtils;->isRecoverableError(Ljava/lang/Throwable;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 1106
    monitor-exit p0

    return-void

    .line 1113
    :cond_1
    :try_start_2
    instance-of p1, p2, Lcom/microsoft/appcenter/http/HttpException;

    if-eqz p1, :cond_4

    .line 1114
    move-object p1, p2

    check-cast p1, Lcom/microsoft/appcenter/http/HttpException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 1119
    :try_start_3
    invoke-virtual {p1}, Lcom/microsoft/appcenter/http/HttpException;->getHttpResponse()Lcom/microsoft/appcenter/http/HttpResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/appcenter/http/HttpResponse;->getPayload()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/ErrorDetails;->parse(Ljava/lang/String;)Lcom/microsoft/appcenter/distribute/ErrorDetails;

    move-result-object p1

    .line 1120
    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ErrorDetails;->getCode()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string v1, "AppCenterDistribute"

    const-string v2, "Cannot read the error as JSON"

    .line 1122
    invoke-static {v1, v2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "no_releases_for_user"

    .line 1124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "not_found"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "AppCenterDistribute"

    const-string v0, "Failed to check latest release (delete setup state)"

    .line 1131
    invoke-static {p1, v0, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Distribute.distribution_group_id"

    .line 1132
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string p1, "Distribute.update_token"

    .line 1133
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string p1, "Distribute.postpone_time"

    .line 1134
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    .line 1135
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mDistributeInfoTracker:Lcom/microsoft/appcenter/distribute/channel/DistributeInfoTracker;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/channel/DistributeInfoTracker;->removeDistributionGroupId()V

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "AppCenterDistribute"

    const-string p2, "No release available to the current user."

    .line 1125
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mListener:Lcom/microsoft/appcenter/distribute/DistributeListener;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-eqz p1, :cond_5

    const-string p1, "AppCenterDistribute"

    const-string p2, "Calling listener.onNoReleaseAvailable."

    .line 1127
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mListener:Lcom/microsoft/appcenter/distribute/DistributeListener;

    iget-object p2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-interface {p1, p2}, Lcom/microsoft/appcenter/distribute/DistributeListener;->onNoReleaseAvailable(Landroid/app/Activity;)V

    goto :goto_2

    :cond_4
    const-string p1, "AppCenterDistribute"

    const-string v0, "Failed to check latest release"

    .line 1144
    invoke-static {p1, v0, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1146
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleApiCallSuccess(Ljava/lang/Object;Ljava/lang/String;Lcom/microsoft/appcenter/distribute/ReleaseDetails;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "releaseCallId",
            "rawReleaseDetails",
            "releaseDetails",
            "sourceDistributionId"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Distribute.downloaded_release_hash"

    .line 1152
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1154
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->isCurrentReleaseWasUpdated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AppCenterDistribute"

    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully reported app update for downloaded release hash ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), removing from store.."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Distribute.downloaded_release_hash"

    .line 1156
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string v0, "Distribute.downloaded_release_id"

    .line 1157
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "AppCenterDistribute"

    const-string v1, "Stored release hash doesn\'t match current installation, probably downloaded but not installed yet, keep in store"

    .line 1159
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseCallId:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_2

    .line 1165
    monitor-exit p0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1169
    :try_start_1
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseApiCall:Lcom/microsoft/appcenter/http/ServiceCall;

    if-nez p4, :cond_3

    .line 1173
    invoke-virtual {p3}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getDistributionGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->processDistributionGroupId(Ljava/lang/String;)V

    .line 1177
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p3}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getMinApiLevel()I

    move-result p4

    if-lt p1, p4, :cond_9

    const-string p1, "AppCenterDistribute"

    const-string p4, "Check if latest release is more recent."

    .line 1180
    invoke-static {p1, p4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-direct {p0, p3}, Lcom/microsoft/appcenter/distribute/Distribute;->isMoreRecent(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1183
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mListener:Lcom/microsoft/appcenter/distribute/DistributeListener;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-eqz p1, :cond_a

    const-string p1, "AppCenterDistribute"

    const-string p2, "Calling listener.onNoReleaseAvailable."

    .line 1184
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mListener:Lcom/microsoft/appcenter/distribute/DistributeListener;

    iget-object p2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-interface {p1, p2}, Lcom/microsoft/appcenter/distribute/DistributeListener;->onNoReleaseAvailable(Landroid/app/Activity;)V

    goto :goto_2

    .line 1187
    :cond_4
    invoke-direct {p0, p3}, Lcom/microsoft/appcenter/distribute/Distribute;->canUpdateNow(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1190
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    if-nez p1, :cond_5

    .line 1191
    invoke-static {}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->loadCachedReleaseDetails()Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->updateReleaseDetails(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    :cond_5
    const-string p1, "Distribute.release_details"

    .line 1195
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1199
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getId()I

    move-result p1

    invoke-virtual {p3}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getId()I

    move-result p3

    if-eq p1, p3, :cond_6

    const-string p1, "AppCenterDistribute"

    const-string p3, "Latest release is more recent than the previous mandatory."

    .line 1200
    invoke-static {p1, p3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Distribute.download_state"

    .line 1201
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    const-string p1, "AppCenterDistribute"

    const-string p2, "The latest release is mandatory and already being processed."

    .line 1203
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1205
    :goto_1
    monitor-exit p0

    return-void

    .line 1209
    :cond_7
    :try_start_2
    invoke-direct {p0, p3}, Lcom/microsoft/appcenter/distribute/Distribute;->updateReleaseDetails(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    const-string p1, "AppCenterDistribute"

    const-string p3, "Latest release is more recent."

    .line 1212
    invoke-static {p1, p3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Distribute.download_state"

    .line 1213
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putInt(Ljava/lang/String;I)V

    .line 1214
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-eqz p1, :cond_8

    .line 1215
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showUpdateDialog()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1217
    :cond_8
    monitor-exit p0

    return-void

    :cond_9
    :try_start_3
    const-string p1, "AppCenterDistribute"

    const-string p2, "This device is not compatible with the latest release."

    .line 1220
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->completeWorkflow()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleCheckForUpdate()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 678
    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mManualCheckForUpdateRequested:Z

    .line 679
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->tryResetWorkflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->resumeWorkflowIfForeground()V

    goto :goto_0

    :cond_0
    const-string v0, "AppCenterDistribute"

    const-string v1, "A check for update is already ongoing."

    .line 682
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUpdateFailedDialogReinstallAction(Landroid/content/DialogInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    monitor-enter p0

    .line 1492
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateSetupFailedDialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_0

    .line 1495
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mInstallUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "update_setup_failed=true"

    .line 1497
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/distribute/BrowserUtils;->appendUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AppCenterDistribute"

    const-string v2, "Could not append query parameter to url."

    .line 1499
    invoke-static {v1, v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1501
    :goto_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/microsoft/appcenter/distribute/BrowserUtils;->openBrowser(Ljava/lang/String;Landroid/app/Activity;)V

    const-string p1, "Distribute.update_setup_failed_package_hash"

    .line 1504
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string p1, "Distribute.tester_app_update_setup_failed_message"

    .line 1505
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 1507
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showDisabledToast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1509
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized installMandatoryUpdate(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDetails"
        }
    .end annotation

    monitor-enter p0

    .line 1871
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    if-ne p1, v0, :cond_0

    .line 1872
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->resumeDownload()V

    goto :goto_0

    .line 1874
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showDisabledToast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1876
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private instanceCheckForUpdate()V
    .locals 1

    .line 673
    new-instance v0, Lcom/microsoft/appcenter/distribute/Distribute$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/distribute/Distribute$$ExternalSyntheticLambda1;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/AbstractAppCenterService;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized instanceDisableAutomaticCheckForUpdate()V
    .locals 2

    monitor-enter p0

    .line 424
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/AbstractAppCenterService;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v1, "Automatic check for update cannot be disabled after Distribute is started."

    .line 425
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 428
    :try_start_1
    iput-boolean v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mAutomaticCheckForUpdateDisabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAppCenterTesterAppInstalled()Z
    .locals 3

    const/4 v0, 0x0

    .line 919
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.microsoft.hockeyapp.testerapp"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method private isCurrentReleaseWasUpdated(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastDownloadedReleaseHash"
        }
    .end annotation

    .line 1315
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->computeReleaseHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private isMoreRecent(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDetails"
        }
    .end annotation

    .line 1330
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getVersionCode(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 1331
    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getVersion()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 1332
    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getReleaseHash()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->computeReleaseHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    goto :goto_1

    .line 1334
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getVersion()I

    move-result p1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move p1, v2

    .line 1336
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Latest release more recent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenterDistribute"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private declared-synchronized notifyDownloadCompleted()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "AppCenterDistribute"

    const-string v1, "Post a notification as the download finished in background."

    .line 1779
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_install_ready_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1781
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->getResumeAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1782
    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstallReadyMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->postNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const-string v0, "Distribute.download_state"

    const/4 v1, 0x3

    .line 1783
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static notifyUpdateAction(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateAction"
        }
    .end annotation

    .line 401
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/distribute/Distribute;->handleUpdateAction(I)V

    return-void
.end method

.method private declared-synchronized postponeRelease(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDetails"
        }
    .end annotation

    monitor-enter p0

    .line 1661
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    if-ne p1, v0, :cond_0

    const-string p1, "AppCenterDistribute"

    const-string v0, "Postpone updates for a day."

    .line 1662
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Distribute.postpone_time"

    .line 1663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 1664
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->completeWorkflow()V

    goto :goto_0

    .line 1666
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showDisabledToast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processDistributionGroupId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distributionGroupId"
        }
    .end annotation

    const-string v0, "Distribute.distribution_group_id"

    .line 1046
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mDistributeInfoTracker:Lcom/microsoft/appcenter/distribute/channel/DistributeInfoTracker;

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/distribute/channel/DistributeInfoTracker;->updateDistributionGroupId(Ljava/lang/String;)V

    .line 1048
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->enqueueDistributionStartSessionLog()V

    return-void
.end method

.method private requestPermissionsForDownload()V
    .locals 4

    .line 1705
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "AppCenterDistribute"

    const/16 v2, 0x21

    if-ge v0, v2, :cond_0

    const-string v0, "There is no need to request permissions in runtime on Android earlier than 6.0."

    .line 1706
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/microsoft/appcenter/distribute/permissions/PermissionUtils;->permissionsAreGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Post notification permission already granted."

    .line 1710
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1713
    :cond_1
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/appcenter/distribute/permissions/PermissionUtils;->requestPermissions(Landroid/content/Context;[Ljava/lang/String;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Future to get the result of a permission request is null."

    .line 1715
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1718
    :cond_2
    new-instance v1, Lcom/microsoft/appcenter/distribute/Distribute$11;

    invoke-direct {v1, p0}, Lcom/microsoft/appcenter/distribute/Distribute$11;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;)V

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method private declared-synchronized resumeDistributeWorkflow()V
    .locals 10

    monitor-enter p0

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mWorkflowCompleted:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/microsoft/appcenter/AbstractAppCenterService;->isInstanceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mEnabledForDebuggableBuild:Z

    if-nez v0, :cond_1

    const-string v0, "AppCenterDistribute"

    const-string v1, "Not checking for in-app updates in debuggable build."

    .line 719
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iput-boolean v3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mWorkflowCompleted:Z

    .line 721
    iput-boolean v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mManualCheckForUpdateRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "AppCenterDistribute"

    .line 726
    iget-object v4, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/microsoft/appcenter/distribute/InstallerUtils;->isInstalledFromAppStore(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AppCenterDistribute"

    const-string v1, "Not checking in app updates as installed from a store."

    .line 727
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iput-boolean v3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mWorkflowCompleted:Z

    .line 729
    iput-boolean v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mManualCheckForUpdateRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    monitor-exit p0

    return-void

    .line 734
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseInstaller:Lcom/microsoft/appcenter/distribute/UpdateInstaller;

    if-eqz v0, :cond_3

    .line 735
    invoke-virtual {v0}, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->resume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 736
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string v0, "AppCenterDistribute"

    const-string v4, "Resume distribute workflow..."

    .line 738
    invoke-static {v0, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateTrack:I

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    if-nez v0, :cond_6

    const-string v4, "Distribute.update_setup_failed_package_hash"

    .line 747
    invoke-static {v4}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 749
    iget-object v5, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->computeReleaseHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v5

    .line 750
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v0, "AppCenterDistribute"

    const-string v1, "Skipping in-app updates setup, because it already failed on this release before."

    .line 751
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 752
    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    const-string v4, "AppCenterDistribute"

    const-string v5, "Re-attempting in-app updates setup and cleaning up failure info from storage."

    .line 754
    invoke-static {v4, v5}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Distribute.update_setup_failed_package_hash"

    .line 755
    invoke-static {v4}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string v4, "Distribute.update_setup_failed_message"

    .line 756
    invoke-static {v4}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string v4, "Distribute.tester_app_update_setup_failed_message"

    .line 757
    invoke-static {v4}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    .line 763
    :cond_6
    iget-object v4, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartRequestId:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    const-string v0, "AppCenterDistribute"

    const-string v1, "Processing redirection parameters we kept in memory before onStarted"

    .line 764
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartDistributionGroupId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 766
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartRequestId:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartUpdateToken:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/microsoft/appcenter/distribute/Distribute;->storeRedirectionParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 767
    :cond_7
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartUpdateSetupFailed:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 768
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartRequestId:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->storeUpdateSetupFailedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartTesterAppUpdateSetupFailed:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 771
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartRequestId:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->storeTesterAppUpdateSetupFailedParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_9
    iput-object v5, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartRequestId:Ljava/lang/String;

    .line 774
    iput-object v5, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartDistributionGroupId:Ljava/lang/String;

    .line 775
    iput-object v5, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartUpdateToken:Ljava/lang/String;

    .line 776
    iput-object v5, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartUpdateSetupFailed:Ljava/lang/String;

    .line 777
    iput-object v5, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartTesterAppUpdateSetupFailed:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 778
    monitor-exit p0

    return-void

    .line 782
    :cond_a
    :try_start_5
    invoke-static {}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->getStoredDownloadState()I

    move-result v4

    .line 783
    iget-object v6, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    if-nez v6, :cond_b

    if-eqz v4, :cond_b

    .line 784
    invoke-static {}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->loadCachedReleaseDetails()Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/microsoft/appcenter/distribute/Distribute;->updateReleaseDetails(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    .line 787
    iget-object v6, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    .line 788
    invoke-static {v6}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_b

    if-ne v4, v3, :cond_b

    .line 790
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->cancelPreviousTasks()V

    :cond_b
    if-eqz v4, :cond_c

    if-eq v4, v3, :cond_c

    .line 798
    iget-object v6, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-string v8, "Distribute.download_time"

    invoke-static {v8}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_c

    const-string v6, "AppCenterDistribute"

    const-string v7, "Discarding previous download as application updated."

    .line 799
    invoke-static {v6, v7}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->cancelPreviousTasks()V

    .line 803
    iget-object v6, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->cancelNotification(Landroid/content/Context;)V

    .line 811
    :cond_c
    iget-object v6, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    if-eqz v6, :cond_14

    const/4 v7, 0x4

    if-eq v4, v7, :cond_11

    const/4 v8, 0x3

    if-ne v4, v8, :cond_d

    goto :goto_2

    :cond_d
    if-ne v4, v1, :cond_e

    .line 830
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->resumeDownload()V

    .line 833
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showDownloadProgress()V

    goto :goto_3

    .line 837
    :cond_e
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUnknownSourcesDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_f

    .line 845
    invoke-virtual {p0, v6}, Lcom/microsoft/appcenter/distribute/Distribute;->enqueueDownloadAndRequestPermissions(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    goto :goto_3

    .line 852
    :cond_f
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloader:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_13

    .line 853
    :cond_10
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showUpdateDialog()V

    goto :goto_3

    .line 815
    :cond_11
    :goto_2
    invoke-virtual {v6}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 818
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/distribute/Distribute;->showMandatoryDownloadReadyDialog(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    goto :goto_3

    .line 822
    :cond_12
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->resumeDownload()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_13
    :goto_3
    if-eq v4, v3, :cond_14

    if-eq v4, v7, :cond_14

    .line 865
    monitor-exit p0

    return-void

    :cond_14
    :try_start_6
    const-string v1, "Distribute.update_setup_failed_message"

    .line 874
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v0, "AppCenterDistribute"

    const-string v1, "In-app updates setup failure detected."

    .line 876
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showUpdateSetupFailedDialog()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 878
    monitor-exit p0

    return-void

    .line 882
    :cond_15
    :try_start_7
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseCallId:Ljava/lang/Object;

    if-eqz v1, :cond_16

    const-string v0, "AppCenterDistribute"

    const-string v1, "Already checking or checked latest release."

    .line 883
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 884
    monitor-exit p0

    return-void

    .line 888
    :cond_16
    :try_start_8
    iget-boolean v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mAutomaticCheckForUpdateDisabled:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mManualCheckForUpdateRequested:Z

    if-nez v1, :cond_17

    const-string v0, "AppCenterDistribute"

    const-string v1, "Automatic check for update is disabled. The SDK will not check for update now."

    .line 889
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 890
    monitor-exit p0

    return-void

    :cond_17
    :try_start_9
    const-string v1, "Distribute.update_token"

    .line 896
    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Distribute.distribution_group_id"

    .line 897
    invoke-static {v4}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_1c

    if-eqz v1, :cond_18

    goto :goto_5

    :cond_18
    const-string v0, "Distribute.tester_app_update_setup_failed_message"

    .line 906
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->isAppCenterTesterAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.microsoft.hockeyapp.testerapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    move v2, v3

    :cond_19
    if-eqz v2, :cond_1a

    .line 908
    iget-boolean v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mTesterAppOpenedOrAborted:Z

    if-nez v0, :cond_1a

    .line 909
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->updateSetupUsingTesterApp(Landroid/app/Activity;Landroid/content/pm/PackageInfo;)V

    .line 910
    iput-boolean v3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mTesterAppOpenedOrAborted:Z

    goto :goto_4

    .line 911
    :cond_1a
    iget-boolean v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBrowserOpenedOrAborted:Z

    if-nez v0, :cond_1b

    .line 912
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mInstallUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mAppSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1, v2, v4}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->updateSetupUsingBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 913
    iput-boolean v3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBrowserOpenedOrAborted:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 915
    :cond_1b
    :goto_4
    monitor-exit p0

    return-void

    :cond_1c
    :goto_5
    if-eqz v0, :cond_1d

    goto :goto_6

    :cond_1d
    move-object v5, v1

    .line 901
    :goto_6
    :try_start_a
    invoke-direct {p0, v5, v4}, Lcom/microsoft/appcenter/distribute/Distribute;->decryptAndGetReleaseDetails(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 902
    monitor-exit p0

    return-void

    .line 714
    :cond_1e
    :goto_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resumeWorkflowIfForeground()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Lcom/microsoft/appcenter/distribute/Distribute$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/distribute/Distribute$$ExternalSyntheticLambda0;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;)V

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "AppCenterDistribute"

    const-string v1, "Distribute workflow will be resumed on activity resume event."

    .line 567
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setEnabledForDebuggableBuild(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 390
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/distribute/Distribute;->setInstanceEnabledForDebuggableBuild(Z)V

    return-void
.end method

.method private declared-synchronized setInstanceEnabledForDebuggableBuild(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    monitor-enter p0

    .line 666
    :try_start_0
    iput-boolean p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mEnabledForDebuggableBuild:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setInstanceListener(Lcom/microsoft/appcenter/distribute/DistributeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    monitor-enter p0

    .line 659
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mListener:Lcom/microsoft/appcenter/distribute/DistributeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static setListener(Lcom/microsoft/appcenter/distribute/DistributeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 381
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/distribute/Distribute;->setInstanceListener(Lcom/microsoft/appcenter/distribute/DistributeListener;)V

    return-void
.end method

.method private shouldRefreshDialog(Landroid/app/Dialog;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1379
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mLastActivityWithDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string p1, "AppCenterDistribute"

    const-string v0, "Previous dialog is still being shown in the same activity."

    .line 1381
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 1386
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private showAndRememberDialogActivity(Landroid/app/Dialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1398
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1399
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mLastActivityWithDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private showDisabledToast()V
    .locals 1

    .line 1740
    sget v0, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_dialog_actioned_on_disabled_toast:I

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->showToast(I)V

    return-void
.end method

.method private declared-synchronized showDownloadProgress()V
    .locals 2

    monitor-enter p0

    .line 1802
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v1, "Could not display progress dialog in the background."

    .line 1803
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1804
    monitor-exit p0

    return-void

    .line 1806
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloaderListener:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 1807
    monitor-exit p0

    return-void

    .line 1809
    :cond_1
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->showDownloadProgress(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1816
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->showAndRememberDialogActivity(Landroid/app/Dialog;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1818
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized showUnknownSourcesDialog()V
    .locals 4

    monitor-enter p0

    .line 1519
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v1, "The application is in background mode, the unknown sources dialog won\'t be displayed."

    .line 1520
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    monitor-exit p0

    return-void

    .line 1525
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUnknownSourcesDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->shouldRefreshDialog(Landroid/app/Dialog;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1526
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "AppCenterDistribute"

    const-string v1, "Show new unknown sources dialog."

    .line 1528
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1540
    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_unknown_sources_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1541
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    .line 1542
    invoke-virtual {v1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 1543
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const/high16 v2, 0x1040000

    .line 1545
    new-instance v3, Lcom/microsoft/appcenter/distribute/Distribute$6;

    invoke-direct {v3, p0, v1}, Lcom/microsoft/appcenter/distribute/Distribute$6;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1552
    new-instance v2, Lcom/microsoft/appcenter/distribute/Distribute$7;

    invoke-direct {v2, p0, v1}, Lcom/microsoft/appcenter/distribute/Distribute$7;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1562
    :goto_0
    sget v2, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_unknown_sources_dialog_settings:I

    new-instance v3, Lcom/microsoft/appcenter/distribute/Distribute$8;

    invoke-direct {v3, p0, v1}, Lcom/microsoft/appcenter/distribute/Distribute$8;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1569
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUnknownSourcesDialog:Landroid/app/Dialog;

    .line 1570
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->showAndRememberDialogActivity(Landroid/app/Dialog;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1571
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized showUpdateDialog()V
    .locals 5

    monitor-enter p0

    .line 1408
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mListener:Lcom/microsoft/appcenter/distribute/DistributeListener;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUsingDefaultUpdateDialog:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 1409
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUsingDefaultUpdateDialog:Ljava/lang/Boolean;

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, "AppCenterDistribute"

    const-string v2, "Calling listener.onReleaseAvailable."

    .line 1412
    invoke-static {v0, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mListener:Lcom/microsoft/appcenter/distribute/DistributeListener;

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-interface {v0, v2, v3}, Lcom/microsoft/appcenter/distribute/DistributeListener;->onReleaseAvailable(Landroid/app/Activity;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1415
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mLastActivityWithDialog:Ljava/lang/ref/WeakReference;

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1417
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUsingDefaultUpdateDialog:Ljava/lang/Boolean;

    .line 1419
    :cond_3
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUsingDefaultUpdateDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1420
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->shouldRefreshDialog(Landroid/app/Dialog;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 1421
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    const-string v0, "AppCenterDistribute"

    const-string v2, "Show default update dialog."

    .line 1423
    invoke-static {v0, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1425
    sget v2, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_update_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1426
    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    .line 1428
    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1429
    iget-object v3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    sget v4, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_update_dialog_message_mandatory:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1431
    :cond_5
    iget-object v3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    sget v4, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_update_dialog_message_optional:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1433
    :goto_1
    invoke-direct {p0, v3}, Lcom/microsoft/appcenter/distribute/Distribute;->formatAppNameAndVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1434
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1435
    sget v3, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_update_dialog_download:I

    new-instance v4, Lcom/microsoft/appcenter/distribute/Distribute$3;

    invoke-direct {v4, p0, v2}, Lcom/microsoft/appcenter/distribute/Distribute$3;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1442
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1443
    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1444
    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_update_dialog_postpone:I

    new-instance v3, Lcom/microsoft/appcenter/distribute/Distribute$4;

    invoke-direct {v3, p0, v2}, Lcom/microsoft/appcenter/distribute/Distribute$4;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1452
    :cond_6
    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getReleaseNotes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getReleaseNotesUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1453
    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_update_dialog_view_release_notes:I

    new-instance v3, Lcom/microsoft/appcenter/distribute/Distribute$5;

    invoke-direct {v3, p0, v2}, Lcom/microsoft/appcenter/distribute/Distribute$5;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1461
    :cond_7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateDialog:Landroid/app/Dialog;

    .line 1462
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->showAndRememberDialogActivity(Landroid/app/Dialog;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1464
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private storeInstallingReleaseDetails()V
    .locals 5

    .line 1935
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getDistributionGroupId()Ljava/lang/String;

    move-result-object v0

    .line 1936
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getReleaseHash()Ljava/lang/String;

    move-result-object v1

    .line 1937
    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getId()I

    move-result v2

    .line 1938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stored release details: group id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " release hash="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " release id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppCenterDistribute"

    invoke-static {v4, v3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Distribute.downloaded_distribution_group_id"

    .line 1939
    invoke-static {v3, v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Distribute.downloaded_release_hash"

    .line 1940
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Distribute.downloaded_release_id"

    .line 1941
    invoke-static {v0, v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized storeUpdateSetupFailedPackageHash(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    monitor-enter p0

    .line 1481
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateSetupFailedDialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_0

    const-string p1, "Distribute.update_setup_failed_package_hash"

    .line 1482
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->computeReleaseHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1484
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showDisabledToast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private tryResetWorkflow()Z
    .locals 2

    .line 495
    invoke-static {}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->getStoredDownloadState()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseCallId:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 496
    iput-boolean v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mWorkflowCompleted:Z

    .line 497
    iput-boolean v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBrowserOpenedOrAborted:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private declared-synchronized updateReleaseDetails(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDetails"
        }
    .end annotation

    monitor-enter p0

    .line 1228
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloader:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 1231
    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloader:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    invoke-interface {v2}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;->getReleaseDetails()Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getId()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloader:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    invoke-interface {v0}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;->cancel()V

    .line 1234
    :cond_1
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloader:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 1238
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloaderFactory;->create(Landroid/content/Context;Lcom/microsoft/appcenter/distribute/ReleaseDetails;Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;)Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;->cancel()V

    .line 1240
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloaderListener:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    if-eqz v0, :cond_4

    .line 1241
    invoke-virtual {v0}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->hideProgressDialog()V

    .line 1242
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloaderListener:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    .line 1244
    :cond_4
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    if-eqz p1, :cond_5

    .line 1248
    new-instance v0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;-><init>(Landroid/content/Context;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloaderListener:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    .line 1249
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloaderFactory;->create(Landroid/content/Context;Lcom/microsoft/appcenter/distribute/ReleaseDetails;Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;)Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloader:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private viewReleaseNotes(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDetails"
        }
    .end annotation

    .line 1471
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getReleaseNotesUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AppCenterDistribute"

    const-string v1, "Failed to navigate to release notes."

    .line 1473
    invoke-static {v0, v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized applyEnabledState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 534
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->changeDistributionGroupIdAfterAppUpdateIfNeeded()V

    const-string p1, "Distribute.distribution_group_id"

    .line 537
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 538
    new-instance v0, Lcom/microsoft/appcenter/distribute/channel/DistributeInfoTracker;

    invoke-direct {v0, p1}, Lcom/microsoft/appcenter/distribute/channel/DistributeInfoTracker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mDistributeInfoTracker:Lcom/microsoft/appcenter/distribute/channel/DistributeInfoTracker;

    .line 539
    iget-object p1, p0, Lcom/microsoft/appcenter/AbstractAppCenterService;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/channel/Channel;->addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    .line 542
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->resumeWorkflowIfForeground()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 546
    iput-boolean p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mTesterAppOpenedOrAborted:Z

    .line 547
    iput-boolean p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBrowserOpenedOrAborted:Z

    .line 548
    iput-boolean p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mWorkflowCompleted:Z

    .line 549
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->cancelPreviousTasks()V

    const-string p1, "Distribute.request_id"

    .line 550
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string p1, "Distribute.postpone_time"

    .line 551
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string p1, "Distribute.update_setup_failed_package_hash"

    .line 552
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string p1, "Distribute.update_setup_failed_message"

    .line 553
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string p1, "Distribute.tester_app_update_setup_failed_message"

    .line 554
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    .line 557
    iget-object p1, p0, Lcom/microsoft/appcenter/AbstractAppCenterService;->mChannel:Lcom/microsoft/appcenter/channel/Channel;

    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mDistributeInfoTracker:Lcom/microsoft/appcenter/distribute/channel/DistributeInfoTracker;

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/channel/Channel;->removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V

    const/4 p1, 0x0

    .line 558
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mDistributeInfoTracker:Lcom/microsoft/appcenter/distribute/channel/DistributeInfoTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized completeWorkflow()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AppCenterDistribute"

    const-string v1, "Complete current updating process."

    .line 959
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->cancelDownloadCompletedNotification()V

    const-string v0, "Distribute.release_details"

    .line 961
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    const-string v0, "Distribute.download_state"

    .line 962
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseInstaller:Lcom/microsoft/appcenter/distribute/UpdateInstaller;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->clear()V

    .line 965
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseInstaller:Lcom/microsoft/appcenter/distribute/UpdateInstaller;

    .line 967
    :cond_0
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseApiCall:Lcom/microsoft/appcenter/http/ServiceCall;

    .line 968
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseCallId:Ljava/lang/Object;

    .line 969
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateDialog:Landroid/app/Dialog;

    .line 970
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateSetupFailedDialog:Landroid/app/Dialog;

    .line 971
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUnknownSourcesDialog:Landroid/app/Dialog;

    .line 972
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mLastActivityWithDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 973
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    .line 974
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloaderListener:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    if-eqz v0, :cond_1

    .line 975
    invoke-virtual {v0}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->hideProgressDialog()V

    :cond_1
    const/4 v0, 0x1

    .line 977
    iput-boolean v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mWorkflowCompleted:Z

    const/4 v0, 0x0

    .line 978
    iput-boolean v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mManualCheckForUpdateRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized completeWorkflow(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releaseDetails"
        }
    .end annotation

    monitor-enter p0

    .line 950
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    if-ne p1, v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->completeWorkflow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized enqueueDownloadAndRequestPermissions(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "releaseDetails"
        }
    .end annotation

    monitor-enter p0

    .line 1677
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    if-ne p1, v0, :cond_1

    .line 1678
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/InstallerUtils;->isUnknownSourcesEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1679
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showUnknownSourcesDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    monitor-exit p0

    return-void

    .line 1682
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->requestPermissionsForDownload()V

    const-string p1, "AppCenterDistribute"

    const-string v0, "Schedule download..."

    .line 1683
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->resumeDownload()V

    .line 1687
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showDownloadProgress()V

    .line 1696
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseApiCall:Lcom/microsoft/appcenter/http/ServiceCall;

    if-eqz p1, :cond_2

    .line 1697
    invoke-interface {p1}, Lcom/microsoft/appcenter/http/ServiceCall;->cancel()V

    goto :goto_0

    .line 1700
    :cond_1
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->showDisabledToast()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1702
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getGroupName()Ljava/lang/String;
    .locals 1

    const-string v0, "group_distribute"

    return-object v0
.end method

.method declared-synchronized getLatestReleaseDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "distributionGroupId",
            "updateToken"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AppCenterDistribute"

    const-string v1, "Get latest release details..."

    .line 1059
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->computeReleaseHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mApiUrl:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    .line 1063
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/public/sdk/apps/%s/releases/latest?release_hash=%s%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mAppSecret:Ljava/lang/String;

    aput-object v7, v3, v5

    aput-object v0, v3, v4

    invoke-direct {p0, v4, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->getReportingParametersForUpdatedRelease(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1065
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sdk/apps/%s/releases/private/latest?release_hash=%s%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mAppSecret:Ljava/lang/String;

    aput-object v7, v3, v5

    aput-object v0, v3, v4

    invoke-direct {p0, v5, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->getReportingParametersForUpdatedRelease(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1067
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    const-string/jumbo v2, "x-api-token"

    .line 1069
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    :cond_1
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseCallId:Ljava/lang/Object;

    .line 1072
    new-instance v2, Lcom/microsoft/appcenter/distribute/ingestion/DistributeIngestion;

    iget-object v3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/microsoft/appcenter/distribute/ingestion/DistributeIngestion;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mAppSecret:Ljava/lang/String;

    new-instance v4, Lcom/microsoft/appcenter/distribute/Distribute$2;

    invoke-direct {v4, p0, p2, p1}, Lcom/microsoft/appcenter/distribute/Distribute$2;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/microsoft/appcenter/distribute/ingestion/DistributeIngestion;->checkReleaseAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCheckReleaseApiCall:Lcom/microsoft/appcenter/http/ServiceCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLogFactories()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mFactories:Ljava/util/Map;

    return-object v0
.end method

.method protected getLoggerTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AppCenterDistribute"

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "Distribute"

    return-object v0
.end method

.method protected getTriggerCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized handleUpdateAction(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "updateAction"
        }
    .end annotation

    monitor-enter p0

    .line 581
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/AbstractAppCenterService;->isInstanceEnabledAsync()Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/distribute/Distribute$1;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute$1;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;I)V

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    monitor-enter p0

    const/4 p1, 0x0

    .line 515
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    .line 518
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloaderListener:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->hideProgressDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    monitor-enter p0

    .line 505
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    .line 508
    invoke-virtual {p0}, Lcom/microsoft/appcenter/AbstractAppCenterService;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->resumeDistributeWorkflow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onApplicationEnterForeground()V
    .locals 2

    .line 525
    invoke-virtual {p0}, Lcom/microsoft/appcenter/AbstractAppCenterService;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v1, "Resetting workflow on entering foreground."

    .line 526
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->tryResetWorkflow()Z

    :cond_0
    return-void
.end method

.method public declared-synchronized onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "channel",
            "appSecret",
            "transmissionTargetToken",
            "startedFromApp"
        }
    .end annotation

    monitor-enter p0

    .line 463
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    .line 464
    iput-object p3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mAppSecret:Ljava/lang/String;

    .line 465
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 471
    invoke-super/range {p0 .. p5}, Lcom/microsoft/appcenter/AbstractAppCenterService;->onStarted(Landroid/content/Context;Lcom/microsoft/appcenter/channel/Channel;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized resumeApp(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    monitor-enter p0

    .line 1766
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1767
    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->getResumeAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1768
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized resumeDownload()V
    .locals 1

    monitor-enter p0

    .line 1882
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDownloader:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    if-eqz v0, :cond_0

    .line 1883
    invoke-interface {v0}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1885
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setDownloading(Lcom/microsoft/appcenter/distribute/ReleaseDetails;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "releaseDetails",
            "enqueueTime"
        }
    .end annotation

    monitor-enter p0

    .line 1895
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 1896
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "Distribute.download_state"

    const/4 v0, 0x2

    .line 1898
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putInt(Ljava/lang/String;I)V

    const-string p1, "Distribute.download_time"

    .line 1899
    invoke-static {p1, p2, p3}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1900
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setInstalling(Lcom/microsoft/appcenter/distribute/ReleaseDetails;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "releaseDetails",
            "localUri"
        }
    .end annotation

    monitor-enter p0

    .line 1909
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 1910
    monitor-exit p0

    return-void

    .line 1920
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->getStoredDownloadState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 1921
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->notifyDownloadCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1922
    monitor-exit p0

    return-void

    .line 1924
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->cancelDownloadCompletedNotification()V

    const-string p1, "AppCenterDistribute"

    const-string v0, "Start installing new release..."

    .line 1925
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Distribute.download_state"

    const/4 v0, 0x4

    .line 1926
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putInt(Ljava/lang/String;I)V

    .line 1927
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->storeInstallingReleaseDetails()V

    .line 1928
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseInstaller:Lcom/microsoft/appcenter/distribute/UpdateInstaller;

    if-nez p1, :cond_2

    .line 1929
    new-instance p1, Lcom/microsoft/appcenter/distribute/UpdateInstaller;

    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-direct {p1, v0, v1}, Lcom/microsoft/appcenter/distribute/UpdateInstaller;-><init>(Landroid/content/Context;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseInstaller:Lcom/microsoft/appcenter/distribute/UpdateInstaller;

    .line 1931
    :cond_2
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseInstaller:Lcom/microsoft/appcenter/distribute/UpdateInstaller;

    invoke-virtual {p1, p2}, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->install(Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1932
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized showMandatoryDownloadReadyDialog(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "releaseDetails"
        }
    .end annotation

    monitor-enter p0

    .line 1824
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 1825
    monitor-exit p0

    return-void

    .line 1829
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1830
    monitor-exit p0

    return-void

    .line 1832
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCompletedDownloadDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->shouldRefreshDialog(Landroid/app/Dialog;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 1833
    monitor-exit p0

    return-void

    .line 1835
    :cond_2
    :try_start_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1836
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1837
    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_install_ready_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1838
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstallReadyMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1839
    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_install:I

    new-instance v2, Lcom/microsoft/appcenter/distribute/Distribute$12;

    invoke-direct {v2, p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute$12;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1846
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mCompletedDownloadDialog:Landroid/app/Dialog;

    .line 1847
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->showAndRememberDialogActivity(Landroid/app/Dialog;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1848
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method showToast(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageId"
        }
    .end annotation

    .line 1754
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    :goto_0
    const/4 v1, 0x0

    .line 1755
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected declared-synchronized showUpdateSetupFailedDialog()V
    .locals 3

    monitor-enter p0

    .line 1581
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateSetupFailedDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->shouldRefreshDialog(Landroid/app/Dialog;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1582
    monitor-exit p0

    return-void

    .line 1585
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "AppCenterDistribute"

    const-string v1, "Failed to show the update setup failed dialog. The foreground activity is null"

    .line 1586
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1587
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "AppCenterDistribute"

    const-string v1, "Show update setup failed dialog."

    .line 1590
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mForegroundActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1592
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1593
    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_update_failed_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1594
    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_update_failed_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1595
    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_update_failed_dialog_ignore:I

    new-instance v2, Lcom/microsoft/appcenter/distribute/Distribute$9;

    invoke-direct {v2, p0}, Lcom/microsoft/appcenter/distribute/Distribute$9;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1602
    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_update_failed_dialog_reinstall:I

    new-instance v2, Lcom/microsoft/appcenter/distribute/Distribute$10;

    invoke-direct {v2, p0}, Lcom/microsoft/appcenter/distribute/Distribute$10;-><init>(Lcom/microsoft/appcenter/distribute/Distribute;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1609
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mUpdateSetupFailedDialog:Landroid/app/Dialog;

    .line 1610
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->showAndRememberDialogActivity(Landroid/app/Dialog;)V

    const-string v0, "Distribute.update_setup_failed_message"

    .line 1613
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1614
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized startFromBackground(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    monitor-enter p0

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mAppSecret:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v1, "Called before onStart, init storage"

    .line 481
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    .line 483
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->initialize(Landroid/content/Context;)V

    .line 484
    invoke-static {}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->loadCachedReleaseDetails()Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->updateReleaseDetails(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized storeRedirectionParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "distributionGroupId",
            "updateToken"
        }
    .end annotation

    monitor-enter p0

    .line 1023
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v1, "Redirection parameters received before onStart, keep them in memory."

    .line 1024
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartRequestId:Ljava/lang/String;

    .line 1026
    iput-object p3, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartUpdateToken:Ljava/lang/String;

    .line 1027
    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartDistributionGroupId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, "Distribute.request_id"

    .line 1028
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 1030
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->getInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Distribute.update_token"

    .line 1031
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Distribute.update_token"

    .line 1033
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    :goto_0
    const-string p1, "Distribute.request_id"

    .line 1035
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0, p2}, Lcom/microsoft/appcenter/distribute/Distribute;->processDistributionGroupId(Ljava/lang/String;)V

    const-string p1, "AppCenterDistribute"

    const-string v0, "Stored redirection parameters."

    .line 1037
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->cancelPreviousTasks()V

    .line 1039
    invoke-virtual {p0, p2, p3}, Lcom/microsoft/appcenter/distribute/Distribute;->getLatestReleaseDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "AppCenterDistribute"

    const-string p2, "Ignoring redirection parameters as requestId is invalid."

    .line 1041
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized storeTesterAppUpdateSetupFailedParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestId",
            "testerAppUpdateSetupFailed"
        }
    .end annotation

    monitor-enter p0

    .line 1005
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v1, "Tester app update setup failed parameter received before onStart, keep it in memory."

    .line 1006
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartRequestId:Ljava/lang/String;

    .line 1008
    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartTesterAppUpdateSetupFailed:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "Distribute.request_id"

    .line 1009
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "AppCenterDistribute"

    const-string v0, "Stored tester app update setup failed parameter."

    .line 1010
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Distribute.tester_app_update_setup_failed_message"

    .line 1011
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "AppCenterDistribute"

    const-string p2, "Ignoring redirection parameters as requestId is invalid."

    .line 1013
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized storeUpdateSetupFailedParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestId",
            "updateSetupFailed"
        }
    .end annotation

    monitor-enter p0

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "AppCenterDistribute"

    const-string v1, "Update setup failed parameter received before onStart, keep it in memory."

    .line 988
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartRequestId:Ljava/lang/String;

    .line 990
    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/Distribute;->mBeforeStartUpdateSetupFailed:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "Distribute.request_id"

    .line 991
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "AppCenterDistribute"

    const-string v0, "Stored update setup failed parameter."

    .line 992
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Distribute.update_setup_failed_message"

    .line 993
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "AppCenterDistribute"

    const-string p2, "Ignoring redirection parameters as requestId is invalid."

    .line 995
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
