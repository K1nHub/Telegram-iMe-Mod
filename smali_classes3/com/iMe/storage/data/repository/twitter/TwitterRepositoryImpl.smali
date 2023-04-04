.class public final Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;
.super Ljava/lang/Object;
.source "TwitterRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterRepositoryImpl.kt\ncom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,177:1\n70#2:178\n70#2:180\n70#2:182\n70#2:184\n70#2:186\n70#2:188\n70#2:190\n70#2:192\n70#2:194\n70#2:196\n70#2:198\n70#2:200\n26#3:179\n26#3:181\n26#3:183\n26#3:185\n26#3:187\n26#3:189\n26#3:191\n26#3:193\n26#3:195\n26#3:197\n26#3:199\n26#3:201\n*S KotlinDebug\n*F\n+ 1 TwitterRepositoryImpl.kt\ncom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl\n*L\n31#1:178\n43#1:180\n54#1:182\n67#1:184\n74#1:186\n89#1:188\n99#1:190\n115#1:192\n125#1:194\n137#1:196\n145#1:198\n157#1:200\n32#1:179\n44#1:181\n55#1:183\n68#1:185\n79#1:187\n94#1:189\n104#1:191\n116#1:193\n126#1:195\n140#1:197\n146#1:199\n158#1:201\n*E\n"
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 20
    iput-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 21
    iput-object p3, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 22
    iput-object p4, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    return-void
.end method

.method public static final synthetic access$updateAccountUsername(Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;JLjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->updateAccountUsername(JLjava/lang/String;)V

    return-void
.end method

.method private final getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;->getAccountsData()Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->getDataByTelegramId(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p1

    return-object p1
.end method

.method private final updateAccountUsername(JLjava/lang/String;)V
    .locals 11

    .line 169
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;->getAccountsData()Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object v0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x1d

    const/4 v10, 0x0

    move-object v4, p3

    invoke-static/range {v1 .. v10}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->copy$default(Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->put(JLcom/iMe/storage/domain/model/twitter/TwitterAccountData;)V

    :cond_1
    :goto_0
    return-void
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

    .line 36
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 38
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;

    .line 39
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->acceptConnection(Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$acceptConnection$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$acceptConnection$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$acceptConnection$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$acceptConnection$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public declineConnection(JJ)Lio/reactivex/Observable;
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

    .line 47
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 49
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;

    .line 50
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->declineConnection(Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$declineConnection$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$declineConnection$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$declineConnection$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$declineConnection$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

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

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

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

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 30
    new-instance v0, Lcom/iMe/storage/data/network/model/request/twitter/TwitterRefreshTokenRequest;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterRefreshTokenRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->getRefreshToken(Lcom/iMe/storage/data/network/model/request/twitter/TwitterRefreshTokenRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getRefreshToken$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getRefreshToken$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getRefreshToken$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getRefreshToken$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSelfChatTwitterProfile(J)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 84
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/TwitterSelfChatProfileRequest;

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string v2, ""

    .line 86
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-direct {v1, v2, v3}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterSelfChatProfileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->getSelfChatTwitterProfile(Lcom/iMe/storage/data/network/model/request/twitter/TwitterSelfChatProfileRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getSelfChatTwitterProfile$$inlined$mapSuccess$1;

    invoke-direct {v2, v1, p0, p1, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getSelfChatTwitterProfile$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;J)V

    new-instance p1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getSelfChatTwitterProfile$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getSelfChatTwitterProfile$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSelfTwitterProfile(J)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 73
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/CommonTwitterAuthorizedRequest;

    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-direct {v1, v2}, Lcom/iMe/storage/data/network/model/request/twitter/CommonTwitterAuthorizedRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->getSelfTwitterProfile(Lcom/iMe/storage/data/network/model/request/twitter/CommonTwitterAuthorizedRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getSelfTwitterProfile$$inlined$mapSuccess$1;

    invoke-direct {v2, v1, p0, p1, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getSelfTwitterProfile$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;J)V

    new-instance p1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getSelfTwitterProfile$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getSelfTwitterProfile$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

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

    .line 143
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 144
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/TwitterUserByUsernameRequest;

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterUserByUsernameRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->getUserByUsername(Lcom/iMe/storage/data/network/model/request/twitter/TwitterUserByUsernameRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserByUsername$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserByUsername$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserByUsername$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserByUsername$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

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

    .line 107
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 109
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;

    .line 110
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p5, :cond_0

    .line 111
    invoke-virtual {p5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    move-object p5, p4

    .line 112
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getAccessToken()Ljava/lang/String;

    move-result-object p4

    :cond_1
    if-nez p4, :cond_2

    const-string p4, ""

    .line 109
    :cond_2
    invoke-direct {v1, p3, p5, p4}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->getUserTweets(Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 115
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserTweets$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserTweets$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserTweets$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserTweets$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getUserTwitterProfile(J)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 98
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/TwitterProfileByTelegramIdRequest;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterProfileByTelegramIdRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->getUserTwitterProfile(Lcom/iMe/storage/data/network/model/request/twitter/TwitterProfileByTelegramIdRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserTwitterProfile$$inlined$mapSuccess$1;

    invoke-direct {v2, v1, p0, p1, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserTwitterProfile$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;J)V

    new-instance p1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserTwitterProfile$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$getUserTwitterProfile$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public logout(J)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 61
    new-instance v2, Lcom/iMe/storage/data/network/model/request/twitter/TwitterLogoutRequest;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    const-string v4, ""

    .line 63
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getTwitterId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Long;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-direct {v2, v4, p1, p2}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterLogoutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-interface {v1, v2}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->logout(Lcom/iMe/storage/data/network/model/request/twitter/TwitterLogoutRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$logout$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$logout$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$logout$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$logout$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

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

    .line 130
    iget-object v0, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 132
    new-instance v1, Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;-><init>(Ljava/lang/String;I)V

    .line 131
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->searchUsersByUsername(Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$searchUsersByUsername$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$searchUsersByUsername$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$searchUsersByUsername$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$searchUsersByUsername$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

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

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->getTwitterAccountDataById(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->twitterApi:Lcom/iMe/storage/data/network/api/own/TwitterApi;

    .line 152
    new-instance v0, Lcom/iMe/storage/data/network/model/request/twitter/TwitterInviteRequest;

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 154
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 152
    invoke-direct {v0, p1, p3}, Lcom/iMe/storage/data/network/model/request/twitter/TwitterInviteRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-interface {p2, v0}, Lcom/iMe/storage/data/network/api/own/TwitterApi;->sendInvite(Lcom/iMe/storage/data/network/model/request/twitter/TwitterInviteRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 157
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$sendInvite$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$sendInvite$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$sendInvite$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/twitter/TwitterRepositoryImpl$sendInvite$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
