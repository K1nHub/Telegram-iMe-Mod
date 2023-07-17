.class public final Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CatalogCategoriesPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogCategoriesPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogCategoriesPresenter.kt\ncom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,249:1\n288#2,2:250\n1549#2:252\n1620#2,3:253\n42#3,12:256\n42#3,12:268\n42#3,12:280\n26#4:292\n*S KotlinDebug\n*F\n+ 1 CatalogCategoriesPresenter.kt\ncom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter\n*L\n40#1:250,2\n69#1:252\n69#1:253,3\n88#1:256,12\n97#1:268,12\n126#1:280,12\n206#1:292\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final catalogInteractor:Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/common/FilterItem;",
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

.field private final channelsByCategories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;


# direct methods
.method public static synthetic $r8$lambda$c1kBCBPp_QT1i11OiGbN2zuamI8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadInitial$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/catalog/ChatType;Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/manager/TelegramApi;)V
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

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    .line 30
    iput-object p2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->catalogInteractor:Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;

    .line 31
    iput-object p3, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 32
    iput-object p4, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 33
    iput-object p5, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->channelsByCategories:Ljava/util/Map;

    .line 38
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categories:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCategoriesObservable(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Lcom/iMe/storage/domain/model/Result;Z)Lio/reactivex/Observable;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getCategoriesObservable(Lcom/iMe/storage/domain/model/Result;Z)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCategoryAll(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;)Lcom/iMe/model/common/FilterItem;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getCategoryAll()Lcom/iMe/model/common/FilterItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getChatType$p(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;)Lcom/iMe/storage/domain/model/catalog/ChatType;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    return-object p0
.end method

.method public static final synthetic access$processChannelsResult(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Lcom/iMe/storage/domain/model/Result;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->processChannelsResult(Lcom/iMe/storage/domain/model/Result;Z)V

    return-void
.end method

.method public static final synthetic access$setCategories$p(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Ljava/util/List;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categories:Ljava/util/List;

    return-void
.end method

.method private final getCategoriesObservable(Lcom/iMe/storage/domain/model/Result;Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;",
            ">;Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;",
            ">;>;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->catalogInteractor:Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;

    .line 204
    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-virtual {v0, v1, p2}, Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;->getCategories(Lcom/iMe/storage/domain/model/catalog/ChatType;Z)Lio/reactivex/Observable;

    move-result-object p2

    .line 205
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "catalogInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$getCategoriesObservable$$inlined$mapSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$getCategoriesObservable$$inlined$mapSuccess$1;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Lcom/iMe/storage/domain/model/Result;)V

    new-instance p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getCategoryAll()Lcom/iMe/model/common/FilterItem;
    .locals 5

    .line 237
    new-instance v0, Lcom/iMe/model/common/FilterItem;

    .line 239
    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->catalog_all:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    .line 237
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/iMe/model/common/FilterItem;-><init>(JLjava/lang/String;Z)V

    return-object v0
.end method

.method private final getChannelsObservable()Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;",
            ">;>;"
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getSelectedCategoryId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->catalogInteractor:Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;

    .line 218
    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    .line 219
    iget-object v2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getSelectedCategoryId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;->getAllCampaigns(Lcom/iMe/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->catalogInteractor:Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;

    .line 224
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getSelectedCategoryId()J

    move-result-wide v1

    .line 225
    iget-object v3, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    .line 226
    iget-object v4, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getSelectedCategoryId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;->getCampaignsByCategoryId(JLcom/iMe/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final getNodesWithCategoriesFilter(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 232
    new-instance v1, Lcom/iMe/model/common/FiltersListItem;

    iget-object v2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categories:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iMe/model/common/FiltersListItem;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 231
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 234
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private final getSelectedCategoryId()J
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categories:Ljava/util/List;

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/model/common/FilterItem;

    .line 40
    invoke-virtual {v2}, Lcom/iMe/model/common/FilterItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/iMe/model/common/FilterItem;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iMe/model/common/FilterItem;->getId()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method private final loadInitial(Z)V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->catalogInteractor:Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;

    .line 121
    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    .line 122
    iget-object v2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getSelectedCategoryId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/catalog/CatalogInteractor;->getAllCampaigns(Lcom/iMe/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadInitial$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadInitial$1;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Z)V

    new-instance p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "private fun loadInitial(\u2026     .autoDispose()\n    }"

    .line 124
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadInitial$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadInitial$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadInitial$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadInitial$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 127
    invoke-static {p0, p1, v2, v0, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadInitial$default(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadInitial(Z)V

    return-void
.end method

.method private static final loadInitial$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final onChannelsLoading(Z)V
    .locals 3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const/4 v0, 0x0

    .line 174
    new-instance v1, Lcom/iMe/model/common/GlobalStateItem;

    sget-object v2, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-direct {v1, v2}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    aput-object v1, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 175
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 176
    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getNodesWithCategoriesFilter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 175
    :goto_0
    invoke-interface {v0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;->renderNodes(Ljava/util/List;)V

    .line 179
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    :cond_1
    return-void
.end method

.method private final onChannelsLoadingError(Lcom/iMe/storage/data/network/model/error/ErrorModel;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 185
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-interface {p2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    .line 186
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 190
    new-instance v0, Lcom/iMe/model/common/GlobalStateItem;

    .line 191
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    goto :goto_0

    .line 192
    :cond_1
    sget-object p1, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    .line 190
    :goto_0
    invoke-direct {v0, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    .line 189
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getNodesWithCategoriesFilter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 188
    invoke-interface {p2, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;->renderNodes(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private final onChannelsLoadingSuccess(Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;Z)V
    .locals 4

    .line 140
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/catalog/CatalogCampaignsUiMappingKt;->mapToUi(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;->getMeta()Lcom/iMe/storage/domain/model/catalog/CursorMeta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/catalog/CursorMeta;->getNextCursor()Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getSelectedCategoryId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 144
    invoke-direct {p0, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->onLoadMoreChannels(Ljava/util/List;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const/4 v1, 0x0

    new-instance v2, Lcom/iMe/model/common/GlobalStateItem;

    sget-object v3, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-direct {v2, v3}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;->renderNodes(Ljava/util/List;)V

    .line 147
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-interface {p2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_0

    .line 150
    :cond_1
    iget-object p2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->channelsByCategories:Ljava/util/Map;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getSelectedCategoryId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-direct {p0, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getNodesWithCategoriesFilter(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;->renderNodes(Ljava/util/List;)V

    :goto_0
    if-nez p1, :cond_2

    .line 155
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    :goto_1
    return-void
.end method

.method private final onLoadMoreChannels(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/catalog/CampaignItem;",
            ">;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->channelsByCategories:Ljava/util/Map;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getSelectedCategoryId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_1

    .line 168
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getNodesWithCategoriesFilter(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreItems(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private final processChannelsResult(Lcom/iMe/storage/domain/model/Result;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;",
            ">;Z)V"
        }
    .end annotation

    .line 132
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;

    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->onChannelsLoadingSuccess(Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;Z)V

    goto :goto_0

    .line 133
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->onChannelsLoading(Z)V

    goto :goto_0

    .line 134
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->onChannelsLoadingError(Lcom/iMe/storage/data/network/model/error/ErrorModel;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic reloadAll$default(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->reloadAll(Z)V

    return-void
.end method

.method public static synthetic reloadChannels$default(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 50
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->reloadChannels(ZZ)V

    return-void
.end method


# virtual methods
.method public final loadChannels(Z)V
    .locals 4

    .line 86
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getChannelsObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "getChannelsObservable()\n\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 89
    invoke-static {p0, p1, v2, v0, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onCategorySelected(J)V
    .locals 12

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getSelectedCategoryId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-interface {v0}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    .line 68
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->clearSubscriptions()V

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categories:Ljava/util/List;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    move-object v5, v2

    check-cast v5, Lcom/iMe/model/common/FilterItem;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 70
    invoke-virtual {v5}, Lcom/iMe/model/common/FilterItem;->getId()J

    move-result-wide v9

    cmp-long v2, v9, p1

    if-nez v2, :cond_1

    move v9, v3

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/iMe/model/common/FilterItem;->copy$default(Lcom/iMe/model/common/FilterItem;JLjava/lang/String;ZILjava/lang/Object;)Lcom/iMe/model/common/FilterItem;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_2
    iput-object v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categories:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->channelsByCategories:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 73
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getNodesWithCategoriesFilter(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;->renderNodes(Ljava/util/List;)V

    if-eqz v0, :cond_5

    .line 74
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 75
    invoke-virtual {p0, v4}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadChannels(Z)V

    goto :goto_4

    .line 77
    :cond_6
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 78
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    goto :goto_4

    .line 80
    :cond_7
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    :goto_4
    return-void
.end method

.method public final onChannelClick(Lcom/iMe/model/catalog/CampaignItem;)V
    .locals 5

    const-string v0, "campaign"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 94
    invoke-virtual {p1}, Lcom/iMe/model/catalog/CampaignItem;->getShortname()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/manager/TelegramApi;->getChatInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "telegramApi\n            \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Lcom/iMe/model/catalog/CampaignItem;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v4}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-static {p0, v0, v1, v2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadInitial$default(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;ZILjava/lang/Object;)V

    return-void
.end method

.method public final reloadAll(Z)V
    .locals 1

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categories:Ljava/util/List;

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->reloadChannels(ZZ)V

    return-void
.end method

.method public final reloadChannels(ZZ)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    new-instance v0, Lcom/iMe/model/common/GlobalStateItem;

    sget-object v2, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-direct {v0, v2}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    aput-object v0, p2, v1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;->renderNodes(Ljava/util/List;)V

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->clearSubscriptions()V

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->channelsByCategories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 57
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->categoriesChannelsCursors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_1

    .line 59
    invoke-direct {p0, p2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadInitial(Z)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0, v1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadChannels(Z)V

    :goto_0
    return-void
.end method
