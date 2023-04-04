.class final Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingCalculatorPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->setupAmountListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/StatisticActivity$ChartViewData;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$2;->this$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 213
    check-cast p1, Lorg/telegram/ui/StatisticActivity$ChartViewData;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$2;->invoke(Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$2;->this$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->access$setChartViewData$p(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    .line 215
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$2;->this$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;->updateStakingCalculatorViews()V

    return-void
.end method
