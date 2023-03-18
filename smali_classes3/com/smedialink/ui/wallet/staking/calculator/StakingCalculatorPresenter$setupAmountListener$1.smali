.class final Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingCalculatorPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->setupAmountListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Double;",
        "Lorg/telegram/ui/StatisticActivity$ChartViewData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 207
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$1;->invoke(Ljava/lang/Double;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Double;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 3

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->access$setSelectedAmount$p(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;D)V

    .line 209
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->access$mapProfitPrognosis(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p1

    return-object p1
.end method
