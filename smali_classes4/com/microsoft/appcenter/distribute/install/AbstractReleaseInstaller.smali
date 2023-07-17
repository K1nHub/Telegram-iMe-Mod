.class public abstract Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;
.super Ljava/lang/Object;
.source "AbstractReleaseInstaller.java"

# interfaces
.implements Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mInstallerHandler:Landroid/os/Handler;

.field private final mListener:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;)V
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mInstallerHandler:Landroid/os/Handler;

    .line 23
    iput-object p3, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mListener:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method protected onCancel()V
    .locals 2

    const-string v0, "AppCenterDistribute"

    const-string v1, "Installation cancelled."

    .line 46
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mListener:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;

    invoke-interface {v0}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;->onCancel()V

    return-void
.end method

.method protected onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to install a new release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenterDistribute"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mListener:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method protected onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorMessage",
            "throwable"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to install a new release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenterDistribute"

    invoke-static {v1, v0, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    iget-object p2, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mListener:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;

    invoke-interface {p2, p1}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method protected post(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mInstallerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "delayMillis"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/install/AbstractReleaseInstaller;->mInstallerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
