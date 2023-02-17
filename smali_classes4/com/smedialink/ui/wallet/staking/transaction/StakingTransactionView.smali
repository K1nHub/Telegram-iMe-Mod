.class public interface abstract Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;
.super Ljava/lang/Object;
.source "StakingTransactionView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract showActionError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showActionSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showConfirmDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showNoEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
.end method

.method public abstract showStakingConditionsDialog(Lcom/smedialink/model/staking/StakingDetailsItem;)V
.end method

.method public abstract updateAmountDependedViews()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract updateStakingStep()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract updateWithdrawalFee()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
