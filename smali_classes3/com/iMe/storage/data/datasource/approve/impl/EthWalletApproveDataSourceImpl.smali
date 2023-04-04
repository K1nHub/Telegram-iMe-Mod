.class public final Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;
.super Ljava/lang/Object;
.source "EthWalletApproveDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEthWalletApproveDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EthWalletApproveDataSourceImpl.kt\ncom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,83:1\n14#2:84\n11#3:85\n18#4:86\n*S KotlinDebug\n*F\n+ 1 EthWalletApproveDataSourceImpl.kt\ncom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl\n*L\n35#1:84\n59#1:85\n59#1:86\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/SwapApi;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V
    .locals 1

    const-string v0, "swapApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    .line 26
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 27
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-void
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method public static final synthetic access$getSwapApi$p(Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/SwapApi;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    return-object p0
.end method

.method private final createSmartFunctionParams(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/web3j/abi/datatypes/Type;

    .line 74
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

    const-string p2, "approve"

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p1, v0, v1, v0}, Lcom/iMe/storage/data/utils/extentions/Web3jExtKt;->createSmartFunctionDataFor$default(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final createTransactionByType(Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;)Lorg/web3j/crypto/RawTransaction;
    .locals 6

    .line 68
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v2

    .line 69
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getExchangeContractAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, v5, p1}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->createSmartFunctionParams(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static/range {v0 .. v5}, Lorg/web3j/crypto/RawTransaction;->createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    const-string v0, "createTransaction(\n     \u2026ss, args.value)\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 33
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    if-eqz v0, :cond_0

    .line 35
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

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect approve args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 3
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

    .line 49
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    invoke-direct {p0, p1}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->createTransactionByType(Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;)Lorg/web3j/crypto/RawTransaction;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getChainId()J

    move-result-wide v1

    .line 55
    iget-object p1, p0, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getCredentials()Lorg/web3j/crypto/Credentials;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    invoke-static {v0, v1, v2, p1}, Lorg/web3j/crypto/TransactionEncoder;->signMessage(Lorg/web3j/crypto/RawTransaction;JLorg/web3j/crypto/Credentials;)[B

    move-result-object p1

    .line 59
    invoke-static {p1}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toHexString(signedTransaction)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect approve args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 24
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/approve/impl/EthWalletApproveDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
