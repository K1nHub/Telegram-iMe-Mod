.class public Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowStakingConditionsDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowStakingConditionsDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 1

    .line 246
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showStakingConditionsDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 248
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowStakingConditionsDialogCommand;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowStakingConditionsDialogCommand;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showStakingConditionsDialog(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 242
    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowStakingConditionsDialogCommand;->apply(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;)V

    return-void
.end method
