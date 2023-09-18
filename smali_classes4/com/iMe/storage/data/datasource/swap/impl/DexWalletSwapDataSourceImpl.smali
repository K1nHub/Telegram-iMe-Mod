.class public final Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;
.super Ljava/lang/Object;
.source "DexWalletSwapDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$Companion;,
        Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDexWalletSwapDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DexWalletSwapDataSourceImpl.kt\ncom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,106:1\n14#2:107\n9#3:108\n7#3:109\n13#3:111\n18#4:110\n18#4:112\n*S KotlinDebug\n*F\n+ 1 DexWalletSwapDataSourceImpl.kt\ncom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl\n*L\n36#1:107\n56#1:108\n56#1:109\n94#1:111\n56#1:110\n94#1:112\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final gson:Lcom/google/gson/Gson;

.field private final swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/google/gson/Gson;Lcom/iMe/storage/data/network/api/own/SwapApi;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swapApi"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 28
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 29
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->gson:Lcom/google/gson/Gson;

    .line 30
    iput-object p4, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    return-void
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method public static final synthetic access$getSwapApi$p(Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/SwapApi;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    return-object p0
.end method


# virtual methods
.method public sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 12
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

    .line 54
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    const-string v1, "just(this)"

    if-nez v0, :cond_0

    new-instance p1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v2}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 58
    :cond_0
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    .line 59
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v2

    sget-object v3, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 61
    iget-object v2, p0, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->gson:Lcom/google/gson/Gson;

    .line 62
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getCallData()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    const-string v3, "message"

    .line 63
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 64
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v4, "order"

    .line 65
    invoke-virtual {v3, v4, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 68
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getPrivateKey()Lwallet/core/jni/PrivateKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getCallData()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lwallet/core/jni/EthereumMessageSigner;->signTypedMessage(Lwallet/core/jni/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "signature"

    .line 66
    invoke-virtual {v3, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapMethod()Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->createSmartFunctionParams(Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 75
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v4

    .line 77
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v5

    .line 78
    invoke-virtual {v5, v2}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;->setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapMethod()Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v5

    sget-object v6, Lcom/iMe/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-ne v5, v3, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    .line 83
    :goto_0
    invoke-static {v3}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    .line 76
    invoke-virtual {v4, v2}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;->setContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lwallet/core/jni/proto/Ethereum$Transaction;

    .line 88
    sget-object v3, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    .line 89
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getChainId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v7

    .line 90
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getContractAddress()Ljava/lang/String;

    move-result-object v9

    const-string p1, "transaction"

    invoke-static {v10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getPrivateKeyBytes()[B

    move-result-object v11

    .line 88
    invoke-virtual/range {v3 .. v11}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->sign(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lwallet/core/jni/proto/Ethereum$Transaction;[B)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v0, "when (swapProtocol) {\n  \u2026          }\n            }"

    .line 90
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 54
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect swap args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 26
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

    .line 34
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    if-eqz v0, :cond_0

    .line 36
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

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect swap args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
