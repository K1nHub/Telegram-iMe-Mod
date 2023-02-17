.class public interface abstract Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;
.super Ljava/lang/Object;
.source "StakingCalculatorView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract openDepositScreen(Lcom/smedialink/model/staking/StakingDetailsItem;D)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract showBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
.end method

.method public abstract showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract updateStakingCalculatorViews()V
.end method
