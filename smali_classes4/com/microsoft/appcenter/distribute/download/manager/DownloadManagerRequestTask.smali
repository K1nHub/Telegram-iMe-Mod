.class Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;
.super Landroid/os/AsyncTask;
.source "DownloadManagerRequestTask.java"


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
.field private final mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloader",
            "title"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;->mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    .line 33
    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createRequest(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Uri"
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-direct {v0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

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

    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;->mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/download/AbstractReleaseDownloader;->getReleaseDetails()Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getDownloadUrl()Landroid/net/Uri;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start downloading new release from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppCenterDistribute"

    invoke-static {v2, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;->mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    invoke-virtual {v1}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v1

    .line 44
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;->createRequest(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;->mTitle:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getShortVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 48
    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 50
    invoke-virtual {v0, v6}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 52
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 54
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 55
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;->mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->onDownloadStarted(JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerRequestTask;->mDownloader:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to start download: Download Manager is disabled."

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->onDownloadError(Ljava/lang/RuntimeException;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
