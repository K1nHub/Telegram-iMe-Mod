.class public final Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;
.super Ljava/lang/Object;
.source "CatalogRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/catalog/CatalogRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogRepositoryImpl.kt\ncom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,139:1\n82#2:140\n82#2:143\n70#2:145\n70#2:147\n70#2:149\n26#3:141\n26#3:142\n26#3:144\n26#3:146\n26#3:148\n26#3:150\n*S KotlinDebug\n*F\n+ 1 CatalogRepositoryImpl.kt\ncom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl\n*L\n43#1:140\n74#1:143\n108#1:145\n121#1:147\n136#1:149\n51#1:141\n60#1:142\n95#1:144\n109#1:146\n122#1:148\n137#1:150\n*E\n"
.end annotation


# instance fields
.field private final catalogApi:Lcom/iMe/storage/data/network/api/own/CatalogApi;

.field private final catalogCategoryDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

.field private final catalogLanguageDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public static synthetic $r8$lambda$2WHwgT4nqr1z9b1XqqadLhNxcIg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->getLanguages$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ax0jkGy0k2GSqHmEh_VryRnG9Qc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->getCategories$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/CatalogApi;Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/domain/storage/PreferenceHelper;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/iMe/storage/data/network/api/own/CatalogApi;

    .line 31
    iput-object p2, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogCategoryDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    .line 32
    iput-object p3, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogLanguageDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    .line 33
    iput-object p4, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 34
    iput-object p5, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 35
    iput-object p6, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    .line 36
    iput-object p7, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getCatalogCategoryDao$p(Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogCategoryDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    return-object p0
.end method

.method public static final synthetic access$getCatalogLanguageDao$p(Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogLanguageDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    return-object p0
.end method

.method public static final synthetic access$getPreferenceHelper$p(Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/iMe/storage/domain/storage/PreferenceHelper;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method private static final getCategories$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private static final getLanguages$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public getAllCampaigns(Lcom/iMe/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/catalog/ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;",
            ">;>;"
        }
    .end annotation

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/iMe/storage/data/network/api/own/CatalogApi;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object p1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->getCatalogSelectedLanguageId()Ljava/lang/Long;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p2

    .line 116
    invoke-static/range {v1 .. v7}, Lcom/iMe/storage/data/network/api/own/CatalogApi$-CC;->getAllCampaigns$default(Lcom/iMe/storage/data/network/api/own/CatalogApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getAllCampaigns$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getAllCampaigns$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getAllCampaigns$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getAllCampaigns$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCampaignsByCategoryId(JLcom/iMe/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/iMe/storage/domain/model/catalog/ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;",
            ">;>;"
        }
    .end annotation

    const-string v0, "chatType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/iMe/storage/data/network/api/own/CatalogApi;

    .line 132
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 134
    iget-object p3, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-interface {p3}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->getCatalogSelectedLanguageId()Ljava/lang/Long;

    move-result-object v7

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-wide v2, p1

    move-object v5, p4

    .line 130
    invoke-static/range {v1 .. v9}, Lcom/iMe/storage/data/network/api/own/CatalogApi$-CC;->getCampaignsByCategoryId$default(Lcom/iMe/storage/data/network/api/own/CatalogApi;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCampaignsByCategoryId$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCampaignsByCategoryId$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCampaignsByCategoryId$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCampaignsByCategoryId$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCatalogPreview(Lcom/iMe/storage/domain/model/catalog/ChatType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/catalog/ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/catalog/CategoriesPreviewsCursored;",
            ">;>;"
        }
    .end annotation

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/iMe/storage/data/network/api/own/CatalogApi;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object p1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->getCatalogSelectedLanguageId()Ljava/lang/Long;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v3, p2

    .line 103
    invoke-static/range {v1 .. v8}, Lcom/iMe/storage/data/network/api/own/CatalogApi$-CC;->getCatalogPreview$default(Lcom/iMe/storage/data/network/api/own/CatalogApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCatalogPreview$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCatalogPreview$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCatalogPreview$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCatalogPreview$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCategories(Lcom/iMe/storage/domain/model/catalog/ChatType;Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/catalog/ChatType;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/iMe/storage/data/network/api/own/CatalogApi;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->getCatalogSelectedLanguageId()Ljava/lang/Long;

    move-result-object v1

    .line 69
    invoke-interface {v0, p1, v1}, Lcom/iMe/storage/data/network/api/own/CatalogApi;->getCategories(Ljava/lang/String;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "catalogApi\n            .\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance v1, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;

    invoke-direct {v1, v0, p0}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogCategoryDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    .line 87
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;->getCategories()Lio/reactivex/Single;

    move-result-object p2

    .line 88
    invoke-virtual {p2}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p2

    .line 89
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    .line 90
    sget-object v0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1;->INSTANCE:Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1;

    new-instance v1, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 85
    invoke-static {p2, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "{\n            Observable\u2026e\n            )\n        }"

    .line 90
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    :goto_0
    iget-object p2, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;",
            ">;>;>;"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->getCatalogLanguagesLastUpdateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->isDayAgo(J)Z

    move-result p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogApi:Lcom/iMe/storage/data/network/api/own/CatalogApi;

    .line 42
    invoke-interface {p1}, Lcom/iMe/storage/data/network/api/own/CatalogApi;->getLanguages()Lio/reactivex/Observable;

    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 82
    new-instance v2, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;

    invoke-direct {v2, v1, p0}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v1, "errorHandler: FirebaseFu\u2026R>().toObservable()\n    }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->catalogLanguageDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    .line 54
    invoke-virtual {p1}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;->getLanguages()Lio/reactivex/Single;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    new-instance v1, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$2;

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$2;-><init>(Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;)V

    new-instance v2, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v1, "override fun getLanguage\u2026r(errorHandler)\n        }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$handleError$2;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$$inlined$handleError$2;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
