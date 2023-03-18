.class public final Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;
.super Ljava/lang/Object;
.source "CryptoWalletRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/crypto/CryptoWalletRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoWalletRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoWalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 4 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,79:1\n70#2:80\n70#2:82\n70#2:85\n26#3:81\n26#3:84\n26#3:86\n18#3:92\n26#3:93\n64#4:83\n1549#5:87\n1620#5,3:88\n8#6:91\n*S KotlinDebug\n*F\n+ 1 CryptoWalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl\n*L\n47#1:80\n55#1:82\n64#1:85\n48#1:81\n59#1:84\n65#1:86\n74#1:92\n75#1:93\n56#1:83\n71#1:87\n71#1:88,3\n74#1:91\n*E\n"
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

.field private final walletTokenBalanceDao:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;


# direct methods
.method public static synthetic $r8$lambda$_s99KFoJbrUp__fhZ93CQSyAztM(Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->clearTokensData$lambda$5(Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "cryptoWalletApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletTokenBalanceDao"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

    .line 28
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 29
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 30
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->walletTokenBalanceDao:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    .line 31
    iput-object p5, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 32
    iput-object p6, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-void
.end method

.method private static final clearTokensData$lambda$5(Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->resetTokensSettings()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public clearTokensData()Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->walletTokenBalanceDao:Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    .line 70
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    .line 71
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getCryptoCodes()Ljava/util/List;

    move-result-object v3

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 71
    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1621
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0, v1, v2, v4}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;->rxDeleteByCodes(JLjava/util/List;)Lio/reactivex/Completable;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;)V

    invoke-static {v1}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v0

    .line 74
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    sget-object v2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "just(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletTokenBalanceDao\n  \u2026Success().toObservable())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$clearTokensData$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$clearTokensData$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLinkedCryptoWalletInfo()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;",
            ">;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

    .line 63
    invoke-interface {v0}, Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;->getCryptoWalletInfo()Lio/reactivex/Observable;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$getLinkedCryptoWalletInfo$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$getLinkedCryptoWalletInfo$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$getLinkedCryptoWalletInfo$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$getLinkedCryptoWalletInfo$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public linkWallet(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

    .line 40
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/LinkWalletAddressRequest;

    .line 43
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->getBackendName()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-direct {v1, p1, p2, v2, p3}, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/LinkWalletAddressRequest;-><init>(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;->linkWallet(Lcom/smedialink/storage/data/network/model/request/crypto/wallet/LinkWalletAddressRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$linkWallet$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$linkWallet$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$linkWallet$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$linkWallet$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public unlinkWallet(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

    .line 53
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->getBackendName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;-><init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)V

    .line 52
    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;->unlinkWallet(Lcom/smedialink/storage/data/network/model/request/crypto/wallet/UnlinkWalletAddressRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object p2, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_WALLET_NOT_LINKED:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    .line 64
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1;-><init>(Lcom/smedialink/storage/data/network/model/error/IErrorStatus;)V

    new-instance p2, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorStatus: IErrorStatu\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$unlinkWallet$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$unlinkWallet$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
