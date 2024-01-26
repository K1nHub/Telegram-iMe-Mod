.class Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$1;
.super Ljava/lang/Object;
.source "ReleaseDownloadListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->onStart(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

.field final synthetic val$enqueueTime:J


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$enqueueTime"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$1;->this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    iput-wide p2, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$1;->val$enqueueTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 69
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$1;->this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    invoke-static {v1}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->access$000(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;)Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object v1

    iget-wide v2, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$1;->val$enqueueTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/appcenter/distribute/Distribute;->setDownloading(Lcom/microsoft/appcenter/distribute/ReleaseDetails;J)V

    return-void
.end method
