.class public Lcom/iMe/ui/wallet/staking/StakingView$$State$ShowStakingInfoHintCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/StakingView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowStakingInfoHintCommand"
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

    .line 237
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showStakingInfoHint"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/StakingView;)V
    .locals 0

    .line 242
    invoke-interface {p1}, Lcom/iMe/ui/wallet/staking/StakingView;->showStakingInfoHint()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 235
    check-cast p1, Lcom/iMe/ui/wallet/staking/StakingView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/StakingView$$State$ShowStakingInfoHintCommand;->apply(Lcom/iMe/ui/wallet/staking/StakingView;)V

    return-void
.end method
