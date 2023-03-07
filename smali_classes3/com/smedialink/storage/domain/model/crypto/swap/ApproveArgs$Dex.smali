.class public final Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;
.super Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs;
.source "ApproveArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dex"
.end annotation


# instance fields
.field private final chainId:J

.field private final exchangeContractAddress:Ljava/lang/String;

.field private final gasLimit:Ljava/math/BigInteger;

.field private final gasPrice:Ljava/math/BigInteger;

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final nonce:Ljava/math/BigInteger;

.field private final protocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

.field private final recipientAddress:Ljava/lang/String;

.field private final token:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

.field private final tokenContractAddress:Ljava/lang/String;

.field private final value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Ljava/math/BigInteger;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasPrice"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasLimit"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenContractAddress"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exchangeContractAddress"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Ljava/lang/Number;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->token:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 16
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->value:Ljava/math/BigInteger;

    .line 17
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->recipientAddress:Ljava/lang/String;

    .line 18
    iput-wide p4, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->chainId:J

    .line 19
    iput-object p6, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->nonce:Ljava/math/BigInteger;

    .line 20
    iput-object p7, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasPrice:Ljava/math/BigInteger;

    .line 21
    iput-object p8, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasLimit:Ljava/math/BigInteger;

    .line 22
    iput-object p9, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->tokenContractAddress:Ljava/lang/String;

    .line 23
    iput-object p10, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->exchangeContractAddress:Ljava/lang/String;

    .line 24
    iput-object p11, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 25
    iput-object p12, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->protocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Ljava/math/BigInteger;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->recipientAddress:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->chainId:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->nonce:Ljava/math/BigInteger;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasPrice:Ljava/math/BigInteger;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasLimit:Ljava/math/BigInteger;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->tokenContractAddress:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->exchangeContractAddress:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->protocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p12

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->copy(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Ljava/math/BigInteger;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final component11()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->protocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method

.method public final component2()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->chainId:J

    return-wide v0
.end method

.method public final component5()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component6()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component7()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->tokenContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->exchangeContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Ljava/math/BigInteger;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;
    .locals 14

    const-string v0, "token"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasPrice"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasLimit"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenContractAddress"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exchangeContractAddress"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    move-object v1, v0

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v13}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Ljava/math/BigInteger;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->recipientAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->recipientAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->chainId:J

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->chainId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->nonce:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->nonce:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasPrice:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasPrice:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasLimit:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasLimit:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->tokenContractAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->tokenContractAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->exchangeContractAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->exchangeContractAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->protocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->protocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getChainId()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->chainId:J

    return-wide v0
.end method

.method public final getExchangeContractAddress()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->exchangeContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getGasLimit()Ljava/math/BigInteger;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getGasPrice()Ljava/math/BigInteger;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->protocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method

.method public final getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->token:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    return-object v0
.end method

.method public bridge synthetic getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    move-result-object v0

    return-object v0
.end method

.method public final getTokenContractAddress()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->tokenContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Number;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->chainId:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasPrice:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasLimit:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->tokenContractAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->exchangeContractAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->protocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dex(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recipientAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->chainId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gasPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasPrice:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gasLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->gasLimit:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenContractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->tokenContractAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exchangeContractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->exchangeContractAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;->protocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
