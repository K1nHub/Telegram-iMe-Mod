.class public Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "ProfileView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/profile/ProfileView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowLoadingDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/profile/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field public final actionToCancel:Lio/reactivex/disposables/Disposable;

.field public final cancellable:Z

.field public final show:Z


# direct methods
.method constructor <init>(Lcom/smedialink/ui/profile/ProfileView$$State;ZZLio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 167
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showLoadingDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 169
    iput-boolean p2, p0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;->show:Z

    .line 170
    iput-boolean p3, p0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;->cancellable:Z

    .line 171
    iput-object p4, p0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;->actionToCancel:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/profile/ProfileView;)V
    .locals 3

    .line 176
    iget-boolean v0, p0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;->show:Z

    iget-boolean v1, p0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;->cancellable:Z

    iget-object v2, p0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;->actionToCancel:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 159
    check-cast p1, Lcom/smedialink/ui/profile/ProfileView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;->apply(Lcom/smedialink/ui/profile/ProfileView;)V

    return-void
.end method
