.class Lcom/microsoft/appcenter/distribute/UpdateInstaller;
.super Ljava/lang/Object;
.source "UpdateInstaller.java"

# interfaces
.implements Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;
.implements Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;


# instance fields
.field private mCancelled:Z

.field private mCurrentInstaller:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;

.field private final mInstallers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalUri:Landroid/net/Uri;

.field private final mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "releaseDetails"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    .line 58
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->createInstallers(Landroid/content/Context;)Ljava/util/Deque;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mInstallers:Ljava/util/Deque;

    .line 59
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->popNextInstaller()Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mCurrentInstaller:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;

    return-void
.end method

.method private static createInstallerHandler()Landroid/os/Handler;
    .locals 2

    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppCenter.Installer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 142
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method private createInstallers(Landroid/content/Context;)Ljava/util/Deque;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Deque<",
            "Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->createInstallerHandler()Landroid/os/Handler;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 74
    new-instance v2, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;

    invoke-direct {v2, p1, v0, p0}, Lcom/microsoft/appcenter/distribute/install/session/SessionReleaseInstaller;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;)V

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v2, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;

    invoke-direct {v2, p1, v0, p0}, Lcom/microsoft/appcenter/distribute/install/intent/IntentReleaseInstaller;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller$Listener;)V

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static isRecoverableError(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMessage"
        }
    .end annotation

    const-string v0, "INSTALL_FAILED_INTERNAL_ERROR: Permission Denied"

    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private popNextInstaller()Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mInstallers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mInstallers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to install update via "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppCenterDistribute"

    invoke-static {v2, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mCurrentInstaller:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized install(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localUri"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 90
    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mCancelled:Z

    .line 91
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mLocalUri:Landroid/net/Uri;

    .line 92
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mCurrentInstaller:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;->install(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCancel()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 131
    :try_start_0
    iput-boolean v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mCancelled:Z

    .line 132
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/distribute/Distribute;->showMandatoryDownloadReadyDialog(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/distribute/Distribute;->completeWorkflow(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMessage"
        }
    .end annotation

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->isRecoverableError(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mCurrentInstaller:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;

    invoke-interface {p1}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;->clear()V

    .line 119
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->popNextInstaller()Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mCurrentInstaller:Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;

    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mLocalUri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstaller;->install(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object p1

    sget v0, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_install_error:I

    invoke-virtual {p1, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->showToast(I)V

    .line 126
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {p1, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->completeWorkflow(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume()V
    .locals 2

    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/UpdateInstaller;->mReleaseDetails:Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/distribute/Distribute;->showMandatoryDownloadReadyDialog(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
