.class public Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$ShowLoadingDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EnterWalletPinView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowLoadingDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView;",
        ">;"
    }
.end annotation


# instance fields
.field public final actionToCancel:Lio/reactivex/disposables/Disposable;

.field public final cancellable:Z

.field public final show:Z


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State;ZZLio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 189
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showLoadingDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 191
    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$ShowLoadingDialogCommand;->show:Z

    .line 192
    iput-boolean p3, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$ShowLoadingDialogCommand;->cancellable:Z

    .line 193
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$ShowLoadingDialogCommand;->actionToCancel:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView;)V
    .locals 3

    .line 198
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$ShowLoadingDialogCommand;->show:Z

    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$ShowLoadingDialogCommand;->cancellable:Z

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$ShowLoadingDialogCommand;->actionToCancel:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 181
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$ShowLoadingDialogCommand;->apply(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView;)V

    return-void
.end method
