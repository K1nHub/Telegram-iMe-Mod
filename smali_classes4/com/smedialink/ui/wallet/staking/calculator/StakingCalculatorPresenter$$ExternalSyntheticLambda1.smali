.class public final synthetic Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    check-cast p1, Ljava/lang/Double;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->$r8$lambda$WxhMUz_roqlT-e5Ntryeqo5-Q54(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Ljava/lang/Double;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p1

    return-object p1
.end method
