.class public final Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;
.super Ljava/lang/Object;
.source "GetQuoteToSwapResponse.kt"


# instance fields
.field private final amountBound:Ljava/lang/String;

.field private final amountIn:Ljava/lang/String;

.field private final amountOut:Ljava/lang/String;

.field private final callData:Ljava/lang/String;

.field private final defiProtocol:Ljava/lang/String;

.field private final executionPrice:Ljava/math/BigDecimal;

.field private final feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final inputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final outputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

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

.field private final spenderContractAddress:Ljava/lang/String;

.field private final swapMethod:Ljava/lang/String;

.field private final transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;",
            "Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    const-string v12, "transactionParams"

    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "quoteId"

    invoke-static {p2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "spenderContractAddress"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "inputToken"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "outputToken"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "amountIn"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "amountOut"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "amountBound"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "executionPrice"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "defiProtocol"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "feeToken"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    .line 9
    iput-object v2, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->quoteId:Ljava/lang/String;

    .line 10
    iput-object v3, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->spenderContractAddress:Ljava/lang/String;

    .line 11
    iput-object v4, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->inputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 12
    iput-object v5, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->outputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-object/from16 v1, p6

    .line 13
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->swapMethod:Ljava/lang/String;

    .line 14
    iput-object v6, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountIn:Ljava/lang/String;

    .line 15
    iput-object v7, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountOut:Ljava/lang/String;

    .line 16
    iput-object v8, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountBound:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 17
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->path:Ljava/util/List;

    .line 18
    iput-object v9, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->executionPrice:Ljava/math/BigDecimal;

    .line 19
    iput-object v10, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->defiProtocol:Ljava/lang/String;

    .line 20
    iput-object v11, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-object/from16 v1, p14

    .line 21
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->callData:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 22
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->quoteId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->spenderContractAddress:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->inputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->outputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->swapMethod:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountIn:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountOut:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountBound:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->path:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->executionPrice:Ljava/math/BigDecimal;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->defiProtocol:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->callData:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->value:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p15

    :goto_e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->path:Ljava/util/List;

    return-object v0
.end method

.method public final component11()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->executionPrice:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->defiProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->callData:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->spenderContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->inputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final component5()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->outputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->swapMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountIn:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountOut:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountBound:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;",
            "Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;"
        }
    .end annotation

    const-string v0, "transactionParams"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quoteId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spenderContractAddress"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputToken"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputToken"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountIn"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountOut"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountBound"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionPrice"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defiProtocol"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;

    move-object v1, v0

    move-object/from16 v7, p6

    move-object/from16 v11, p10

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;-><init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->quoteId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->quoteId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->spenderContractAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->spenderContractAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->inputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->inputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->outputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->outputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->swapMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->swapMethod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountIn:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountIn:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountOut:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountOut:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountBound:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountBound:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->path:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->path:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->executionPrice:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->executionPrice:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->defiProtocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->defiProtocol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->callData:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->callData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->value:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAmountBound()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountBound:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmountIn()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountIn:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmountOut()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountOut:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallData()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->callData:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefiProtocol()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->defiProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getExecutionPrice()Ljava/math/BigDecimal;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->executionPrice:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final getInputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->inputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final getOutputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->outputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

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

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->path:Ljava/util/List;

    return-object v0
.end method

.method public final getQuoteId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpenderContractAddress()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->spenderContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSwapMethod()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->swapMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->quoteId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->spenderContractAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->inputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->outputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->swapMethod:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountIn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountOut:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountBound:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->path:Ljava/util/List;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->executionPrice:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->defiProtocol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->callData:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->value:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetQuoteToSwapResponse(transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quoteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->quoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spenderContractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->spenderContractAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->inputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->outputToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", swapMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->swapMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amountIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountIn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amountOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountOut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amountBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->amountBound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->path:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", executionPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->executionPrice:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defiProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->defiProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->callData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
