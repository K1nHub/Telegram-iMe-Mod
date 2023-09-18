.class public final Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;
.super Ljava/lang/Object;
.source "BoostRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/boost/BoostRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBoostRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoostRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,56:1\n70#2:57\n70#2:59\n26#3:58\n26#3:60\n*S KotlinDebug\n*F\n+ 1 BoostRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl\n*L\n31#1:57\n50#1:59\n34#1:58\n51#1:60\n*E\n"
.end annotation


# instance fields
.field private final boostApi:Lcom/iMe/storage/data/network/api/own/BoostApi;

.field private final boostDataSourceFactory:Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/BoostApi;Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "boostApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boostDataSourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->boostApi:Lcom/iMe/storage/data/network/api/own/BoostApi;

    .line 19
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->boostDataSourceFactory:Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;

    .line 20
    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 21
    iput-object p4, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method


# virtual methods
.method public boost(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "transactionBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldTxHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/cancel/SendCancelOrBoostTransactionRequest;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/cancel/SendCancelOrBoostTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->boostApi:Lcom/iMe/storage/data/network/api/own/BoostApi;

    .line 49
    invoke-interface {p1, v0}, Lcom/iMe/storage/data/network/api/own/BoostApi;->sendEthereumSpeedUpTransaction(Lcom/iMe/storage/data/network/model/request/crypto/cancel/SendCancelOrBoostTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl$boost$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl$boost$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl$boost$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl$boost$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCryptoBoostMetadata(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ">;>;"
        }
    .end annotation

    const-string v0, "txHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/cancel/PrepareSpeedUpOrCancelTransactionRequest;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/network/model/request/crypto/cancel/PrepareSpeedUpOrCancelTransactionRequest;-><init>(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->boostApi:Lcom/iMe/storage/data/network/api/own/BoostApi;

    .line 30
    invoke-interface {p1, v0}, Lcom/iMe/storage/data/network/api/own/BoostApi;->getSpeedUpTransactionData(Lcom/iMe/storage/data/network/model/request/crypto/cancel/PrepareSpeedUpOrCancelTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public signBoostTransaction(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/boost/BoostRepositoryImpl;->boostDataSourceFactory:Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;

    .line 39
    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;->getDataSource(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lcom/iMe/storage/data/datasource/base/SignTransactionDatasource;

    move-result-object v0

    .line 40
    invoke-interface {v0, p1}, Lcom/iMe/storage/data/datasource/base/SignTransactionDatasource;->sign(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
