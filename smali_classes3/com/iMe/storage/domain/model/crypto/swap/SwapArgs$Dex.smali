.class public final Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;
.super Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;
.source "SwapArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dex"
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final amountOutBound:Ljava/math/BigInteger;

.field private final chainId:J

.field private final contractAddress:Ljava/lang/String;

.field private final data:Ljava/lang/String;

.field private final deadlineMinutes:I

.field private final gasLimit:Ljava/math/BigInteger;

.field private final gasPrice:Ljava/math/BigInteger;

.field private final inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final networkId:Ljava/lang/String;

.field private final nonce:Ljava/math/BigInteger;

.field private final outputNetworkId:Ljava/lang/String;

.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final quoteId:Ljava/lang/String;

.field private final swapMethod:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

.field private final swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field private final value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            "Ljava/math/BigDecimal;",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "J",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/math/BigInteger;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v9, p8

    move-object/from16 v8, p9

    move-object/from16 v7, p10

    move-object/from16 v6, p11

    move-object/from16 v4, p12

    move-object/from16 v5, p14

    move-object/from16 v3, p15

    move-object/from16 v2, p16

    move-object/from16 v1, p17

    const-string v0, "swapProtocol"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputToken"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasPrice"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasLimit"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountOutBound"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractAddress"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swapMethod"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quoteId"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, v16

    .line 40
    invoke-direct/range {v0 .. v9}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    iput-object v11, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 24
    iput-object v12, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->amount:Ljava/math/BigDecimal;

    .line 25
    iput-object v13, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-wide/from16 v0, p4

    .line 26
    iput-wide v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->chainId:J

    .line 27
    iput-object v14, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->nonce:Ljava/math/BigInteger;

    .line 28
    iput-object v15, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->gasPrice:Ljava/math/BigInteger;

    move-object/from16 v0, p8

    .line 29
    iput-object v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->gasLimit:Ljava/math/BigInteger;

    move-object/from16 v0, p9

    .line 30
    iput-object v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->amountOutBound:Ljava/math/BigInteger;

    move-object/from16 v0, p10

    .line 31
    iput-object v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->contractAddress:Ljava/lang/String;

    move-object/from16 v0, p11

    .line 32
    iput-object v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->swapMethod:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-object/from16 v0, p12

    .line 33
    iput-object v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->path:Ljava/util/List;

    move/from16 v0, p13

    .line 34
    iput v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->deadlineMinutes:I

    move-object/from16 v0, p14

    .line 35
    iput-object v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->value:Ljava/math/BigInteger;

    move-object/from16 v0, p15

    .line 36
    iput-object v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->data:Ljava/lang/String;

    move-object/from16 v0, p16

    .line 37
    iput-object v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->quoteId:Ljava/lang/String;

    move-object/from16 v0, p17

    .line 38
    iput-object v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->networkId:Ljava/lang/String;

    move-object/from16 v0, p18

    .line 39
    iput-object v0, v10, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->outputNetworkId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getChainId()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->amountOutBound:Ljava/math/BigInteger;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->contractAddress:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->swapMethod:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->path:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget v14, v0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->deadlineMinutes:I

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->value:Ljava/math/BigInteger;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->data:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->quoteId:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->networkId:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->outputNetworkId:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p18

    :goto_10
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p17, v15

    move-object/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->copy(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->swapMethod:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->path:Ljava/util/List;

    return-object v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->deadlineMinutes:I

    return v0
.end method

.method public final component13()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->networkId:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->outputNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    return-object v0
.end method

.method public final component4()J
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getChainId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component5()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->amountOutBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            "Ljava/math/BigDecimal;",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "J",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/math/BigInteger;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    const-string v0, "swapProtocol"

    move-object/from16 v19, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputToken"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasPrice"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasLimit"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountOutBound"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractAddress"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swapMethod"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quoteId"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v20, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct/range {v0 .. v18}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v20
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getChainId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getChainId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->amountOutBound:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->amountOutBound:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->contractAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->contractAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->swapMethod:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->swapMethod:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->path:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->path:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->deadlineMinutes:I

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->deadlineMinutes:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->value:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->value:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->data:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->quoteId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->quoteId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->networkId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->networkId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->outputNetworkId:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->outputNetworkId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getAmountOutBound()Ljava/math/BigInteger;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->amountOutBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getChainId()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->chainId:J

    return-wide v0
.end method

.method public final getContractAddress()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getConvertedAmount()Ljava/math/BigInteger;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getConvertedAmount(Ljava/math/BigDecimal;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeadline()Ljava/math/BigInteger;
    .locals 5

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->deadlineMinutes:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "valueOf(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDeadlineMinutes()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->deadlineMinutes:I

    return v0
.end method

.method public getGasLimit()Ljava/math/BigInteger;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGasPrice()Ljava/math/BigInteger;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getNetworkId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->networkId:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getOutputNetworkId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->outputNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->path:Ljava/util/List;

    return-object v0
.end method

.method public final getQuoteId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSwapMethod()Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->swapMethod:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    return-object v0
.end method

.method public getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method

.method public final getValue()Ljava/math/BigInteger;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getChainId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->amountOutBound:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->contractAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->swapMethod:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->path:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->deadlineMinutes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->value:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->quoteId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->networkId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->outputNetworkId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dex(swapProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getChainId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getNonce()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gasPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gasLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amountOutBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->amountOutBound:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->contractAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", swapMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->swapMethod:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->path:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deadlineMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->deadlineMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quoteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->quoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->networkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;->outputNetworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
