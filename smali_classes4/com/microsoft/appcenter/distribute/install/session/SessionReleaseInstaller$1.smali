.class Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$1;
.super Ljava/lang/Object;
.source "SessionReleaseInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->install(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;

.field final synthetic val$localUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;Landroid/net/Uri;)V
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

    .line 94
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$1;->this$0:Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;

    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$1;->val$localUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$1;->this$0:Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;

    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->access$000(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V

    .line 103
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$1;->this$0:Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$1;->val$localUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->access$100(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;Landroid/net/Uri;)V

    return-void
.end method
