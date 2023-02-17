.class public final Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;
.super Ljava/lang/Object;
.source "KiklikoRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/kikliko/KiklikoRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKiklikoRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KiklikoRepositoryImpl.kt\ncom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl\n+ 2 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,75:1\n26#2:76\n26#2:77\n26#2:78\n26#2:79\n26#2:80\n26#2:81\n26#2:82\n8#3:83\n8#3:84\n8#3:85\n8#3:86\n8#3:87\n8#3:88\n8#3:89\n*S KotlinDebug\n*F\n+ 1 KiklikoRepositoryImpl.kt\ncom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl\n*L\n29#1:76\n36#1:77\n43#1:78\n50#1:79\n57#1:80\n64#1:81\n71#1:82\n28#1:83\n35#1:84\n42#1:85\n49#1:86\n56#1:87\n63#1:88\n70#1:89\n*E\n"
.end annotation


# instance fields
.field private final api:Lcom/smedialink/storage/data/network/api/own/KiklikoApi;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;


# direct methods
.method public static synthetic $r8$lambda$9f_ZbSxwbIDKcTqshsRMMfrcCH4(Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->searchByKeyword$lambda-1(Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HUDlzTJh_vb-_49UgGbkTIFTY0M(Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->getTrending$lambda-3(Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NQdOByQ2vqtA7zze4LeX78aTRN0(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->view$lambda-5(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_eoN79IcuuRD-OsmWEmagncZ2wg(Lcom/smedialink/storage/data/network/model/response/kikliko/GetTagsResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->getTags$lambda-0(Lcom/smedialink/storage/data/network/model/response/kikliko/GetTagsResponse;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mT4biRy8qsVLhQKVtYrYqmzX588(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->share$lambda-4(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qQ1wCzsVT_E8CeJjDn6aAZEu17s(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->report$lambda-6(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yaJLOJI3ibmSD5tnYxAKdr7AnTk(Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->searchByTag$lambda-2(Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/KiklikoApi;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/smedialink/storage/domain/storage/PreferenceHelper;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->api:Lcom/smedialink/storage/data/network/api/own/KiklikoApi;

    .line 19
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 20
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    return-void
.end method

.method private static final getTags$lambda-0(Lcom/smedialink/storage/data/network/model/response/kikliko/GetTagsResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/kikliko/GetTagsResponse;->getData()Ljava/util/List;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final getTrending$lambda-3(Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;->getData()Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final report$lambda-6(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final searchByKeyword$lambda-1(Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;->getData()Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final searchByTag$lambda-2(Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResultResponse;->getData()Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final share$lambda-4(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final view$lambda-5(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getTags()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;",
            ">;>;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->api:Lcom/smedialink/storage/data/network/api/own/KiklikoApi;

    .line 27
    invoke-interface {v0}, Lcom/smedialink/storage/data/network/api/own/KiklikoApi;->getTags()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda0;

    .line 28
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "api\n                .get\u2026p { it.data.toSuccess() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTrending(I)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->api:Lcom/smedialink/storage/data/network/api/own/KiklikoApi;

    .line 48
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getKiklikoUUID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/smedialink/storage/data/network/api/own/KiklikoApi$DefaultImpls;->getTrending$default(Lcom/smedialink/storage/data/network/api/own/KiklikoApi;ILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda2;

    .line 49
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "api\n                .get\u2026p { it.data.toSuccess() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->api:Lcom/smedialink/storage/data/network/api/own/KiklikoApi;

    .line 69
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/kikliko/ReportRequest;

    iget-object v2, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getKiklikoUUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/smedialink/storage/data/network/model/request/kikliko/ReportRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/smedialink/storage/data/network/api/own/KiklikoApi;->report(Ljava/lang/String;Lcom/smedialink/storage/data/network/model/request/kikliko/ReportRequest;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda6;->INSTANCE:Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda6;

    .line 70
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "api\n                .rep\u2026.map { true.toSuccess() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public searchByKeyword(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->api:Lcom/smedialink/storage/data/network/api/own/KiklikoApi;

    .line 34
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getKiklikoUUID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/smedialink/storage/data/network/api/own/KiklikoApi$DefaultImpls;->searchByKeyword$default(Lcom/smedialink/storage/data/network/api/own/KiklikoApi;Ljava/lang/String;ILjava/lang/String;IILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda1;

    .line 35
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "api\n                .sea\u2026p { it.data.toSuccess() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public searchByTag(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->api:Lcom/smedialink/storage/data/network/api/own/KiklikoApi;

    .line 41
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getKiklikoUUID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/smedialink/storage/data/network/api/own/KiklikoApi$DefaultImpls;->searchByTag$default(Lcom/smedialink/storage/data/network/api/own/KiklikoApi;Ljava/lang/String;ILjava/lang/String;IILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda3;->INSTANCE:Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda3;

    .line 42
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "api\n                .sea\u2026p { it.data.toSuccess() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public share(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->api:Lcom/smedialink/storage/data/network/api/own/KiklikoApi;

    .line 55
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/kikliko/ShareRequest;

    iget-object v2, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getKiklikoUUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/network/model/request/kikliko/ShareRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/smedialink/storage/data/network/api/own/KiklikoApi;->share(Ljava/lang/String;Lcom/smedialink/storage/data/network/model/request/kikliko/ShareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda5;->INSTANCE:Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda5;

    .line 56
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "api\n                .sha\u2026.map { true.toSuccess() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public view(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->api:Lcom/smedialink/storage/data/network/api/own/KiklikoApi;

    .line 62
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/kikliko/ViewRequest;

    iget-object v2, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getKiklikoUUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/network/model/request/kikliko/ViewRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/smedialink/storage/data/network/api/own/KiklikoApi;->view(Ljava/lang/String;Lcom/smedialink/storage/data/network/model/request/kikliko/ViewRequest;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda4;->INSTANCE:Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl$$ExternalSyntheticLambda4;

    .line 63
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "api\n                .vie\u2026.map { true.toSuccess() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/kikliko/KiklikoRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
