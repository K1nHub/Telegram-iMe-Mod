.class public Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;
.super Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;
.source "DownloadManagerReleaseDownloader.java"


# instance fields
.field private mDownloadId:J

.field private mRequestTask:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;

.field private mUpdateTask:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerUpdateTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/appcenter/distribute/ReleaseDetails;Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "releaseDetails",
            "listener"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;-><init>(Landroid/content/Context;Lcom/microsoft/appcenter/distribute/ReleaseDetails;Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;)V

    const-wide/16 p1, -0x1

    .line 46
    iput-wide p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;J)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->cancelPendingDownload(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->update()V

    return-void
.end method

.method private cancelPendingDownload(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadId"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;-><init>(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;J)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    const-string p2, "AppCenterDistribute"

    invoke-static {p2, v0, p1}, Lcom/microsoft/appcenter/utils/AsyncTaskUtils;->execute(Ljava/lang/String;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private isDownloadedFileValid()Z
    .locals 6

    const/4 v0, 0x0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v4}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getSize()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 254
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 252
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open downloaded file for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppCenterDistribute"

    invoke-static {v3, v2, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private remove(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadId"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing download and notification id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenterDistribute"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRemoveTask;

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1, p2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRemoveTask;-><init>(Landroid/content/Context;J)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-static {v1, v0, p1}, Lcom/microsoft/appcenter/utils/AsyncTaskUtils;->execute(Ljava/lang/String;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private declared-synchronized request()V
    .locals 4

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->isCompleted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 136
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mRequestTask:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;

    if-eqz v0, :cond_1

    const-string v0, "AppCenterDistribute"

    const-string v1, "Downloading is already in progress."

    .line 139
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "AppCenterDistribute"

    .line 142
    new-instance v1, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mContext:Landroid/content/Context;

    sget v3, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_downloading_version:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;-><init>(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/microsoft/appcenter/utils/AsyncTaskUtils;->execute(Ljava/lang/String;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mRequestTask:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setDownloadId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadId"
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    iput-wide p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-string v0, "Distribute.download_id"

    .line 78
    invoke-static {v0, p1, p2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p1, "Distribute.download_id"

    .line 80
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized update()V
    .locals 3

    monitor-enter p0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->isCompleted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 150
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "AppCenterDistribute"

    .line 152
    new-instance v1, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerUpdateTask;

    invoke-direct {v1, p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerUpdateTask;-><init>(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/microsoft/appcenter/utils/AsyncTaskUtils;->execute(Ljava/lang/String;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerUpdateTask;

    iput-object v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mUpdateTask:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerUpdateTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 5

    monitor-enter p0

    .line 105
    :try_start_0
    invoke-super {p0}, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->cancel()V

    .line 106
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mRequestTask:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 108
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mRequestTask:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mUpdateTask:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerUpdateTask;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 112
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mUpdateTask:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerUpdateTask;

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->getDownloadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->remove(J)V

    .line 117
    invoke-direct {p0, v2, v3}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->setDownloadId(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized clearDownloadId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadId"
        }
    .end annotation

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->getDownloadId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->remove(J)V

    const-wide/16 p1, -0x1

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->setDownloadId(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDownloadId()J
    .locals 4

    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Distribute.download_id"

    .line 69
    invoke-static {v0, v2, v3}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J

    .line 71
    :cond_0
    iget-wide v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDownloadManager()Landroid/app/DownloadManager;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    return-object v0
.end method

.method public declared-synchronized isDownloading()Z
    .locals 4

    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onDownloadComplete()V
    .locals 4

    monitor-enter p0

    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->isCompleted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 223
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 227
    :try_start_1
    iput-boolean v0, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mCompleted:Z

    .line 228
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->isDownloadedFileValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mListener:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;

    const-string v1, "Downloaded package file is invalid."

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;->onError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "AppCenterDistribute"

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download was successful for id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mListener:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;

    invoke-interface {v1, v0}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;->onComplete(Landroid/net/Uri;)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mListener:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;

    const-string v1, "Downloaded file not found."

    invoke-interface {v0, v1}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;->onError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onDownloadError(Ljava/lang/RuntimeException;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    monitor-enter p0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->isCompleted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 244
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 246
    :try_start_1
    iput-boolean v0, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mCompleted:Z

    const-string v0, "AppCenterDistribute"

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to download update id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->mDownloadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mListener:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;->onError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onDownloadProgress(Landroid/database/Cursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursor"
        }
    .end annotation

    monitor-enter p0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->isCompleted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 203
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "total_size"

    .line 205
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "bytes_so_far"

    .line 206
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 207
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mListener:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;

    invoke-interface {p1, v2, v3, v0, v1}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;->onProgress(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    invoke-static {}, Lcom/microsoft/appcenter/utils/HandlerUtils;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader$2;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader$2;-><init>(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;)V

    const-string v1, "Distribute.handler_token_check_progress"

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    .line 210
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onDownloadStarted(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadId",
            "enqueueTime"
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->isCompleted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 178
    monitor-exit p0

    return-void

    .line 182
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->setDownloadId(J)V

    .line 183
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mListener:Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;

    invoke-interface {v0, p3, p4}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;->onStart(J)V

    .line 186
    iget-object p3, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {p3}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->update()V

    .line 191
    :cond_1
    invoke-static {}, Lcom/microsoft/appcenter/utils/HandlerUtils;->getMainHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader$1;-><init>(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;J)V

    const-wide/16 p1, 0x2710

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->request()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 94
    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->mCompleted:Z

    .line 100
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
