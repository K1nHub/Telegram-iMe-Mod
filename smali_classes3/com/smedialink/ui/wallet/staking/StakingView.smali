.class public interface abstract Lcom/smedialink/ui/wallet/staking/StakingView;
.super Ljava/lang/Object;
.source "StakingView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/base/mvp/SwipeRefreshView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onSetupNavigationRouter()V
.end method

.method public abstract onTabSelected(I)V
.end method

.method public abstract showStakingInfoHint()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract updateDashboardItem(Lcom/smedialink/model/staking/StakingDashboardItem;)V
.end method
