.class public Lcom/iMe/ui/wallet/staking/StakingView$$State$UpdateDashboardItemCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/StakingView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateDashboardItemCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/StakingView;",
        ">;"
    }
.end annotation


# instance fields
.field public final stakingDashboardItem:Lcom/iMe/model/staking/StakingDashboardItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/StakingView$$State;Lcom/iMe/model/staking/StakingDashboardItem;)V
    .locals 1

    .line 224
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "updateDashboardItem"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 226
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/StakingView$$State$UpdateDashboardItemCommand;->stakingDashboardItem:Lcom/iMe/model/staking/StakingDashboardItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/StakingView;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingView$$State$UpdateDashboardItemCommand;->stakingDashboardItem:Lcom/iMe/model/staking/StakingDashboardItem;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/StakingView;->updateDashboardItem(Lcom/iMe/model/staking/StakingDashboardItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 220
    check-cast p1, Lcom/iMe/ui/wallet/staking/StakingView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/StakingView$$State$UpdateDashboardItemCommand;->apply(Lcom/iMe/ui/wallet/staking/StakingView;)V

    return-void
.end method
