.class public final Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;
.super Ljava/lang/Object;
.source "WalletConnectRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,88:1\n70#2:89\n26#3:90\n26#3:91\n38#3:92\n*S KotlinDebug\n*F\n+ 1 WalletConnectRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl\n*L\n51#1:89\n52#1:90\n57#1:91\n72#1:92\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private final walletConnectApi:Lcom/iMe/storage/data/network/api/own/WalletConnectApi;

.field private final walletConnectDataSource:Lcom/iMe/storage/data/datasource/wallet_connect/WalletConnectDataSource;

.field private final walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;


# direct methods
.method public static synthetic $r8$lambda$lw2i4OYUPbMxeHOOpTVQjaG_0vc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->getWalletConnectSavedSessions$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/data/network/api/own/WalletConnectApi;Lcom/iMe/storage/data/datasource/wallet_connect/WalletConnectDataSource;Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;)V
    .locals 1

    const-string v0, "errorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectApi"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectDataSource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectSessionsDao"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 28
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 29
    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 30
    iput-object p4, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->walletConnectApi:Lcom/iMe/storage/data/network/api/own/WalletConnectApi;

    .line 31
    iput-object p5, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->walletConnectDataSource:Lcom/iMe/storage/data/datasource/wallet_connect/WalletConnectDataSource;

    .line 32
    iput-object p6, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    return-void
.end method

.method private static final getWalletConnectSavedSessions$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method


# virtual methods
.method public deleteAllWalletConnectSessions()Lio/reactivex/Completable;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    .line 80
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;->rxDeleteAllSession(J)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public deleteWalletConnectSession(Ljava/lang/String;)Lio/reactivex/Completable;
    .locals 3

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    .line 84
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;->rxDeleteBySessionKey(JLjava/lang/String;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public getWalletConnectParamsForCryptoTransaction(Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;)Lio/reactivex/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;",
            ">;>;"
        }
    .end annotation

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->walletConnectApi:Lcom/iMe/storage/data/network/api/own/WalletConnectApi;

    .line 40
    new-instance v10, Lcom/iMe/storage/data/network/model/request/crypto/wallet_connect/GetParamsForCryptoTransactionRequest;

    .line 41
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->getTo()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->getData()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->getGas()Ljava/math/BigInteger;

    move-result-object v6

    .line 46
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v7

    .line 47
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->getNonce()Ljava/math/BigInteger;

    move-result-object v8

    .line 48
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    move-object v1, v10

    .line 40
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/data/network/model/request/crypto/wallet_connect/GetParamsForCryptoTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 39
    invoke-interface {v0, v10}, Lcom/iMe/storage/data/network/api/own/WalletConnectApi;->getWalletConnectParamsForCryptoTransaction(Lcom/iMe/storage/data/network/model/request/crypto/wallet_connect/GetParamsForCryptoTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectParamsForCryptoTransaction$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectParamsForCryptoTransaction$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectParamsForCryptoTransaction$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectParamsForCryptoTransaction$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getWalletConnectSavedSessions()Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
            ">;>;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    .line 65
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;->getAllSessions(J)Lio/reactivex/Flowable;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1;->INSTANCE:Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1;

    new-instance v2, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "walletConnectSessionsDao\u2026s()\n                    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 38
    new-instance v2, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "handleError"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public insertWalletConnectSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)Lio/reactivex/Completable;
    .locals 3

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    .line 76
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/iMe/storage/data/mapper/wallet/WalletConnectSessionMappingKt;->mapToDb(Lcom/trustwallet/walletconnect/WCSessionStoreItem;J)Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->rxInsert(Ljava/lang/Object;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public sendWalletConnectCryptoTransaction(Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->walletConnectDataSource:Lcom/iMe/storage/data/datasource/wallet_connect/WalletConnectDataSource;

    .line 56
    invoke-interface {v0, p1}, Lcom/iMe/storage/data/datasource/wallet_connect/WalletConnectDataSource;->sendTransaction(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$sendWalletConnectCryptoTransaction$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$sendWalletConnectCryptoTransaction$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public signWalletConnectCryptoTransaction(Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->walletConnectDataSource:Lcom/iMe/storage/data/datasource/wallet_connect/WalletConnectDataSource;

    invoke-interface {v0, p1}, Lcom/iMe/storage/data/datasource/base/SignTransactionDatasource;->sign(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
