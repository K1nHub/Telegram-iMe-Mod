.class public Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowNoEnoughMoneyErrorDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowNoEnoughMoneyErrorDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final args:Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 1

    .line 279
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showNoEnoughMoneyErrorDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 281
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowNoEnoughMoneyErrorDialogCommand;->args:Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowNoEnoughMoneyErrorDialogCommand;->args:Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 275
    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowNoEnoughMoneyErrorDialogCommand;->apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V

    return-void
.end method
