.class public Lcom/smedialink/ui/wallet/staking/StakingView$$State$UpdateDashboardItemCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/StakingView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateDashboardItemCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/StakingView;",
        ">;"
    }
.end annotation


# instance fields
.field public final stakingDashboardItem:Lcom/smedialink/model/staking/StakingDashboardItem;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/StakingView$$State;Lcom/smedialink/model/staking/StakingDashboardItem;)V
    .locals 1

    .line 190
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "updateDashboardItem"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 192
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/StakingView$$State$UpdateDashboardItemCommand;->stakingDashboardItem:Lcom/smedialink/model/staking/StakingDashboardItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/StakingView;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/StakingView$$State$UpdateDashboardItemCommand;->stakingDashboardItem:Lcom/smedialink/model/staking/StakingDashboardItem;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/staking/StakingView;->updateDashboardItem(Lcom/smedialink/model/staking/StakingDashboardItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 186
    check-cast p1, Lcom/smedialink/ui/wallet/staking/StakingView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/StakingView$$State$UpdateDashboardItemCommand;->apply(Lcom/smedialink/ui/wallet/staking/StakingView;)V

    return-void
.end method
