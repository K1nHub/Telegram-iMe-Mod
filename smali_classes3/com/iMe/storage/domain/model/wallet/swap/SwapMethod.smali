.class public final enum Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;
.super Ljava/lang/Enum;
.source "SwapMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;,
        Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwapMethod.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwapMethod.kt\ncom/iMe/storage/domain/model/wallet/swap/SwapMethod\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1855#2,2:64\n1855#2,2:66\n*S KotlinDebug\n*F\n+ 1 SwapMethod.kt\ncom/iMe/storage/domain/model/wallet/swap/SwapMethod\n*L\n26#1:64,2\n39#1:66,2\n*E\n"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

.field public static final Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;

.field public static final enum EXACT_ETH_FOR_TOKENS:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

.field public static final enum EXACT_TOKENS_FOR_ETH:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

.field public static final enum EXACT_TOKENS_FOR_TOKENS:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

.field public static final enum UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

.field private static final UNSUPPORTED_SWAP_METHOD:Ljava/lang/String; = "Swap method is not supported yet"


# instance fields
.field private final methodName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->EXACT_TOKENS_FOR_TOKENS:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->EXACT_ETH_FOR_TOKENS:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->EXACT_TOKENS_FOR_ETH:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    const-string v1, "EXACT_TOKENS_FOR_TOKENS"

    const/4 v2, 0x0

    const-string v3, "swapExactTokensForTokens"

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->EXACT_TOKENS_FOR_TOKENS:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    .line 14
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    const-string v1, "EXACT_ETH_FOR_TOKENS"

    const/4 v2, 0x1

    const-string v3, "swapExactETHForTokens"

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->EXACT_ETH_FOR_TOKENS:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    .line 15
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    const-string v1, "EXACT_TOKENS_FOR_ETH"

    const/4 v2, 0x2

    const-string v3, "swapExactTokensForETH"

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->EXACT_TOKENS_FOR_ETH:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->$values()[Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->methodName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    return-object v0
.end method


# virtual methods
.method public final createSmartFunctionParams(Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 8

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "encode(function)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    const/4 v6, 0x3

    if-eq v0, v6, :cond_3

    const/4 p2, 0x4

    if-ne v0, p2, :cond_2

    .line 49
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object p2

    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_1

    if-ne p2, v5, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Swap method is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getCallData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    goto/16 :goto_3

    .line 51
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 36
    :cond_3
    new-instance v0, Lwallet/core/jni/EthereumAbiFunction;

    iget-object v5, p0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->methodName:Ljava/lang/String;

    invoke-direct {v0, v5}, Lwallet/core/jni/EthereumAbiFunction;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmountOutBound()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lwallet/core/jni/EthereumAbiFunction;->addParamUInt256([BZ)I

    .line 38
    invoke-virtual {v0, v4}, Lwallet/core/jni/EthereumAbiFunction;->addParamArray(Z)I

    move-result v5

    .line 39
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getPath()Ljava/util/List;

    move-result-object v6

    .line 1855
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 40
    invoke-static {v7, v4, v3, v2}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->hexToByteArray$default(Ljava/lang/String;ZILjava/lang/Object;)[B

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lwallet/core/jni/EthereumAbiFunction;->addInArrayParamAddress(I[B)I

    goto :goto_1

    .line 42
    :cond_4
    invoke-static {p2, v4, v3, v2}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->hexToByteArray$default(Ljava/lang/String;ZILjava/lang/Object;)[B

    move-result-object p2

    invoke-virtual {v0, p2, v4}, Lwallet/core/jni/EthereumAbiFunction;->addParamAddress([BZ)I

    .line 43
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getDeadline()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Lwallet/core/jni/EthereumAbiFunction;->addParamUInt256([BZ)I

    .line 45
    invoke-static {v0}, Lwallet/core/jni/EthereumAbi;->encode(Lwallet/core/jni/EthereumAbiFunction;)[B

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->toByteString([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    goto :goto_3

    .line 22
    :cond_5
    new-instance v0, Lwallet/core/jni/EthereumAbiFunction;

    iget-object v5, p0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->methodName:Ljava/lang/String;

    invoke-direct {v0, v5}, Lwallet/core/jni/EthereumAbiFunction;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lwallet/core/jni/EthereumAbiFunction;->addParamUInt256([BZ)I

    .line 24
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmountOutBound()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lwallet/core/jni/EthereumAbiFunction;->addParamUInt256([BZ)I

    .line 25
    invoke-virtual {v0, v4}, Lwallet/core/jni/EthereumAbiFunction;->addParamArray(Z)I

    move-result v5

    .line 26
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getPath()Ljava/util/List;

    move-result-object v6

    .line 1855
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 27
    invoke-static {v7, v4, v3, v2}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->hexToByteArray$default(Ljava/lang/String;ZILjava/lang/Object;)[B

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lwallet/core/jni/EthereumAbiFunction;->addInArrayParamAddress(I[B)I

    goto :goto_2

    .line 29
    :cond_6
    invoke-static {p2, v4, v3, v2}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->hexToByteArray$default(Ljava/lang/String;ZILjava/lang/Object;)[B

    move-result-object p2

    invoke-virtual {v0, p2, v4}, Lwallet/core/jni/EthereumAbiFunction;->addParamAddress([BZ)I

    .line 30
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getDeadline()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Lwallet/core/jni/EthereumAbiFunction;->addParamUInt256([BZ)I

    .line 32
    invoke-static {v0}, Lwallet/core/jni/EthereumAbi;->encode(Lwallet/core/jni/EthereumAbiFunction;)[B

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->toByteString([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->methodName:Ljava/lang/String;

    return-object v0
.end method
