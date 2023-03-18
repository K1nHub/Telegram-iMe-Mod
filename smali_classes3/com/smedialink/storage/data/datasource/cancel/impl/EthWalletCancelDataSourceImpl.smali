.class public final Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;
.super Ljava/lang/Object;
.source "EthWalletCancelDataSourceImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/data/datasource/cancel/WalletCancelDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEthWalletCancelDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EthWalletCancelDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,80:1\n70#2:81\n*S KotlinDebug\n*F\n+ 1 EthWalletCancelDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl\n*L\n49#1:81\n*E\n"
.end annotation


# instance fields
.field private final cancelApi:Lcom/smedialink/storage/data/network/api/own/CancelApi;

.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/CancelApi;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V
    .locals 1

    const-string v0, "cancelApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->cancelApi:Lcom/smedialink/storage/data/network/api/own/CancelApi;

    .line 25
    iput-object p2, p0, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 26
    iput-object p3, p0, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-void
.end method

.method private final createSmartFunctionParams(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/web3j/abi/datatypes/Type;

    .line 71
    new-instance v1, Lorg/web3j/abi/datatypes/Address;

    invoke-direct {v1, p1}, Lorg/web3j/abi/datatypes/Address;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    new-instance p1, Lorg/web3j/abi/datatypes/generated/Uint256;

    invoke-direct {p1, p2}, Lorg/web3j/abi/datatypes/generated/Uint256;-><init>(Ljava/math/BigInteger;)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "transfer"

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p1, v0, v1, v0}, Lcom/smedialink/storage/data/utils/extentions/Web3jExtKt;->createSmartFunctionDataFor$default(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final createTransactionByType(Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;)Lorg/web3j/crypto/RawTransaction;
    .locals 8

    .line 57
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "{\n            RawTransac\u2026)\n            )\n        }"

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v3

    .line 60
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getRecipientAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getWeiConvertUnit()Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->convertToWei(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigInteger;

    move-result-object p1

    .line 58
    invoke-static {v0, v2, v3, v4, p1}, Lorg/web3j/crypto/RawTransaction;->createEtherTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    .line 57
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v3

    .line 65
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getRecipientAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getWeiConvertUnit()Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->convertToWei(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, v5, p1}, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->createSmartFunctionParams(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {v0, v2, v3, v4, p1}, Lorg/web3j/crypto/RawTransaction;->createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    .line 62
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method


# virtual methods
.method public cancel(Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;)Lio/reactivex/Observable;
    .locals 4
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

    .line 32
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect cancel args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "error(IllegalStateExcept\u2026elDataSource.ARGS_ERROR))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 34
    :cond_0
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->getTransferArgs()Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->createTransactionByType(Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;)Lorg/web3j/crypto/RawTransaction;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->getTransferArgs()Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->getChainId()J

    move-result-wide v1

    .line 38
    iget-object v3, p0, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;->getCredentials()Lorg/web3j/crypto/Credentials;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 35
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lorg/web3j/crypto/TransactionEncoder;->signMessage(Lorg/web3j/crypto/RawTransaction;JLorg/web3j/crypto/Credentials;)[B

    move-result-object v0

    .line 42
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/cancel/SendEthereumCancelOrBoostTransactionRequest;

    .line 43
    invoke-static {v0}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toHexString(signedTransaction)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->getOldTxHash()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-direct {v1, v0, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/cancel/SendEthereumCancelOrBoostTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->cancelApi:Lcom/smedialink/storage/data/network/api/own/CancelApi;

    .line 48
    invoke-interface {p1, v1}, Lcom/smedialink/storage/data/network/api/own/CancelApi;->sendEthereumCancelTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/cancel/SendEthereumCancelOrBoostTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl$cancel$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl$cancel$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
