.class Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$2;
.super Ljava/lang/Object;
.source "SessionReleaseInstaller.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->onInstallConfirmation(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<",
        "Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;",
        ">;"
    }
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

    .line 150
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$2;->this$0:Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 156
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$2;->this$0:Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;->access$200(Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 150
    check-cast p1, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller$2;->accept(Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;)V

    return-void
.end method
