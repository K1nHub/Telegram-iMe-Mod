.class final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingTransactionPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->subscribeToAmountSubject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 499
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "it"

    .line 500
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->toBigDecimalOrNull(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getTokenBalance$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v3

    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 502
    :goto_1
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {v3}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    iget-object v4, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v4, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getCompoundThresholdProgress(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Ljava/math/BigDecimal;)F

    move-result v4

    invoke-interface {v3, v4}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateProgress(F)V

    .line 503
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v3, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$showAmountError(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Z)V

    .line 506
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getCurrentAmount$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 515
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setCurrentAmount$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Ljava/math/BigDecimal;)V

    .line 516
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getTokenBalance$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v1

    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    .line 517
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    cmpg-double v0, v3, v1

    if-gtz v0, :cond_4

    .line 518
    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$prepareAction(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    goto :goto_3

    .line 507
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    new-instance v1, Lcom/iMe/model/staking/TransactionStep$Idle;

    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getScreenType$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/model/wallet/staking/StakingScreenType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/model/wallet/staking/StakingScreenType;->getButtonTextId()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/iMe/model/staking/TransactionStep$Idle;-><init>(I)V

    invoke-static {p1, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setCurrentStep(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/TransactionStep;)V

    .line 508
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-interface {p1, v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateFeeView(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    .line 509
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$setCurrentAmount$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Ljava/math/BigDecimal;)V

    .line 524
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getScreenType$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/model/wallet/staking/StakingScreenType;

    move-result-object p1

    sget-object v0, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_WITHDRAW_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    if-ne p1, v0, :cond_5

    .line 525
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$subscribeToAmountSubject$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$updateWithdrawalFee(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V

    :cond_5
    return-void
.end method
