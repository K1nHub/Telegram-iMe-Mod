.class public Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "StakingTransactionView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateWithdrawalFeeCommand;,
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateStakingStepCommand;,
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateAmountDependedViewsCommand;,
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowBalanceCommand;,
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowConfirmDialogCommand;,
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionErrorCommand;,
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionSuccessCommand;,
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowNoEnoughMoneyErrorDialogCommand;,
        Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowStakingConditionsDialogCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;",
        "Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;"
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
.method public showActionError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 67
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionErrorCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionErrorCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;Ljava/lang/String;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 75
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showActionError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showActionSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 51
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionSuccessCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionSuccessCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 54
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 58
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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 59
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showActionSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 3

    .line 99
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowBalanceCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowBalanceCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 107
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 83
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowConfirmDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowConfirmDialogCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 91
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showConfirmDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 195
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 196
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 198
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 202
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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 203
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showNoEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    .line 35
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowNoEnoughMoneyErrorDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowNoEnoughMoneyErrorDialogCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 43
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showNoEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showStakingConditionsDialog(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 19
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowStakingConditionsDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowStakingConditionsDialogCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;Lcom/smedialink/model/staking/StakingDetailsItem;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 27
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showStakingConditionsDialog(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 179
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 182
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 186
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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 187
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public updateAmountDependedViews()V
    .locals 3

    .line 115
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateAmountDependedViewsCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateAmountDependedViewsCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 123
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateAmountDependedViews()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public updateStakingStep()V
    .locals 3

    .line 131
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateStakingStepCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateStakingStepCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;)V

    .line 132
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 134
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 138
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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 139
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public updateWithdrawalFee()V
    .locals 3

    .line 147
    new-instance v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateWithdrawalFeeCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateWithdrawalFeeCommand;-><init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;)V

    .line 148
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 150
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 154
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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 155
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateWithdrawalFee()V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
