.class Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$4;
.super Ljava/lang/Object;
.source "ReleaseDownloadListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$4;->this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    sget v1, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_downloading_error:I

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/distribute/Distribute;->showToast(I)V

    .line 114
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$4;->this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    invoke-static {v1}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->access$000(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;)Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/distribute/Distribute;->completeWorkflow(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    return-void
.end method
