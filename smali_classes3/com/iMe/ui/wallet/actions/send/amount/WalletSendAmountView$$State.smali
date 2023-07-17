.class public Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletSendAmountView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupReplenishAddressCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowBalanceCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$UpdateSelectedUserCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$UpdateFeeViewCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupScreenStateCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ResetScreenCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowRecipientWalletNotActivatedErrorCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowRecipientNotFoundErrorCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowNoEnoughMoneyErrorDialogCommand;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSuccessSendCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;",
        ">;",
        "Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public onSuccessValidation(Lcom/iMe/model/dialog/DialogModel;Z)V
    .locals 3

    .line 138
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/model/dialog/DialogModel;Z)V

    .line 139
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 141
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 145
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 146
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->onSuccessValidation(Lcom/iMe/model/dialog/DialogModel;Z)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public synthetic removeSelfFromStackImmediately()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$removeSelfFromStackImmediately(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public resetScreen()V
    .locals 3

    .line 154
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ResetScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ResetScreenCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;)V

    .line 155
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 157
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 161
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 162
    invoke-interface {v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->resetScreen()V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupReplenishAddress()V
    .locals 3

    .line 331
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupReplenishAddressCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupReplenishAddressCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;)V

    .line 332
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 334
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 338
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 339
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/replenish/WalletBinancePayReplenishView;->setupReplenishAddress()V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupScreenState(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V
    .locals 3

    .line 170
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupScreenStateCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupScreenStateCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V

    .line 171
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 173
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 177
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 178
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->setupScreenState(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 3

    .line 218
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowBalanceCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowBalanceCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    .line 219
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 221
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 225
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 226
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showChooseNetworkDialog(Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;)V"
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 123
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 125
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 129
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 130
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showChooseNetworkDialog(Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

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

    .line 266
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 267
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 269
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 273
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 274
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 250
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 251
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 253
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 257
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 258
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    .line 40
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowNoEnoughMoneyErrorDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowNoEnoughMoneyErrorDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    .line 41
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 43
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 47
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 48
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRecipientNotFoundError()V
    .locals 3

    .line 72
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowRecipientNotFoundErrorCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowRecipientNotFoundErrorCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;)V

    .line 73
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 75
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 79
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 80
    invoke-interface {v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showRecipientNotFoundError()V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRecipientWalletNotActivatedError()V
    .locals 3

    .line 88
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowRecipientWalletNotActivatedErrorCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowRecipientWalletNotActivatedErrorCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;)V

    .line 89
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 91
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 95
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 96
    invoke-interface {v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showRecipientWalletNotActivatedError()V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSelectTokenDialog(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;)V"
        }
    .end annotation

    .line 105
    new-instance v6, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 106
    iget-object v0, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v6}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 108
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 113
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showSelectTokenDialog(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v6}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSuccessSend(Ljava/lang/String;)V
    .locals 3

    .line 24
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSuccessSendCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSuccessSendCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 27
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 31
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 32
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showSuccessSend(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 234
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 237
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 241
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 242
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public updateFeeView()V
    .locals 3

    .line 186
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$UpdateFeeViewCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$UpdateFeeViewCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;)V

    .line 187
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 189
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 193
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 194
    invoke-interface {v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->updateFeeView()V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public updateSelectedUser()V
    .locals 3

    .line 202
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$UpdateSelectedUserCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$UpdateSelectedUserCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;)V

    .line 203
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 205
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 209
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

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 210
    invoke-interface {v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->updateSelectedUser()V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
