.class public Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenStakingDetailsScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingProgrammesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenStakingDetailsScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    .line 232
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openStakingDetailsScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 234
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenStakingDetailsScreenCommand;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenStakingDetailsScreenCommand;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->openStakingDetailsScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 228
    check-cast p1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenStakingDetailsScreenCommand;->apply(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;)V

    return-void
.end method
