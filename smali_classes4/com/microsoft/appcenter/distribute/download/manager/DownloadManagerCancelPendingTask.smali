.class Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;
.super Landroid/os/AsyncTask;
.source "DownloadManagerCancelPendingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDownloadId:J

.field private final mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloader",
            "downloadId"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;->mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    .line 26
    iput-wide p2, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;->mDownloadId:J

    return-void
.end method

.method private isPending()Z
    .locals 6

    .line 44
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [J

    iget-wide v3, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;->mDownloadId:J

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    .line 45
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;->mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    invoke-virtual {v2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 47
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_0
    move v1, v5

    :goto_1
    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;->isPending()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;->mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    iget-wide v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;->mDownloadId:J

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->clearDownloadId(J)V

    .line 33
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerCancelPendingTask;->mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to start downloading file due to timeout exception."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->onDownloadError(Ljava/lang/RuntimeException;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
