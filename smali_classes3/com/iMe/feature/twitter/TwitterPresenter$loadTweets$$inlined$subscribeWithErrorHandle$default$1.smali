.class public final Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/twitter/TwitterPresenter;->loadTweets(ZZ)V
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
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/twitter/TweetInfo;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 TwitterPresenter.kt\ncom/iMe/feature/twitter/TwitterPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,111:1\n71#2,15:112\n86#2:141\n87#2,2:143\n89#2:149\n90#2,21:151\n1477#3:127\n1502#3,3:128\n1505#3,3:138\n1549#3:145\n1620#3,3:146\n361#4,7:131\n215#5:142\n216#5:150\n*S KotlinDebug\n*F\n+ 1 TwitterPresenter.kt\ncom/iMe/feature/twitter/TwitterPresenter\n*L\n85#1:127\n85#1:128,3\n85#1:138,3\n88#1:145\n88#1:146,3\n85#1:131,7\n86#1:142\n86#1:150\n*E\n"
.end annotation


# instance fields
.field final synthetic $isInitialLoad$inlined:Z

.field final synthetic $isLoadMore$inlined:Z

.field final synthetic this$0:Lcom/iMe/feature/twitter/TwitterPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/feature/twitter/TwitterPresenter;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    iput-boolean p2, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    iput-boolean p3, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/twitter/TweetInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/twitter/TwitterView;

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    .line 115
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$setLastItemId$p(Lcom/iMe/feature/twitter/TwitterPresenter;Ljava/lang/Long;)V

    .line 116
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-boolean p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-nez p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$Twitter;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Twitter;

    invoke-static {p1, v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$renderGlobalState(Lcom/iMe/feature/twitter/TwitterPresenter;Lcom/iMe/model/state/GlobalState;)V

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/twitter/TwitterView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto/16 :goto_4

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-static {v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$getItems$p(Lcom/iMe/feature/twitter/TwitterPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-static {v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$getTweets$p(Lcom/iMe/feature/twitter/TwitterPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-static {p1}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$getTweets$p(Lcom/iMe/feature/twitter/TwitterPresenter;)Ljava/util/List;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 1477
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1502
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1503
    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    .line 126
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getCreatedAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1504
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_3
    check-cast v3, Ljava/util/List;

    .line 1505
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 143
    iget-object v2, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-static {v2}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$getItems$p(Lcom/iMe/feature/twitter/TwitterPresenter;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/iMe/model/twitter/TweetsDateItem;

    const-string v4, "date"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Lcom/iMe/model/twitter/TweetsDateItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-static {v1}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$getItems$p(Lcom/iMe/feature/twitter/TwitterPresenter;)Ljava/util/List;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    .line 144
    invoke-static {v3}, Lcom/iMe/mapper/twitter/TweetInfoUiMappingKt;->mapToUi(Lcom/iMe/storage/domain/model/twitter/TweetInfo;)Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 144
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 152
    :cond_6
    iget-boolean p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/twitter/TwitterView;

    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-static {v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$getItems$p(Lcom/iMe/feature/twitter/TwitterPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreItems(Ljava/util/List;)V

    goto/16 :goto_4

    .line 153
    :cond_7
    iget-boolean p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/twitter/TwitterView;

    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-static {v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$getItems$p(Lcom/iMe/feature/twitter/TwitterPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/feature/twitter/TwitterView;->renderInitialItems(Ljava/util/List;)V

    goto :goto_4

    .line 154
    :cond_8
    iget-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/twitter/TwitterView;

    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-static {v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$getItems$p(Lcom/iMe/feature/twitter/TwitterPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/feature/twitter/TwitterView;->renderItems(Ljava/util/List;)V

    goto :goto_4

    .line 158
    :cond_9
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_a

    iget-boolean p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz p1, :cond_d

    .line 159
    iget-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-static {p1, v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$renderGlobalState(Lcom/iMe/feature/twitter/TwitterPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_4

    .line 161
    :cond_a
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_d

    .line 162
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/twitter/TwitterView;

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    .line 164
    iget-boolean v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/twitter/TwitterView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_4

    .line 165
    :cond_b
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    invoke-static {p1, v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$renderGlobalState(Lcom/iMe/feature/twitter/TwitterPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_4

    .line 166
    :cond_c
    iget-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/TwitterPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    invoke-static {p1, v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->access$renderGlobalState(Lcom/iMe/feature/twitter/TwitterPresenter;Lcom/iMe/model/state/GlobalState;)V

    :cond_d
    :goto_4
    return-void
.end method
