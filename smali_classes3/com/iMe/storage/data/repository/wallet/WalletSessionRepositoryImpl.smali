.class public final Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;
.super Ljava/lang/Object;
.source "WalletSessionRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSessionRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSessionRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 3 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,55:1\n18#2:56\n26#2:58\n26#2:60\n70#3:57\n70#3:59\n*S KotlinDebug\n*F\n+ 1 WalletSessionRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl\n*L\n29#1:56\n42#1:58\n53#1:60\n37#1:57\n48#1:59\n*E\n"
.end annotation


# instance fields
.field private final authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/WalletApi;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/iMe/storage/domain/manager/auth/AuthManager;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V
    .locals 1

    const-string v0, "walletApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 21
    iput-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 22
    iput-object p3, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    .line 23
    iput-object p4, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-void
.end method

.method public static final synthetic access$getAuthManager$p(Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;)Lcom/iMe/storage/domain/manager/auth/AuthManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    return-object p0
.end method


# virtual methods
.method public getCurrentAccount()Lcom/iMe/storage/domain/model/wallet/User;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->getUser()Lcom/iMe/storage/domain/model/wallet/User;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccountToken(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 18
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public login(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
            ">;>;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 47
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/SessionTokensRequest;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/iMe/storage/data/network/model/request/wallet/SessionTokensRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getAuthTokensByTelegramLoginData(Lcom/iMe/storage/data/network/model/request/wallet/SessionTokensRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$login$$inlined$mapSuccess$1;

    invoke-direct {v1, v0, p0}, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$login$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$login$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$login$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public logout()Lio/reactivex/Completable;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/storage/domain/manager/auth/AuthManager;)V

    invoke-static {v1}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "fromAction(authManager::logout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public refreshToken()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
            ">;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 36
    new-instance v2, Lcom/iMe/storage/data/network/model/request/wallet/RefreshTokenRequest;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3, v4}, Lcom/iMe/storage/data/network/model/request/wallet/RefreshTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Lcom/iMe/storage/data/network/api/own/WalletApi;->refreshToken(Lcom/iMe/storage/data/network/model/request/wallet/RefreshTokenRequest;)Lio/reactivex/Observable;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$refreshToken$$inlined$mapSuccess$1;

    invoke-direct {v2, v1, p0}, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$refreshToken$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$refreshToken$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$refreshToken$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
