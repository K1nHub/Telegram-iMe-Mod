.class public final Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->loadStakingProgrammes(ZZ)V
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
        "Lcom/iMe/storage/domain/model/staking/StakingProgrammes;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingCalculatorProgrammesPresenter.kt\ncom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter\n*L\n1#1,132:1\n50#2,32:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $isInitialLoad$inlined:Z

.field final synthetic $isLoadMore$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    iput-boolean p3, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammes;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_3

    .line 135
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->getProgrammes()Ljava/util/List;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$setLastItemId$p(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Ljava/lang/Long;)V

    .line 137
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-nez p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$Staking;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Staking;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Lcom/iMe/model/state/GlobalState;)V

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_1

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$getStakingProgrammes$p(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$getItems$p(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/iMe/mapper/staking/StakingMetadataUiMappingKt;->mapToUi(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$getItems$p(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;->renderItems(Ljava/util/List;)V

    goto :goto_1

    .line 149
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_4

    iget-boolean p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz p1, :cond_7

    .line 150
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_1

    .line 153
    :cond_4
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_7

    .line 154
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_1

    .line 155
    :cond_5
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    .line 156
    sget-object v0, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    .line 155
    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_1

    .line 159
    :cond_6
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Lcom/iMe/model/state/GlobalState;)V

    :cond_7
    :goto_1
    return-void
.end method
