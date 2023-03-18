.class public final Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "CatalogAllPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogAllPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogAllPresenter.kt\ncom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,192:1\n39#2,8:193\n39#2,8:201\n39#2,8:209\n1179#3,2:217\n1253#3,4:219\n215#4,2:223\n*S KotlinDebug\n*F\n+ 1 CatalogAllPresenter.kt\ncom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter\n*L\n55#1:193,8\n101#1:201,8\n145#1:209,8\n175#1:217,2\n175#1:219,4\n184#1:223,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final catalogInteractor:Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;

.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;",
            ">;"
        }
    .end annotation
.end field

.field private final categoriesChannelsCursors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoriesCursor:Ljava/lang/String;

.field private final chatType:Lcom/smedialink/storage/domain/model/catalog/ChatType;

.field private final loadMoreChannelsSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramApi:Lcom/smedialink/manager/TelegramApi;


# direct methods
.method public static synthetic $r8$lambda$BJ4hmsT9BWkxvzveKzn8FxOyPNk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->subscribeToLoadMoreEvents$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DCtBRWIDnF8ldTAwgeoo6H-WBQY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->subscribeToLoadMoreEvents$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ix1WYNTnpSAgovh3ML696j3cEXc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->subscribeToLoadMoreEvents$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/model/catalog/ChatType;Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/manager/TelegramApi;)V
    .locals 1

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "catalogInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramApi"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->chatType:Lcom/smedialink/storage/domain/model/catalog/ChatType;

    .line 27
    iput-object p2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->catalogInteractor:Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;

    .line 28
    iput-object p3, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 29
    iput-object p4, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 30
    iput-object p5, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->telegramApi:Lcom/smedialink/manager/TelegramApi;

    .line 34
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->loadMoreChannelsSubject:Lio/reactivex/subjects/PublishSubject;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categories:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getCategories$p(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categories:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCategoriesChannelsCursors$p(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getCategoriesCursor$p(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categoriesCursor:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getChatType$p(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)Lcom/smedialink/storage/domain/model/catalog/ChatType;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->chatType:Lcom/smedialink/storage/domain/model/catalog/ChatType;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$loadMoreChannels(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;JLjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->loadMoreChannels(JLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$mapNewDataToUiItems(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;)Ljava/util/List;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->mapNewDataToUiItems(Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final loadMoreChannels(JLjava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->catalogInteractor:Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;

    .line 141
    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->chatType:Lcom/smedialink/storage/domain/model/catalog/ChatType;

    .line 139
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->getCampaignsByCategoryId(JLcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p3

    .line 144
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    const-string v0, "catalogInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;J)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p3, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 169
    invoke-static {p0, p1, v0, p2, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final mapNewDataToUiItems(Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;",
            ")",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;->getMeta()Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/catalog/CursorMeta;->getNextCursor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categoriesCursor:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categories:Ljava/util/List;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categories:Ljava/util/List;

    const/16 v0, 0xa

    .line 1179
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1180
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1254
    check-cast v0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;

    .line 177
    new-instance v2, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

    .line 178
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->getCategory()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    move-result-object v3

    .line 179
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/smedialink/mapper/catalog/CatalogCampaignsUiMappingKt;->mapToUi(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 180
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->getMeta()Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/catalog/CursorMeta;->getNextCursor()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 177
    :goto_1
    invoke-direct {v2, v3, v4, v5}, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;-><init>(Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Z)V

    .line 181
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->getMeta()Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/catalog/CursorMeta;->getNextCursor()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    iget-object v2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

    invoke-virtual {v3}, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;->getCategory()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 187
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final subscribeToLoadMoreEvents()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->loadMoreChannelsSubject:Lio/reactivex/subjects/PublishSubject;

    .line 127
    invoke-virtual {v0}, Lio/reactivex/Observable;->hide()Lio/reactivex/Observable;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$1;->INSTANCE:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$1;

    new-instance v2, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->groupBy(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$2;->INSTANCE:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$2;

    new-instance v2, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$3;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$subscribeToLoadMoreEvents$3;-><init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)V

    new-instance v2, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "private fun subscribeToL\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 134
    invoke-static {p0, v0, v1, v2, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToLoadMoreEvents$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final subscribeToLoadMoreEvents$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Observable;

    return-object p0
.end method

.method private static final subscribeToLoadMoreEvents$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final loadCategoriesPreviews()V
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categoriesCursor:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->catalogInteractor:Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;

    .line 53
    iget-object v4, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->chatType:Lcom/smedialink/storage/domain/model/catalog/ChatType;

    invoke-virtual {v3, v4, v0}, Lcom/smedialink/storage/domain/interactor/catalog/CatalogInteractor;->getCatalogPreview(Lcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 54
    iget-object v3, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v3, "catalogInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, v2}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;Z)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v5, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v5, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p0, v0, v4, v1, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onChannelClick(Lcom/smedialink/model/catalog/CampaignItem;)V
    .locals 5

    const-string v0, "campaign"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->telegramApi:Lcom/smedialink/manager/TelegramApi;

    .line 98
    invoke-virtual {p1}, Lcom/smedialink/model/catalog/CampaignItem;->getShortname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/manager/TelegramApi;->getChatInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "telegramApi\n            \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;Lcom/smedialink/model/catalog/CampaignItem;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v4}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onChannelLoadMore(J)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    invoke-interface {v0, p1, p2}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;->onNestedLoadMoreComplete(J)V

    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->loadMoreChannelsSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->subscribeToLoadMoreEvents()V

    .line 116
    invoke-virtual {p0}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->loadCategoriesPreviews()V

    return-void
.end method

.method public final reloadCategories()V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->clearSubscriptions()V

    .line 43
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->categoriesCursor:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->subscribeToLoadMoreEvents()V

    .line 47
    invoke-virtual {p0}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->loadCategoriesPreviews()V

    return-void
.end method
