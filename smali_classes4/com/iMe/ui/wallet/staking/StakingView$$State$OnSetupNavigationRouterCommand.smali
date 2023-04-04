.class public Lcom/iMe/ui/wallet/staking/StakingView$$State$OnSetupNavigationRouterCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/StakingView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSetupNavigationRouterCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/StakingView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/StakingView$$State;)V
    .locals 1

    .line 177
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onSetupNavigationRouter"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/StakingView;)V
    .locals 0

    .line 182
    invoke-interface {p1}, Lcom/iMe/ui/wallet/staking/StakingView;->onSetupNavigationRouter()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 175
    check-cast p1, Lcom/iMe/ui/wallet/staking/StakingView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/StakingView$$State$OnSetupNavigationRouterCommand;->apply(Lcom/iMe/ui/wallet/staking/StakingView;)V

    return-void
.end method
