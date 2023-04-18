.class public Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "CreateWalletPinView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnCodeErrorShakeCommand;,
        Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnSuccessCreateWalletCommand;,
        Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;",
        ">;",
        "Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public goToBackUpTutorial(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V
    .locals 3

    .line 19
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$GoToBackUpTutorialCommand;-><init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    .line 20
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 22
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 26
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    .line 27
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;->goToBackUpTutorial(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onCodeErrorShake()V
    .locals 3

    .line 67
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnCodeErrorShakeCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnCodeErrorShakeCommand;-><init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;)V

    .line 68
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 70
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 74
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    .line 75
    invoke-interface {v2}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;->onCodeErrorShake()V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onSuccessCreateWallet()V
    .locals 3

    .line 35
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnSuccessCreateWalletCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnSuccessCreateWalletCommand;-><init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;)V

    .line 36
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 38
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 42
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    .line 43
    invoke-interface {v2}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;->onSuccessCreateWallet()V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+TT;>;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")V"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 116
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 118
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 122
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    .line 123
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 99
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 100
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 102
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 106
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    .line 107
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 83
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 86
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 90
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    .line 91
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
