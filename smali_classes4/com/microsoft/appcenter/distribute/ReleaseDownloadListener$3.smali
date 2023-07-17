.class Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$3;
.super Ljava/lang/Object;
.source "ReleaseDownloadListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->onComplete(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

.field final synthetic val$localUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$localUri"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$3;->this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$3;->val$localUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$3;->this$0:Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;

    invoke-static {v1}, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;->access$000(Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener;)Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/appcenter/distribute/ReleaseDownloadListener$3;->val$localUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/appcenter/distribute/Distribute;->setInstalling(Lcom/microsoft/appcenter/distribute/ReleaseDetails;Landroid/net/Uri;)V

    return-void
.end method
