.class public Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;
.super Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;
.source "IntentReleaseInstaller.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "installerHandler",
            "listener"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->onError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->onCancel()V

    return-void
.end method

.method protected static getInstallIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileUri"
        }
    .end annotation

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 78
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.RETURN_RESULT"

    .line 79
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public install(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localUri"
        }
    .end annotation

    .line 36
    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;->getInstallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot resolve install intent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->onError(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 49
    :cond_1
    new-instance v0, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller$1;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller$1;-><init>(Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;)V

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/utils/async/AppCenterFuture;->thenAccept(Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ACTION_INSTALL_PACKAGE"

    return-object v0
.end method
