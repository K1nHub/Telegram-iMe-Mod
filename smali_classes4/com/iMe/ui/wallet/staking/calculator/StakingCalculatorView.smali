.class public interface abstract Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;
.super Ljava/lang/Object;
.source "StakingCalculatorView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract openDepositScreen(Lcom/iMe/model/staking/StakingDetailsItem;D)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract showBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
.end method

.method public abstract showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract updateStakingCalculatorViews()V
.end method
