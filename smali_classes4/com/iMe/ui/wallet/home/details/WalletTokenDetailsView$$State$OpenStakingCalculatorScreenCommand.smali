.class public Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenStakingCalculatorScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    .line 767
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openStakingCalculatorScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 769
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openStakingCalculatorScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 763
    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand;->apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V

    return-void
.end method
