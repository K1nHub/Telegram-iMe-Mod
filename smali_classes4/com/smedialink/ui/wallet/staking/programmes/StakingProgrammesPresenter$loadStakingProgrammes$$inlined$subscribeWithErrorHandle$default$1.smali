.class public final Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes(ZZ)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingProgrammesPresenter.kt\ncom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter\n*L\n1#1,111:1\n67#2,37:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $isInitialLoad$inlined:Z

.field final synthetic $isLoadMore$inlined:Z

.field final synthetic $isReload$inlined:Z

.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;


# direct methods
.method public constructor <init>(ZLcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isReload$inlined:Z

    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    iput-boolean p3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    iput-boolean p4, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

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

    .line 112
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isReload$inlined:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$getRxEventBus$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    new-instance v1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;

    .line 114
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {v2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$getStakingTabType$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    move-result-object v2

    .line 115
    instance-of v3, p1, Lcom/smedialink/storage/domain/model/Result$Loading;

    .line 113
    invoke-direct {v1, v2, v3}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;-><init>(Lcom/smedialink/storage/domain/model/staking/StakingTabType;Z)V

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_5

    .line 120
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammes;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammes;->getProgrammes()Ljava/util/List;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$setLastItemId$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Ljava/lang/Long;)V

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 123
    iget-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-nez p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    new-array v0, v3, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    new-instance v1, Lcom/smedialink/model/common/GlobalStateItem;

    sget-object v3, Lcom/smedialink/model/state/GlobalState$Empty$Staking;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Staking;

    invoke-direct {v1, v3}, Lcom/smedialink/model/common/GlobalStateItem;-><init>(Lcom/smedialink/model/state/GlobalState;)V

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto/16 :goto_1

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$getItems$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$getItems$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    .line 130
    iget-object v5, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {v5}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->staking_programmes_count:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingProgrammes;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammes;->getTotal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {v5, v6, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 131
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_sort_28:I

    .line 129
    invoke-direct {v4, p1, v2}, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_4
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$getStakingProgrammes$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$getItems$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lcom/smedialink/mapper/staking/StakingMetadataUiMappingKt;->mapToUi(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$getItems$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    goto :goto_1

    .line 139
    :cond_5
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_6

    iget-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz p1, :cond_9

    .line 140
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    sget-object v0, Lcom/smedialink/model/state/GlobalState$Progress;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Progress;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/smedialink/model/state/GlobalState;)V

    goto :goto_1

    .line 142
    :cond_6
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_9

    .line 143
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_1

    .line 144
    :cond_7
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    sget-object v0, Lcom/smedialink/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/smedialink/model/state/GlobalState$NoInternet;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/smedialink/model/state/GlobalState;)V

    goto :goto_1

    .line 145
    :cond_8
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    sget-object v0, Lcom/smedialink/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Unexpected;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/smedialink/model/state/GlobalState;)V

    :cond_9
    :goto_1
    return-void
.end method
