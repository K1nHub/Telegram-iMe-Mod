.class public final Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;
.super Ljava/lang/Object;
.source "EthWalletApproveDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEthWalletApproveDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EthWalletApproveDataSourceImpl.kt\ncom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,74:1\n14#2:75\n11#3:76\n18#4:77\n*S KotlinDebug\n*F\n+ 1 EthWalletApproveDataSourceImpl.kt\ncom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl\n*L\n30#1:75\n54#1:76\n54#1:77\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/SwapApi;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V
    .locals 1

    const-string v0, "swapApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    .line 21
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 22
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-void
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method public static final synthetic access$getSwapApi$p(Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/SwapApi;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    return-object p0
.end method

.method private final createTransaction(Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;)Lwallet/core/jni/proto/Ethereum$Transaction;
    .locals 3

    .line 63
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v0

    .line 65
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getExchangeContractAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;->setSpender(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v1, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;

    .line 64
    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;->setErc20Approve(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Approve;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "newBuilder()\n           \u2026                 .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p1
.end method


# virtual methods
.method public approve(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
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
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect approve args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 9
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

    .line 44
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    if-eqz v0, :cond_2

    .line 46
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    invoke-direct {p0, p1}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->createTransaction(Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;)Lwallet/core/jni/proto/Ethereum$Transaction;

    move-result-object v7

    .line 47
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getPrivateKeyBytes()[B

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_1
    move-object v8, v0

    .line 50
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    .line 51
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getChainId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v4

    .line 52
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual/range {v0 .. v8}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->sign(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lwallet/core/jni/proto/Ethereum$Transaction;[B)Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect approve args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 19
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
