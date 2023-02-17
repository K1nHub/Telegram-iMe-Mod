.class public final Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;
.super Ljava/lang/Object;
.source "CatalogRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/catalog/CatalogRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogRepositoryImpl.kt\ncom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,126:1\n82#2:127\n82#2:130\n70#2:132\n70#2:134\n70#2:136\n26#3:128\n26#3:129\n26#3:131\n26#3:133\n26#3:135\n26#3:137\n18#3:143\n1547#4:138\n1618#4,3:139\n1547#4:144\n1618#4,3:145\n8#5:142\n8#5:148\n*S KotlinDebug\n*F\n+ 1 CatalogRepositoryImpl.kt\ncom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl\n*L\n33#1:127\n61#1:130\n95#1:132\n108#1:134\n123#1:136\n41#1:128\n50#1:129\n82#1:131\n96#1:133\n109#1:135\n124#1:137\n48#1:143\n48#1:138\n48#1:139,3\n78#1:144\n78#1:145,3\n48#1:142\n78#1:148\n*E\n"
.end annotation


# instance fields
.field private final catalogApi:Lcom/smedialink/storage/data/network/api/own/CatalogApi;

.field private final catalogCategoryDao:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

.field private final catalogLanguageDao:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public static synthetic $r8$lambda$8jUvRKr1jXMnbnJvM5Y7xZe6otA(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->getLanguages$lambda-4(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$al2jJyWvjO9AJLvbPfQyS-jvGiA(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->getCategories$lambda-9(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/CatalogApi;Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/domain/storage/PreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "catalogApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "catalogCategoryDao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "catalogLanguageDao"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/smedialink/storage/data/network/api/own/CatalogApi;

    .line 21
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogCategoryDao:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    .line 22
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogLanguageDao:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    .line 23
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 24
    iput-object p5, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 25
    iput-object p6, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    .line 26
    iput-object p7, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getCatalogCategoryDao$p(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogCategoryDao:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    return-object p0
.end method

.method public static final synthetic access$getCatalogLanguageDao$p(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogLanguageDao:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    return-object p0
.end method

.method public static final synthetic access$getPreferenceHelper$p(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/smedialink/storage/domain/storage/PreferenceHelper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method private static final getCategories$lambda-9(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;
    .locals 2

    const-string v0, "categories"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogCategoryDb;

    .line 78
    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/catalog/ChannelCategoryMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogCategoryDb;)Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p0, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final getLanguages$lambda-4(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->getLanguages(Z)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    goto :goto_1

    .line 1547
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1619
    check-cast v0, Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;

    .line 48
    invoke-static {v0}, Lcom/smedialink/storage/data/mapper/catalog/ChannelLanguageMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;)Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "just(this)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public getAllCampaigns(Lcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;",
            ">;>;"
        }
    .end annotation

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/smedialink/storage/data/network/api/own/CatalogApi;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getCatalogSelectedLanguageId()Ljava/lang/Long;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p2

    .line 103
    invoke-static/range {v1 .. v7}, Lcom/smedialink/storage/data/network/api/own/CatalogApi$DefaultImpls;->getAllCampaigns$default(Lcom/smedialink/storage/data/network/api/own/CatalogApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getAllCampaigns$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getAllCampaigns$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCampaignsByCategoryId(JLcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/smedialink/storage/domain/model/catalog/ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;",
            ">;>;"
        }
    .end annotation

    const-string v0, "chatType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/smedialink/storage/data/network/api/own/CatalogApi;

    .line 119
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 121
    iget-object p3, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {p3}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getCatalogSelectedLanguageId()Ljava/lang/Long;

    move-result-object v7

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-wide v2, p1

    move-object v5, p4

    .line 117
    invoke-static/range {v1 .. v9}, Lcom/smedialink/storage/data/network/api/own/CatalogApi$DefaultImpls;->getCampaignsByCategoryId$default(Lcom/smedialink/storage/data/network/api/own/CatalogApi;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 123
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCampaignsByCategoryId$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCampaignsByCategoryId$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCatalogPreview(Lcom/smedialink/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;",
            ">;>;"
        }
    .end annotation

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/smedialink/storage/data/network/api/own/CatalogApi;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 93
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getCatalogSelectedLanguageId()Ljava/lang/Long;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v3, p2

    .line 90
    invoke-static/range {v1 .. v8}, Lcom/smedialink/storage/data/network/api/own/CatalogApi$DefaultImpls;->getCatalogPreview$default(Lcom/smedialink/storage/data/network/api/own/CatalogApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCatalogPreview$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCatalogPreview$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCategories(Lcom/smedialink/storage/domain/model/catalog/ChatType;Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/ChatType;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/smedialink/storage/data/network/api/own/CatalogApi;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getCatalogSelectedLanguageId()Ljava/lang/Long;

    move-result-object v1

    .line 56
    invoke-interface {v0, p1, v1}, Lcom/smedialink/storage/data/network/api/own/CatalogApi;->getCategories(Ljava/lang/String;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "catalogApi\n             \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance v1, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;

    invoke-direct {v1, v0, p0}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogCategoryDao:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    .line 74
    invoke-virtual {p2}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;->getCategories()Lio/reactivex/Single;

    move-result-object p2

    .line 75
    invoke-virtual {p2}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p2

    .line 76
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    sget-object v0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda1;

    .line 77
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 72
    invoke-static {p2, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "{\n            Observable\u2026e\n            )\n        }"

    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    :goto_0
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getLanguages(Z)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;",
            ">;>;>;"
        }
    .end annotation

    .line 30
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getCatalogLanguagesLastUpdateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->isDayAgo(J)Z

    move-result p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/smedialink/storage/data/network/api/own/CatalogApi;

    .line 32
    invoke-interface {p1}, Lcom/smedialink/storage/data/network/api/own/CatalogApi;->getLanguages()Lio/reactivex/Observable;

    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance v2, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;

    invoke-direct {v2, v1, p0}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v1, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogLanguageDao:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    .line 44
    invoke-virtual {p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;->getLanguages()Lio/reactivex/Single;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    .line 46
    new-instance v1, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v1, "catalogLanguageDao\n     \u2026                        }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
