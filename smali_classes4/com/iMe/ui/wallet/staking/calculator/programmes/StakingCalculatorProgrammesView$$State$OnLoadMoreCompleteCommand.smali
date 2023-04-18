.class public Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State$OnLoadMoreCompleteCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingCalculatorProgrammesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadMoreCompleteCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State;)V
    .locals 1

    .line 364
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onLoadMoreComplete"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;)V
    .locals 0

    .line 369
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 362
    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView$$State$OnLoadMoreCompleteCommand;->apply(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;)V

    return-void
.end method
