.class public Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowBalanceCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowBalanceCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 1

    .line 348
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showBalance"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 350
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowBalanceCommand;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowBalanceCommand;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 344
    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowBalanceCommand;->apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V

    return-void
.end method