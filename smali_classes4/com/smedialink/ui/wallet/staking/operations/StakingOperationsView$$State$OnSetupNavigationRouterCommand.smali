.class public Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView$$State$OnSetupNavigationRouterCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingOperationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSetupNavigationRouterCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView$$State;)V
    .locals 1

    .line 165
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onSetupNavigationRouter"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;)V
    .locals 0

    .line 170
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;->onSetupNavigationRouter()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 163
    check-cast p1, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView$$State$OnSetupNavigationRouterCommand;->apply(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;)V

    return-void
.end method
