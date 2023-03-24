.class public final Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->getCategories(Lcom/smedialink/storage/domain/model/catalog/ChatType;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/data/network/model/response/catalog/CategoryWithCounterResponse;",
        ">;>;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n+ 2 CatalogRepositoryImpl.kt\ncom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 5 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n63#2:87\n64#2,3:92\n67#2,2:99\n1549#3:88\n1620#3,3:89\n1549#3:95\n1620#3,3:96\n18#4:101\n18#4:103\n7#5:102\n*S KotlinDebug\n*F\n+ 1 CatalogRepositoryImpl.kt\ncom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n*L\n63#1:88\n63#1:89,3\n66#1:95\n66#1:96,3\n68#1:101\n84#2:103\n84#2:102\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic this$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/data/network/model/response/catalog/CategoryWithCounterResponse;",
            ">;>;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    const-string v1, "just(this)"

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/smedialink/storage/data/network/model/response/catalog/CategoryWithCounterResponse;

    .line 87
    invoke-static {v3}, Lcom/smedialink/storage/data/mapper/catalog/ChannelCategoryMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/CategoryWithCounterResponse;)Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;

    move-result-object v3

    .line 1621
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;

    invoke-static {p1}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->access$getCatalogCategoryDao$p(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;->rxDeleteCategories()Lio/reactivex/Completable;

    move-result-object p1

    .line 94
    iget-object v3, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;

    invoke-static {v3}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->access$getCatalogCategoryDao$p(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    move-result-object v3

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;

    .line 94
    invoke-static {v5}, Lcom/smedialink/storage/data/mapper/catalog/ChannelCategoryMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;)Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogCategoryDb;

    move-result-object v5

    .line 1621
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {v3, v4}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->rxInsert(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object p1

    .line 99
    iget-object v2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;

    invoke-static {v2}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->access$getSchedulersProvider$p(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    .line 18
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "catalogCategoryDao\n     \u2026ategories.toObservable())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1$1;->INSTANCE:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1$1;

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_2

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v3}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;->invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
