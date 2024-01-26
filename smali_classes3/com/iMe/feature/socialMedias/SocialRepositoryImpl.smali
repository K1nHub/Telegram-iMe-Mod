.class public final Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;
.super Ljava/lang/Object;
.source "SocialRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/feature/socialMedias/SocialRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocialRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocialRepositoryImpl.kt\ncom/iMe/feature/socialMedias/SocialRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,86:1\n70#2:87\n70#2:89\n26#3:88\n26#3:90\n*S KotlinDebug\n*F\n+ 1 SocialRepositoryImpl.kt\ncom/iMe/feature/socialMedias/SocialRepositoryImpl\n*L\n52#1:87\n75#1:89\n53#1:88\n76#1:90\n*E\n"
.end annotation


# instance fields
.field private final authResultRelay:Lcom/jakewharton/rxrelay2/PublishRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/PublishRelay<",
            "Lcom/iMe/model/twitter/SocialAuthResult;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final socialMediasApi:Lcom/iMe/storage/data/network/api/own/SocialApi;

.field private final socialNetworkDao:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;


# direct methods
.method public static synthetic $r8$lambda$H5yEfxeE8OnV3FFQQIBL_nz8SUM(Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->logoutSocial$lambda$0(Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fB3mTmaLxqHLHcRic9tfOm5yfo8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->getSocialFromDb$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/SocialApi;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;)V
    .locals 1

    const-string v0, "socialMediasApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialNetworkDao"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->socialMediasApi:Lcom/iMe/storage/data/network/api/own/SocialApi;

    .line 27
    iput-object p2, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 28
    iput-object p3, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 29
    iput-object p4, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->socialNetworkDao:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;

    .line 32
    invoke-static {}, Lcom/jakewharton/rxrelay2/PublishRelay;->create()Lcom/jakewharton/rxrelay2/PublishRelay;

    move-result-object p1

    const-string p2, "create<SocialAuthResult>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->authResultRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    .line 33
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final synthetic access$getAuthResultRelay$p(Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;)Lcom/jakewharton/rxrelay2/PublishRelay;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->authResultRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    return-object p0
.end method

.method public static final synthetic access$saveInDb(Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;Lcom/iMe/storage/domain/model/Result;J)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->saveInDb(Lcom/iMe/storage/domain/model/Result;J)V

    return-void
.end method

.method private final getSocialFromDb(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->socialNetworkDao:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;

    .line 66
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;->getAllByProfileId(J)Lio/reactivex/Single;

    move-result-object p1

    .line 67
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 68
    sget-object p2, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1;->INSTANCE:Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromDb$1;

    new-instance v0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "socialNetworkDao\n       \u2026          .toObservable()"

    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getSocialFromDb$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private final getSocialFromNet(J)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->socialMediasApi:Lcom/iMe/storage/data/network/api/own/SocialApi;

    .line 73
    new-instance v7, Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v7}, Lcom/iMe/storage/data/network/api/own/SocialApi;->getAllSocial(Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 74
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "socialMediasApi\n        \u2026scribeOn(Schedulers.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromNet$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromNet$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromNet$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getSocialFromNet$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final logoutSocial$lambda$0(Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->authResultRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    sget-object v0, Lcom/iMe/model/twitter/SocialAuthResult$Logout;->INSTANCE:Lcom/iMe/model/twitter/SocialAuthResult$Logout;

    invoke-virtual {p0, v0}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private final saveInDb(Lcom/iMe/storage/domain/model/Result;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;J)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/SocialDomain;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GetAllSocial cached in Db"

    .line 80
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->socialNetworkDao:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;

    invoke-static {p1, p2, p3}, Lcom/iMe/feature/socialMedias/SocialDataMapperKt;->toDb(Lcom/iMe/feature/socialMedias/SocialDomain;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p2, p3, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;->clearAndInsertAll(JLjava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAllSocial(Lcom/iMe/feature/profile/ProfileData;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/profile/ProfileData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;>;"
        }
    .end annotation

    const-string v0, "profileData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/iMe/feature/cacheManager/CacheManagerStrategy;->INSTANCE:Lcom/iMe/feature/cacheManager/CacheManagerStrategy;

    .line 37
    invoke-virtual {p1}, Lcom/iMe/feature/profile/ProfileData;->getProfileId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->getSocialFromDb(J)Lio/reactivex/Observable;

    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lcom/iMe/feature/profile/ProfileData;->getProfileId()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->getSocialFromNet(J)Lio/reactivex/Observable;

    move-result-object v3

    .line 36
    new-instance v4, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAllSocial$1;

    invoke-direct {v4, p0, p1}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAllSocial$1;-><init>(Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;Lcom/iMe/feature/profile/ProfileData;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/iMe/feature/cacheManager/CacheManagerStrategy;->fetch$default(Lcom/iMe/feature/cacheManager/CacheManagerStrategy;Lio/reactivex/Observable;Lio/reactivex/Observable;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getAuthResult(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/model/twitter/SocialAuthResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->defaultDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;-><init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public logoutSocial(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/SocialNetwork;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/profile/ProfileData;",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "profileData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->socialMediasApi:Lcom/iMe/storage/data/network/api/own/SocialApi;

    .line 45
    new-instance v1, Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;

    .line 46
    invoke-virtual {p1}, Lcom/iMe/feature/profile/ProfileData;->getProfileId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p2}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialElementId()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p2}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocial()Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 45
    invoke-direct {v1, p1, v2, p2}, Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/SocialApi;->logoutSocial(Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "socialMediasApi\n        \u2026ocialAuthResult.Logout) }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$logoutSocial$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$logoutSocial$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$logoutSocial$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$logoutSocial$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
