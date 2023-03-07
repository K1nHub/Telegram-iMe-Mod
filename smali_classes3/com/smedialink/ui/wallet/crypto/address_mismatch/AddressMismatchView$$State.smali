.class public Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "AddressMismatchView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$CloseScreenCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;",
        ">;",
        "Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public closeScreen(J)V
    .locals 3

    .line 16
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$CloseScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$CloseScreenCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State;J)V

    .line 17
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 19
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    .line 24
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;->closeScreen(J)V

    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 48
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 49
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 51
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    .line 56
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 32
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView$$State;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 35
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    .line 40
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
