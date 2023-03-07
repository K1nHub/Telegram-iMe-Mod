.class public Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "EnterWalletPasswordView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowDeleteWalletDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowRestoreWalletScreenCommand;,
        Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnCodeErrorShakeCommand;,
        Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessUnlockWalletCommand;,
        Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessDeleteWalletCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;",
        ">;",
        "Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeErrorShake()V
    .locals 3

    .line 47
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnCodeErrorShakeCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnCodeErrorShakeCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;)V

    .line 48
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 50
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 54
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    .line 55
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->onCodeErrorShake()V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onSuccessDeleteWallet()V
    .locals 3

    .line 15
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessDeleteWalletCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessDeleteWalletCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;)V

    .line 16
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 18
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 22
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    .line 23
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->onSuccessDeleteWallet()V

    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onSuccessUnlockWallet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 31
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessUnlockWalletCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessUnlockWalletCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 34
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 38
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    .line 39
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->onSuccessUnlockWallet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showDeleteWalletDialog(Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 3

    .line 79
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowDeleteWalletDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowDeleteWalletDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;Lcom/smedialink/model/dialog/DialogModel;)V

    .line 80
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 82
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 86
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    .line 87
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->showDeleteWalletDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 111
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 112
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 114
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 118
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    .line 119
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRestoreWalletScreen(Ljava/lang/String;)V
    .locals 3

    .line 63
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowRestoreWalletScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowRestoreWalletScreenCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 66
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 70
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    .line 71
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->showRestoreWalletScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 95
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 98
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 102
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    .line 103
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
