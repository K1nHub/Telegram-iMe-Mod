.class public final Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;
.super Ljava/lang/Object;
.source "EVMWalletTransferDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEVMWalletTransferDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EVMWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,81:1\n70#2:82\n16#3,7:83\n18#4:90\n18#5:91\n*S KotlinDebug\n*F\n+ 1 EVMWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl\n*L\n43#1:82\n46#1:83,7\n77#1:90\n77#1:91\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;)V
    .locals 1

    const-string v0, "firebaseErrorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 26
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    .line 27
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-void
.end method

.method public static final synthetic access$getCryptoWalletApi$p(Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method


# virtual methods
.method public getTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    .line 37
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;

    .line 38
    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p1

    .line 37
    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;->getEVMCryptoTransferData(Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 10
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

    .line 60
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getPrivateKeyBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->orEmpty([B)[B

    move-result-object v9

    .line 64
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    .line 65
    sget-object v1, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    .line 66
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getRecipientAddress()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v1, v0, v2, v3}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->createTransferTransactionByType(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction;

    move-result-object v8

    .line 71
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v7, v0

    .line 74
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getChainId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v5

    .line 75
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v6

    .line 73
    invoke-virtual/range {v1 .. v9}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->sign(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lwallet/core/jni/proto/Ethereum$Transaction;[B)Ljava/lang/String;

    move-result-object p1

    .line 18
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 60
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect transfer args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 24
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public transfer(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0, p2}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;Ljava/lang/String;)V

    new-instance p2, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
