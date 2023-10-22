.class Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader$1;
.super Ljava/lang/Object;
.source "DownloadManagerReleaseDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->onDownloadStarted(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

.field final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$downloadId"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader$1;->this$0:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    iput-wide p2, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader$1;->val$downloadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader$1;->this$0:Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;

    iget-wide v1, p0, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader$1;->val$downloadId:J

    invoke-static {v0, v1, v2}, Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;->access$000(Lcom/microsoft/appcenter/distribute/download/manager/DownloadManagerReleaseDownloader;J)V

    return-void
.end method
