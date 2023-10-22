.class public Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$SetupSafeWithdrawalCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupSafeWithdrawalCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final alertMessageText:Ljava/lang/String;

.field public final alertTitleText:Ljava/lang/String;

.field public final isSafeWithdrawalSelected:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 591
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupSafeWithdrawal"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 593
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$SetupSafeWithdrawalCommand;->isSafeWithdrawalSelected:Z

    .line 594
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$SetupSafeWithdrawalCommand;->alertTitleText:Ljava/lang/String;

    .line 595
    iput-object p4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$SetupSafeWithdrawalCommand;->alertMessageText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V
    .locals 3

    .line 600
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$SetupSafeWithdrawalCommand;->isSafeWithdrawalSelected:Z

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$SetupSafeWithdrawalCommand;->alertTitleText:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$SetupSafeWithdrawalCommand;->alertMessageText:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->setupSafeWithdrawal(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 582
    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$SetupSafeWithdrawalCommand;->apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V

    return-void
.end method
