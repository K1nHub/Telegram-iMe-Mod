.class public final Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->loadStakingProgrammes(ZZ)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingCalculatorProgrammesPresenter.kt\ncom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter\n*L\n1#1,111:1\n51#2,25:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $isInitialLoad$inlined:Z

.field final synthetic $isLoadMore$inlined:Z

.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    iput-boolean p3, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3
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
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingProgrammes;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammes;->getProgrammes()Ljava/util/List;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$setLastItemId$p(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Ljava/lang/Long;)V

    .line 116
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-nez p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    sget-object v0, Lcom/smedialink/model/state/GlobalState$Empty$Staking;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Staking;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Lcom/smedialink/model/state/GlobalState;)V

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_1

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$getStakingProgrammes$p(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$getItems$p(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/smedialink/mapper/staking/StakingMetadataUiMappingKt;->mapToUi(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$getItems$p(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;->renderItems(Ljava/util/List;)V

    goto :goto_1

    .line 127
    :cond_3
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_4

    iget-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz p1, :cond_7

    .line 128
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    sget-object v0, Lcom/smedialink/model/state/GlobalState$Progress;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Progress;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Lcom/smedialink/model/state/GlobalState;)V

    goto :goto_1

    .line 130
    :cond_4
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_7

    .line 131
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_1

    .line 132
    :cond_5
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    sget-object v0, Lcom/smedialink/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/smedialink/model/state/GlobalState$NoInternet;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Lcom/smedialink/model/state/GlobalState;)V

    goto :goto_1

    .line 133
    :cond_6
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    sget-object v0, Lcom/smedialink/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Unexpected;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Lcom/smedialink/model/state/GlobalState;)V

    :cond_7
    :goto_1
    return-void
.end method
