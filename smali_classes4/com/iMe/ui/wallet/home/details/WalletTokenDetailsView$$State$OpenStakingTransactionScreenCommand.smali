.class public Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingTransactionScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenStakingTransactionScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

.field public final stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/model/wallet/staking/StakingScreenType;)V
    .locals 1

    .line 751
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openStakingTransactionScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 753
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingTransactionScreenCommand;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 754
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingTransactionScreenCommand;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingTransactionScreenCommand;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingTransactionScreenCommand;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openStakingTransactionScreen(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/model/wallet/staking/StakingScreenType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 744
    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingTransactionScreenCommand;->apply(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;)V

    return-void
.end method
