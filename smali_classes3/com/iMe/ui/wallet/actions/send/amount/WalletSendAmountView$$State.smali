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

    .line 139
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/model/dialog/DialogModel;Z)V

    .line 140
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 142
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 146
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

    .line 147
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->onSuccessValidation(Lcom/iMe/model/dialog/DialogModel;Z)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public resetScreen()V
    .locals 3

    .line 155
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ResetScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ResetScreenCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;)V

    .line 156
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 158
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 162
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

    .line 163
    invoke-interface {v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->resetScreen()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupReplenishAddress()V
    .locals 3

    .line 316
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupReplenishAddressCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupReplenishAddressCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;)V

    .line 317
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 319
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 323
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

    .line 324
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/replenish/WalletBinancePayReplenishView;->setupReplenishAddress()V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupScreenState(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V
    .locals 3

    .line 171
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupScreenStateCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$SetupScreenStateCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V

    .line 172
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 174
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 178
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

    .line 179
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->setupScreenState(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 3

    .line 219
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowBalanceCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowBalanceCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    .line 220
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 222
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 226
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

    .line 227
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showChooseNetworkDialog(Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;)V"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowChooseNetworkDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 124
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 126
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 130
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

    .line 131
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showChooseNetworkDialog(Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto :goto_0

    .line 134
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

    .line 267
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 268
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 270
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 274
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

    .line 275
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 251
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 252
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 254
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 258
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

    .line 259
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 262
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

.method public showSelectTokenDialog(Lcom/iMe/model/wallet/select/SelectableType;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/select/SelectableType;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    .line 106
    new-instance v8, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowSelectTokenDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/model/wallet/select/SelectableType;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 107
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 109
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    .line 114
    invoke-interface/range {v9 .. v14}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showSelectTokenDialog(Lcom/iMe/model/wallet/select/SelectableType;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

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

    .line 235
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 238
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 242
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

    .line 243
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public updateFeeView()V
    .locals 3

    .line 187
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$UpdateFeeViewCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$UpdateFeeViewCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;)V

    .line 188
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 190
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 194
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

    .line 195
    invoke-interface {v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->updateFeeView()V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public updateSelectedUser()V
    .locals 3

    .line 203
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$UpdateSelectedUserCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$UpdateSelectedUserCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;)V

    .line 204
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 206
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 210
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

    .line 211
    invoke-interface {v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->updateSelectedUser()V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
