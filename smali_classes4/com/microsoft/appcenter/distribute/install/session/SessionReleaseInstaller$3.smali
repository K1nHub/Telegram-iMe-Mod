.class Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$3;
.super Ljava/lang/Object;
.source "SessionReleaseInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->cancelIfNoProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$3;->this$0:Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$3;->this$0:Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;

    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->access$300(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$3;->this$0:Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;

    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->access$400(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V

    :cond_0
    return-void
.end method
