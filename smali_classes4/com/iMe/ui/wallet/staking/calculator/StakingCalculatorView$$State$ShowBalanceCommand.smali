.class public Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State$ShowBalanceCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingCalculatorView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowBalanceCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;",
        ">;"
    }
.end annotation


# instance fields
.field public final balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 1

    .line 185
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "showBalance"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 187
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State$ShowBalanceCommand;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State$ShowBalanceCommand;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;->showBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 181
    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State$ShowBalanceCommand;->apply(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;)V

    return-void
.end method
