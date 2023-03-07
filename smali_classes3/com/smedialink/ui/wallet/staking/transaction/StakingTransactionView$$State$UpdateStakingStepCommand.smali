.class public Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateStakingStepCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateStakingStepCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;)V
    .locals 1

    .line 354
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "updateStakingStep"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;)V
    .locals 0

    .line 359
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->updateStakingStep()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 352
    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateStakingStepCommand;->apply(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;)V

    return-void
.end method
