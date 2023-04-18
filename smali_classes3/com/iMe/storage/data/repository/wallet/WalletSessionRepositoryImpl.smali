.class public final Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;
.super Ljava/lang/Object;
.source "WalletSessionRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSessionRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSessionRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 3 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,62:1\n18#2:63\n26#2:65\n26#2:67\n70#3:64\n70#3:66\n*S KotlinDebug\n*F\n+ 1 WalletSessionRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl\n*L\n32#1:63\n46#1:65\n57#1:67\n41#1:64\n52#1:66\n*E\n"
.end annotation


# instance fields
.field private final authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;


# direct methods
.method public static synthetic $r8$lambda$fKJfsbSf2LiilCuyxyR-JFphl-M(Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->logout$lambda$0(Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;)V

    return-void
.end method

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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 22
    iput-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 23
    iput-object p3, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    .line 24
    iput-object p4, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-void
.end method

.method public static final synthetic access$getAuthManager$p(Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;)Lcom/iMe/storage/domain/manager/auth/AuthManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    return-object p0
.end method

.method private static final logout$lambda$0(Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    invoke-interface {p0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->logout()V

    return-void
.end method


# virtual methods
.method public getCurrentAccount()Lcom/iMe/storage/domain/model/wallet/User;
    .locals 1

    .line 29
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

    .line 32
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

    .line 50
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 51
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/SessionTokensRequest;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/iMe/storage/data/network/model/request/wallet/SessionTokensRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getAuthTokensByTelegramLoginData(Lcom/iMe/storage/data/network/model/request/wallet/SessionTokensRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 52
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

    .line 57
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

    .line 35
    new-instance v0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "fromAction { authManager.logout() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public refreshToken(Ljava/lang/String;)Lio/reactivex/Observable;
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

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 40
    new-instance v1, Lcom/iMe/storage/data/network/model/request/wallet/RefreshTokenRequest;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/iMe/storage/data/network/model/request/wallet/RefreshTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->refreshToken(Lcom/iMe/storage/data/network/model/request/wallet/RefreshTokenRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$refreshToken$$inlined$mapSuccess$1;

    invoke-direct {v1, v0, p0}, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$refreshToken$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$refreshToken$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletSessionRepositoryImpl$refreshToken$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method