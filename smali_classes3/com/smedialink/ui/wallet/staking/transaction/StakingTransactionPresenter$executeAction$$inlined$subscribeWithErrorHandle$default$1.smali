.class public final Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->executeAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingTransactionPresenter.kt\ncom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter\n*L\n1#1,111:1\n363#2,12:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_3

    .line 114
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    sget-object v2, Lcom/smedialink/model/staking/StakingTransactionStep$Prepare;->INSTANCE:Lcom/smedialink/model/staking/StakingTransactionStep$Prepare;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->onActionSuccess$default(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/model/staking/StakingTransactionStep;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getRxEventBus$p(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    .line 116
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    .line 117
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getSuccessTitle(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->getAmount()Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;->getValue()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getSuccessMessage(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;D)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-interface {v0, v1, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showActionSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_3
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$showCommonErrorToast(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V

    :cond_4
    :goto_1
    return-void
.end method
