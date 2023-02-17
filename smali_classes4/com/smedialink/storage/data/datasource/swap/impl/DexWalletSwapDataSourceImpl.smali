.class public final Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;
.super Ljava/lang/Object;
.source "DexWalletSwapDataSourceImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$Companion;,
        Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDexWalletSwapDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DexWalletSwapDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,160:1\n15#2:161\n8#3:162\n18#4:163\n1547#5:164\n1618#5,3:165\n*S KotlinDebug\n*F\n+ 1 DexWalletSwapDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl\n*L\n39#1:161\n67#1:162\n67#1:163\n117#1:164\n117#1:165,3\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final swapApi:Lcom/smedialink/storage/data/network/api/own/SwapApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/SwapApi;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V
    .locals 1

    const-string v0, "swapApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->swapApi:Lcom/smedialink/storage/data/network/api/own/SwapApi;

    .line 30
    iput-object p2, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 31
    iput-object p3, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-void
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;)Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method public static final synthetic access$getSwapApi$p(Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;)Lcom/smedialink/storage/data/network/api/own/SwapApi;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->swapApi:Lcom/smedialink/storage/data/network/api/own/SwapApi;

    return-object p0
.end method

.method private final calculateDeadline(I)Ljava/math/BigInteger;
    .locals 4

    .line 150
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 151
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-int/lit8 p1, p1, 0x3c

    int-to-double v2, p1

    add-double/2addr v0, v2

    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object p1

    const-string v0, "floor(now / 1000.0) + 60\u2026mal().toBigIntegerExact()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createSmartFunctionParams(Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;)Ljava/lang/String;
    .locals 13

    .line 115
    const-class v0, Lorg/web3j/abi/datatypes/Address;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getDeadline()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->calculateDeadline(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 116
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmount()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getInputToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    move-result-object v3

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getWeiConvertUnit(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->convertToWei(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigInteger;

    move-result-object v2

    .line 117
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getPath()Ljava/util/List;

    move-result-object v3

    .line 1547
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1619
    check-cast v5, Ljava/lang/String;

    .line 117
    new-instance v6, Lorg/web3j/abi/datatypes/Address;

    invoke-direct {v6, v5}, Lorg/web3j/abi/datatypes/Address;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapMethod()Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v3

    sget-object v5, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_3

    if-ne v5, v7, :cond_2

    .line 134
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->getMethodName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Lorg/web3j/abi/datatypes/Type;

    .line 136
    new-instance v5, Lorg/web3j/abi/datatypes/generated/Uint256;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmountOutBound()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v5, p1}, Lorg/web3j/abi/datatypes/generated/Uint256;-><init>(Ljava/math/BigInteger;)V

    aput-object v5, v3, v6

    .line 137
    new-instance p1, Lorg/web3j/abi/datatypes/DynamicArray;

    invoke-direct {p1, v0, v4}, Lorg/web3j/abi/datatypes/DynamicArray;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    aput-object p1, v3, v9

    .line 138
    new-instance p1, Lorg/web3j/abi/datatypes/Address;

    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v11

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p1, v0}, Lorg/web3j/abi/datatypes/Address;-><init>(Ljava/lang/String;)V

    aput-object p1, v3, v8

    .line 139
    new-instance p1, Lorg/web3j/abi/datatypes/generated/Uint256;

    invoke-direct {p1, v1}, Lorg/web3j/abi/datatypes/generated/Uint256;-><init>(Ljava/math/BigInteger;)V

    aput-object p1, v3, v7

    .line 135
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 133
    invoke-static {v2, p1, v11, v10, v11}, Lcom/smedialink/storage/data/utils/extentions/Web3jExtKt;->createSmartFunctionDataFor$default(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 143
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Swap method is not supported yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_3
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    new-array v5, v5, [Lorg/web3j/abi/datatypes/Type;

    .line 124
    new-instance v12, Lorg/web3j/abi/datatypes/generated/Uint256;

    invoke-direct {v12, v2}, Lorg/web3j/abi/datatypes/generated/Uint256;-><init>(Ljava/math/BigInteger;)V

    aput-object v12, v5, v6

    .line 125
    new-instance v2, Lorg/web3j/abi/datatypes/generated/Uint256;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmountOutBound()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/web3j/abi/datatypes/generated/Uint256;-><init>(Ljava/math/BigInteger;)V

    aput-object v2, v5, v9

    .line 126
    new-instance p1, Lorg/web3j/abi/datatypes/DynamicArray;

    invoke-direct {p1, v0, v4}, Lorg/web3j/abi/datatypes/DynamicArray;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    aput-object p1, v5, v8

    .line 127
    new-instance p1, Lorg/web3j/abi/datatypes/Address;

    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v11

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p1, v0}, Lorg/web3j/abi/datatypes/Address;-><init>(Ljava/lang/String;)V

    aput-object p1, v5, v7

    .line 128
    new-instance p1, Lorg/web3j/abi/datatypes/generated/Uint256;

    invoke-direct {p1, v1}, Lorg/web3j/abi/datatypes/generated/Uint256;-><init>(Ljava/math/BigInteger;)V

    aput-object p1, v5, v10

    .line 123
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 121
    invoke-static {v3, p1, v11, v10, v11}, Lcom/smedialink/storage/data/utils/extentions/Web3jExtKt;->createSmartFunctionDataFor$default(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private final createTransactionByType(Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;)Lorg/web3j/crypto/RawTransaction;
    .locals 8

    .line 75
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapMethod()Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "{\n                RawTra\u2026          )\n            }"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 97
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Swap method is not supported yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v3

    .line 103
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getContractAddress()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 105
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getData()Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-static/range {v1 .. v6}, Lorg/web3j/crypto/RawTransaction;->createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    const-string v0, "{\n                when (\u2026          }\n            }"

    .line 96
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 88
    :cond_3
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v2

    .line 89
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v3

    .line 90
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v4

    .line 91
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getContractAddress()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getInputToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    move-result-object v6

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getWeiConvertUnit(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->convertToWei(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigInteger;

    move-result-object v6

    .line 93
    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->createSmartFunctionParams(Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;)Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-static/range {v2 .. v7}, Lorg/web3j/crypto/RawTransaction;->createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    .line 86
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v3

    .line 80
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v4

    .line 81
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getContractAddress()Ljava/lang/String;

    move-result-object v5

    .line 82
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 83
    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->createSmartFunctionParams(Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;)Ljava/lang/String;

    move-result-object v7

    .line 77
    invoke-static/range {v2 .. v7}, Lorg/web3j/crypto/RawTransaction;->createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    .line 76
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method


# virtual methods
.method public sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;

    if-eqz v0, :cond_1

    .line 59
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;

    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->createTransactionByType(Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;)Lorg/web3j/crypto/RawTransaction;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;->getChainId()J

    move-result-wide v1

    .line 63
    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;->getCredentials()Lorg/web3j/crypto/Credentials;

    move-result-object p1

    .line 60
    :goto_0
    invoke-static {v0, v1, v2, p1}, Lorg/web3j/crypto/TransactionEncoder;->signMessage(Lorg/web3j/crypto/RawTransaction;JLorg/web3j/crypto/Credentials;)[B

    move-result-object p1

    .line 67
    invoke-static {p1}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect swap args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 28
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public swap(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect swap args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
