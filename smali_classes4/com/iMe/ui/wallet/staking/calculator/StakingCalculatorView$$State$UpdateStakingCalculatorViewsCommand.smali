.class public Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State$UpdateStakingCalculatorViewsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingCalculatorView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateStakingCalculatorViewsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State;)V
    .locals 1

    .line 163
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "updateStakingCalculatorViews"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;)V
    .locals 0

    .line 168
    invoke-interface {p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;->updateStakingCalculatorViews()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 161
    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State$UpdateStakingCalculatorViewsCommand;->apply(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;)V

    return-void
.end method
