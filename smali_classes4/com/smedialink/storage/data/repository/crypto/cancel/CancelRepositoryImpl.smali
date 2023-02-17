.class public final Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl;
.super Ljava/lang/Object;
.source "CancelRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/crypto/cancel/CancelRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancelRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancelRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,46:1\n70#2:47\n26#3:48\n26#3:49\n*S KotlinDebug\n*F\n+ 1 CancelRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl\n*L\n31#1:47\n34#1:48\n41#1:49\n*E\n"
.end annotation


# instance fields
.field private final cancelApi:Lcom/smedialink/storage/data/network/api/own/CancelApi;

.field private final cancelDataSourceFactory:Lcom/smedialink/storage/data/datasource/cancel/WalletCancelDataSourceFactory;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/CancelApi;Lcom/smedialink/storage/data/datasource/cancel/WalletCancelDataSourceFactory;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "cancelApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelDataSourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl;->cancelApi:Lcom/smedialink/storage/data/network/api/own/CancelApi;

    .line 19
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl;->cancelDataSourceFactory:Lcom/smedialink/storage/data/datasource/cancel/WalletCancelDataSourceFactory;

    .line 20
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 21
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl;->cancelDataSourceFactory:Lcom/smedialink/storage/data/datasource/cancel/WalletCancelDataSourceFactory;

    .line 39
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/data/datasource/cancel/WalletCancelDataSourceFactory;->getDataSource(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/data/datasource/cancel/WalletCancelDataSource;

    move-result-object v0

    .line 40
    invoke-interface {v0, p1}, Lcom/smedialink/storage/data/datasource/cancel/WalletCancelDataSource;->cancel(Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCryptoCancelMetadata(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "txHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/cancel/GetDataForCancelOrBoostCryptoTransactionRequest;

    invoke-direct {v0, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/cancel/GetDataForCancelOrBoostCryptoTransactionRequest;-><init>(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl;->cancelApi:Lcom/smedialink/storage/data/network/api/own/CancelApi;

    .line 30
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/CancelApi;->getDataForCancelCryptoTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/cancel/GetDataForCancelOrBoostCryptoTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl$getCryptoCancelMetadata$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl$getCryptoCancelMetadata$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/cancel/CancelRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
