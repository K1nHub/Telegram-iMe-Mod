.class public final Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;
.super Ljava/lang/Object;
.source "TwitterRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterRepositoryImpl.kt\ncom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,189:1\n70#2:190\n70#2:192\n70#2:194\n70#2:196\n70#2:198\n70#2:200\n70#2:202\n70#2:204\n70#2:206\n70#2:208\n70#2:210\n26#3:191\n26#3:193\n26#3:195\n26#3:197\n26#3:199\n26#3:201\n26#3:203\n26#3:205\n26#3:207\n26#3:209\n26#3:211\n*S KotlinDebug\n*F\n+ 1 TwitterRepositoryImpl.kt\ncom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl\n*L\n40#1:190\n55#1:192\n69#1:194\n81#1:196\n96#1:198\n106#1:200\n126#1:202\n141#1:204\n156#1:206\n164#1:208\n176#1:210\n41#1:191\n56#1:193\n70#1:195\n86#1:197\n101#1:199\n111#1:201\n127#1:203\n142#1:205\n159#1:207\n165#1:209\n177#1:211\n*E\n"
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 31
    iput-object p2, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 32
    iput-object p3, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 33
    iput-object p4, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    return-void
.end method

.method private final getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;->getAccountsData()Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->getDataByTelegramId(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p1

    return-object p1
.end method


# virtual methods
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

    .line 118
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 120
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;

    .line 121
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p5, :cond_0

    .line 122
    invoke-virtual {p5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    move-object p5, p4

    .line 123
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getAccessToken()Ljava/lang/String;

    move-result-object p4

    :cond_1
    if-nez p4, :cond_2

    const-string p4, ""

    .line 120
    :cond_2
    invoke-direct {v1, p3, p5, p4}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->getUserTweets(Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 126
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

    .line 127
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

    .line 149
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialMedias/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 151
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;-><init>(Ljava/lang/String;I)V

    .line 150
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->searchUsersByUsername(Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 156
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

    .line 159
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
