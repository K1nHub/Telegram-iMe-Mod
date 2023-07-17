.class Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller$1;
.super Ljava/lang/Object;
.source "IntentReleaseInstaller.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;->install(Landroid/net/Uri;)V
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
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller$1;->this$0:Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 53
    iget p1, p1, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;->code:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 54
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller$1;->this$0:Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;

    const-string v0, "Install failed"

    invoke-static {p1, v0}, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;->access$000(Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller$1;->this$0:Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;->access$100(Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;)V

    :cond_1
    :goto_0
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

    .line 49
    check-cast p1, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller$1;->accept(Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;)V

    return-void
.end method
