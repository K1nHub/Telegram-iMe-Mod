.class public Lcom/microsoft/appcenter/distribute/download/ReleaseDownloaderFactory;
.super Ljava/lang/Object;
.source "ReleaseDownloaderFactory.java"


# direct methods
.method public static create(Landroid/content/Context;Lcom/microsoft/appcenter/distribute/ReleaseDetails;Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;)Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;
    .locals 1
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

    .line 27
    new-instance v0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;-><init>(Landroid/content/Context;Lcom/microsoft/appcenter/distribute/ReleaseDetails;Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader$Listener;)V

    return-object v0
.end method
