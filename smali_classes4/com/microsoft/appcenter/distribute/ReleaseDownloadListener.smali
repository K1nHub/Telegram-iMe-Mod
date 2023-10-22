.class Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;
.super Ljava/lang/Object;
.source "ReleaseDownloadListener.java"

# interfaces
.implements Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "releaseDetails"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;)Lcom/microsoft/appcenter/distribute/ReleaseDetails;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;JJ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->updateProgressDialog(JJ)V

    return-void
.end method

.method private declared-synchronized updateProgressDialog(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "currentSize",
            "totalSize"
        }
    .end annotation

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-ltz v1, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isIndeterminate()Z

    move-result v0

    const-wide/32 v1, 0x100000

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 170
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mContext:Landroid/content/Context;

    sget v4, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_download_progress_number_format:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 172
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    div-long/2addr p3, v1

    long-to-int p3, p3

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 174
    :cond_0
    iget-object p3, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    div-long/2addr p1, v1

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized hideProgressDialog()V
    .locals 2

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 144
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 147
    new-instance v1, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$5;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$5;-><init>(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;Landroid/app/ProgressDialog;)V

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    invoke-static {}, Lcom/microsoft/appcenter/utils/HandlerUtils;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "Distribute.handler_token_check_progress"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onComplete(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "localUri"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$3;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$3;-><init>(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMessage"
        }
    .end annotation

    .line 105
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    .line 106
    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getShortVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "Failed to download %s (%d) update: %s"

    .line 105
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppCenterDistribute"

    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance p1, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$4;

    invoke-direct {p1, p0}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$4;-><init>(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;)V

    invoke-static {p1}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized onProgress(JJ)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "currentSize",
            "totalSize"
        }
    .end annotation

    move-object v7, p0

    monitor-enter p0

    :try_start_0
    const-string v0, "AppCenterDistribute"

    .line 77
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Downloading %s (%d) update: %d KiB / %d KiB"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v7, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    .line 78
    invoke-virtual {v4}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getShortVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v3, v8

    iget-object v4, v7, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v4}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v3, v9

    const/4 v4, 0x2

    const-wide/16 v5, 0x400

    div-long v10, p1, v5

    .line 79
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x3

    div-long v5, p3, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 77
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$2;-><init>(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;JJ)V

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    iget-object v0, v7, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v8, v9

    :cond_0
    monitor-exit p0

    return v8

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enqueueTime"
        }
    .end annotation

    .line 61
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    .line 62
    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getShortVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Start download %s (%d) update."

    .line 61
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenterDistribute"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$1;-><init>(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;J)V

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method declared-synchronized showDownloadProgress(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "foregroundActivity"
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    monitor-exit p0

    return-object v1

    .line 127
    :cond_0
    :try_start_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 128
    sget p1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_downloading_update:I

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 129
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 130
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 131
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 132
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 134
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
