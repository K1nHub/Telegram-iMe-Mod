.class public final Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;
.super Ljava/lang/Object;
.source "WalletConnectDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/wallet_connect/WalletConnectDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectDataSourceImpl.kt\ncom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,61:1\n16#2,7:62\n18#3:69\n18#4:70\n*S KotlinDebug\n*F\n+ 1 WalletConnectDataSourceImpl.kt\ncom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl\n*L\n28#1:62,7\n57#1:69\n57#1:70\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final walletConnectApi:Lcom/iMe/storage/data/network/api/own/WalletConnectApi;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/api/own/WalletConnectApi;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 23
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 24
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->walletConnectApi:Lcom/iMe/storage/data/network/api/own/WalletConnectApi;

    return-void
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method public static final synthetic access$getWalletConnectApi$p(Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/WalletConnectApi;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->walletConnectApi:Lcom/iMe/storage/data/network/api/own/WalletConnectApi;

    return-object p0
.end method


# virtual methods
.method public sendTransaction(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 2
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

    .line 28
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 37
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

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

    .line 43
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;

    .line 44
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v0

    .line 46
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;->setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getAmount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    .line 45
    invoke-virtual {v0, v1}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;->setContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lwallet/core/jni/proto/Ethereum$Transaction;

    .line 53
    sget-object v1, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    .line 54
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getChainId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v5

    .line 55
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getNonce()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getRecipientAddress()Ljava/lang/String;

    move-result-object v7

    const-string p1, "transaction"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
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

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect transfer args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 21
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
