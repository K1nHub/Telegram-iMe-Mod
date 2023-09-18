.class public final Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->getLanguages(Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;",
        ">;>;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n+ 2 CatalogRepositoryImpl.kt\ncom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 5 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n44#2,2:87\n46#2,2:93\n48#2:99\n49#2:101\n1549#3:89\n1620#3,3:90\n1549#3:95\n1620#3,3:96\n18#4:100\n18#4:103\n7#5:102\n*S KotlinDebug\n*F\n+ 1 CatalogRepositoryImpl.kt\ncom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n*L\n45#1:89\n45#1:90,3\n47#1:95\n47#1:96,3\n48#1:100\n84#2:103\n84#2:102\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic this$0:Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;",
            ">;>;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    const-string v1, "just(this)"

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->access$getPreferenceHelper$p(Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/iMe/storage/domain/storage/PreferenceHelper;

    move-result-object v0

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->setCatalogLanguagesLastUpdateTime(J)V

    .line 88
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

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
    check-cast v3, Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;

    .line 88
    invoke-static {v3}, Lcom/iMe/storage/data/mapper/catalog/ChannelLanguageMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;)Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;

    move-result-object v3

    .line 1621
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;

    invoke-static {p1}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->access$getCatalogLanguageDao$p(Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    move-result-object p1

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;

    .line 94
    invoke-static {v4}, Lcom/iMe/storage/data/mapper/catalog/ChannelLanguageMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;)Lcom/iMe/storage/data/locale/db/model/catalog/CatalogLanguageDb;

    move-result-object v4

    .line 1621
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {p1, v3}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->rxInsert(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object p1

    .line 18
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "catalogLanguageDao\n     \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1$1;->INSTANCE:Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1$1;

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_2

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v3}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

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
    check-cast p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
