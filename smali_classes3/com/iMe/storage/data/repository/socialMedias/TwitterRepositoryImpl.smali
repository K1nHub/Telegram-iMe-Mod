.class public final Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;
.super Ljava/lang/Object;
.source "TwitterRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterRepositoryImpl.kt\ncom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,152:1\n70#2:153\n70#2:155\n70#2:157\n70#2:159\n70#2:161\n70#2:163\n70#2:165\n70#2:167\n70#2:169\n70#2:171\n70#2:173\n26#3:154\n26#3:156\n26#3:158\n26#3:160\n26#3:162\n26#3:164\n26#3:166\n26#3:168\n26#3:170\n26#3:172\n26#3:174\n*S KotlinDebug\n*F\n+ 1 TwitterRepositoryImpl.kt\ncom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl\n*L\n27#1:153\n39#1:155\n50#1:157\n56#1:159\n71#1:161\n81#1:163\n97#1:165\n107#1:167\n119#1:169\n127#1:171\n139#1:173\n28#1:154\n40#1:156\n51#1:158\n61#1:160\n76#1:162\n86#1:164\n98#1:166\n108#1:168\n122#1:170\n128#1:172\n140#1:174\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

.field private final twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/api/own/TwitterApi;Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;)V
    .locals 1

    const-string v0, "errorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 18
    iput-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 19
    iput-object p3, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 20
    iput-object p4, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    return-void
.end method

.method private final getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;->getAccountsData()Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->getDataByTelegramId(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public acceptConnection(JJ)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 34
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;

    .line 35
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->acceptConnection(Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 39
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$acceptConnection$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$acceptConnection$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$acceptConnection$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$acceptConnection$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getRefreshToken(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterRefreshTokenData;",
            ">;>;"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 25
    :cond_1
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/network/model/request/twitter/TwitterRefreshTokenRequest;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterRefreshTokenRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->getRefreshToken(Lcom/iMe/storage/data/network/model/request/twitter/TwitterRefreshTokenRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getRefreshToken$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getRefreshToken$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getRefreshToken$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getRefreshToken$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getUserByUsername(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 126
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/TwitterUserByUsernameRequest;

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterUserByUsernameRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->getUserByUsername(Lcom/iMe/storage/data/network/model/request/twitter/TwitterUserByUsernameRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getUserByUsername$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getUserByUsername$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getUserByUsername$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getUserByUsername$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getUserTweets(JJLjava/lang/Long;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/twitter/TweetInfo;",
            ">;>;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 91
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;

    .line 92
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p5, :cond_0

    .line 93
    invoke-virtual {p5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    move-object p5, p4

    .line 94
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getAccessToken()Ljava/lang/String;

    move-result-object p4

    :cond_1
    if-nez p4, :cond_2

    const-string p4, ""

    .line 91
    :cond_2
    invoke-direct {v1, p3, p5, p4}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->getUserTweets(Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getUserTweets$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getUserTweets$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getUserTweets$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$getUserTweets$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public searchUsersByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "usernameQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 114
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;-><init>(Ljava/lang/String;I)V

    .line 113
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->searchUsersByUsername(Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$searchUsersByUsername$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$searchUsersByUsername$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$searchUsersByUsername$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$searchUsersByUsername$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendInvite(JJ)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p1

    .line 132
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 134
    new-instance v0, Lcom/iMe/storage/data/network/model/request/twitter/TwitterInviteRequest;

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 136
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 134
    invoke-direct {v0, p1, p3}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterInviteRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {p2, v0}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->sendInvite(Lcom/iMe/storage/data/network/model/request/twitter/TwitterInviteRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 139
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$sendInvite$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$sendInvite$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$sendInvite$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl$sendInvite$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
