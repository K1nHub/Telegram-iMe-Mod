.class public final Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;
.super Ljava/lang/Object;
.source "EVMWalletTransferDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEVMWalletTransferDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EVMWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,104:1\n70#2:105\n14#3:106\n11#4:107\n18#5:108\n*S KotlinDebug\n*F\n+ 1 EVMWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl\n*L\n53#1:105\n56#1:106\n75#1:107\n75#1:108\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/api/own/WalletApi;)V
    .locals 1

    const-string v0, "firebaseErrorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletApi"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 33
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    .line 34
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 35
    iput-object p4, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    return-void
.end method

.method public static final synthetic access$getCryptoWalletApi$p(Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method private final createSmartFunctionParams(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/web3j/abi/datatypes/Type;

    .line 96
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

    invoke-static {p2, p1, v0, v1, v0}, Lcom/iMe/storage/data/utils/extentions/Web3jExtKt;->createSmartFunctionDataFor$default(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final createTransactionByType(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)Lorg/web3j/crypto/RawTransaction;
    .locals 8

    .line 83
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

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
    const-string v1, "{\n                RawTra\u2026          )\n            }"

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v3

    .line 86
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getRecipientAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getWeiConvertUnit()Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->convertToWei(Ljava/lang/Number;Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigInteger;

    move-result-object p1

    .line 84
    invoke-static {v0, v2, v3, v4, p1}, Lorg/web3j/crypto/RawTransaction;->createEtherTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    .line 83
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v3

    .line 91
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getRecipientAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getWeiConvertUnit()Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->convertToWei(Ljava/lang/Number;Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, v5, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->createSmartFunctionParams(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {v0, v2, v3, v4, p1}, Lorg/web3j/crypto/RawTransaction;->createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    .line 88
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method


# virtual methods
.method public getTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 46
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;

    .line 47
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    .line 46
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getEVMCryptoTransferData(Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
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

    .line 65
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    if-eqz v0, :cond_1

    .line 67
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    invoke-direct {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->createTransactionByType(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)Lorg/web3j/crypto/RawTransaction;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getChainId()J

    move-result-wide v1

    .line 71
    iget-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getCredentials()Lorg/web3j/crypto/Credentials;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-static {v0, v1, v2, p1}, Lorg/web3j/crypto/TransactionEncoder;->signMessage(Lorg/web3j/crypto/RawTransaction;JLorg/web3j/crypto/Credentials;)[B

    move-result-object p1

    .line 75
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

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect transfer args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 31
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public transfer(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
