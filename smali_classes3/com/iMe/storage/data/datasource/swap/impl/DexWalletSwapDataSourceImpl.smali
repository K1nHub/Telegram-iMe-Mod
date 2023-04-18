.class public final Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;
.super Ljava/lang/Object;
.source "DexWalletSwapDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDexWalletSwapDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DexWalletSwapDataSourceImpl.kt\ncom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,79:1\n14#2:80\n11#3:81\n18#4:82\n*S KotlinDebug\n*F\n+ 1 DexWalletSwapDataSourceImpl.kt\ncom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl\n*L\n31#1:80\n73#1:81\n73#1:82\n*E\n"
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    .line 22
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 23
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-void
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method public static final synthetic access$getSwapApi$p(Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/SwapApi;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    return-object p0
.end method


# virtual methods
.method public sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 11
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
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    if-eqz v0, :cond_5

    .line 51
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getPrivateKeyBytes()[B

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    :cond_1
    move-object v10, v1

    .line 54
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    .line 55
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapMethod()Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v1, p1, v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->createSmartFunctionParams(Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 56
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v1

    .line 58
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;->setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapMethod()Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v2

    sget-object v3, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 62
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 64
    :goto_1
    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    .line 57
    invoke-virtual {v1, v0}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;->setContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lwallet/core/jni/proto/Ethereum$Transaction;

    .line 69
    sget-object v2, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    .line 70
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getChainId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v6

    .line 71
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getContractAddress()Ljava/lang/String;

    move-result-object v8

    const-string p1, "transaction"

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {v2 .. v10}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->sign(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lwallet/core/jni/proto/Ethereum$Transaction;[B)Ljava/lang/String;

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

    .line 49
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect swap args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 20
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public swap(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
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

    .line 29
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect swap args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
