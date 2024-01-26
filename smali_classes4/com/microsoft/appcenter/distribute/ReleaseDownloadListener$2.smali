.class Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$2;
.super Ljava/lang/Object;
.source "ReleaseDownloadListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->onProgress(JJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

.field final synthetic val$currentSize:J

.field final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$currentSize",
            "val$totalSize"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$2;->this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    iput-wide p2, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$2;->val$currentSize:J

    iput-wide p4, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$2;->val$totalSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$2;->this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    iget-wide v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$2;->val$currentSize:J

    iget-wide v3, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$2;->val$totalSize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->access$100(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;JJ)V

    return-void
.end method
