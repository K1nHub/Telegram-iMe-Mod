.class public Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateWithdrawalFeeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateWithdrawalFeeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final feeValue:Ljava/lang/String;

.field public final timeValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 570
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "updateWithdrawalFee"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 572
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateWithdrawalFeeCommand;->feeValue:Ljava/lang/String;

    .line 573
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateWithdrawalFeeCommand;->timeValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateWithdrawalFeeCommand;->feeValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateWithdrawalFeeCommand;->timeValue:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateWithdrawalFee(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 564
    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateWithdrawalFeeCommand;->apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V

    return-void
.end method
