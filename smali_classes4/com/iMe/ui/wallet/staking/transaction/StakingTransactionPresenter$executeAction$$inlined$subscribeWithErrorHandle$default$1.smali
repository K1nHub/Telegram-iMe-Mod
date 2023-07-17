.class public final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->executeAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingTransactionPresenter.kt\ncom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter\n*L\n1#1,111:1\n394#2,14:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    sget-object v2, Lcom/iMe/model/staking/StakingTransactionStep$Prepare;->INSTANCE:Lcom/iMe/model/staking/StakingTransactionStep$Prepare;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onActionSuccess$default(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;Lcom/iMe/model/staking/StakingTransactionStep;Lcom/iMe/ui/custom/FeeView$ChooseFeeType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getRxEventBus$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 116
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    .line 117
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getSuccessTitle(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingOperation;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getAmount()Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->getValue()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getSuccessMessage(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;D)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-interface {v0, v1, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showActionSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_2
    :goto_1
    return-void
.end method
