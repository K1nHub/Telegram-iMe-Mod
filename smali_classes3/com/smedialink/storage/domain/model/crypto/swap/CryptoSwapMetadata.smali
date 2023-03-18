.class public final Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;
.super Ljava/lang/Object;
.source "CryptoSwapMetadata.kt"


# instance fields
.field private final amountBound:Ljava/math/BigInteger;

.field private final amountIn:Ljava/math/BigDecimal;

.field private final amountOut:Ljava/math/BigDecimal;

.field private final callData:Ljava/lang/String;

.field private final contractAddress:Ljava/lang/String;

.field private final executionPrice:Ljava/math/BigDecimal;

.field private final feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final inputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final inputTokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

.field private final outputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final outputTokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

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

.field private final swapMethod:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

.field private final transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

.field private final value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigInteger;Ljava/util/List;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/TransactionParams;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigInteger;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/math/BigDecimal;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/math/BigInteger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "quoteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputTokenCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputTokenCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swapMethod"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountIn"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountOut"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountBound"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionPrice"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callData"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->quoteId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    .line 13
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->inputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 14
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->outputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 15
    iput-object p5, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->contractAddress:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->swapMethod:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    .line 17
    iput-object p7, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountIn:Ljava/math/BigDecimal;

    .line 18
    iput-object p8, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountOut:Ljava/math/BigDecimal;

    .line 19
    iput-object p9, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountBound:Ljava/math/BigInteger;

    .line 20
    iput-object p10, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->path:Ljava/util/List;

    .line 21
    iput-object p11, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->executionPrice:Ljava/math/BigDecimal;

    .line 22
    iput-object p12, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 23
    iput-object p13, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->value:Ljava/math/BigInteger;

    .line 24
    iput-object p14, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->callData:Ljava/lang/String;

    .line 27
    sget-object p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {p1, p3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->inputTokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    .line 28
    invoke-virtual {p1, p4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->outputTokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigInteger;Ljava/util/List;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/math/BigInteger;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->quoteId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->inputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->outputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->contractAddress:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->swapMethod:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountIn:Ljava/math/BigDecimal;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountOut:Ljava/math/BigDecimal;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountBound:Ljava/math/BigInteger;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->path:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->executionPrice:Ljava/math/BigDecimal;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->value:Ljava/math/BigInteger;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->callData:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p14

    :goto_d
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

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->copy(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigInteger;Ljava/util/List;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/math/BigInteger;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->quoteId:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->path:Ljava/util/List;

    return-object v0
.end method

.method public final component11()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->executionPrice:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component12()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final component13()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->callData:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    return-object v0
.end method

.method public final component3()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->inputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final component4()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->outputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->swapMethod:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    return-object v0
.end method

.method public final component7()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountIn:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component8()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountOut:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component9()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigInteger;Ljava/util/List;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/math/BigInteger;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/TransactionParams;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigDecimal;",
            "Ljava/math/BigInteger;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/math/BigDecimal;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/math/BigInteger;",
            "Ljava/lang/String;",
            ")",
            "Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;"
        }
    .end annotation

    const-string v0, "quoteId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputTokenCode"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputTokenCode"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swapMethod"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountIn"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountOut"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountBound"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionPrice"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callData"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-object v1, v0

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v15}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;-><init>(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigInteger;Ljava/util/List;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->quoteId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->quoteId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->inputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->inputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->outputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->outputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->contractAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->contractAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->swapMethod:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->swapMethod:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountIn:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountIn:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountOut:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountOut:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountBound:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountBound:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->path:Ljava/util/List;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->path:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->executionPrice:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->executionPrice:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->value:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->value:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->callData:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->callData:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final getAmountBound()Ljava/math/BigInteger;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getAmountIn()Ljava/math/BigDecimal;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountIn:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getAmountOut()Ljava/math/BigDecimal;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountOut:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getCallData()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->callData:Ljava/lang/String;

    return-object v0
.end method

.method public final getContractAddress()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getExecutionPrice()Ljava/math/BigDecimal;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->executionPrice:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final getInputTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->inputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final getInputTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->inputTokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    return-object v0
.end method

.method public final getOutputTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->outputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final getOutputTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->outputTokenInfo:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

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

    .line 20
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->path:Ljava/util/List;

    return-object v0
.end method

.method public final getQuoteId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSwapMethod()Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->swapMethod:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    return-object v0
.end method

.method public final getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    return-object v0
.end method

.method public final getValue()Ljava/math/BigInteger;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->quoteId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->inputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->outputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->contractAddress:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->swapMethod:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountIn:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountOut:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountBound:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->path:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->executionPrice:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->value:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->callData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoSwapMetadata(quoteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->quoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->inputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->outputTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->contractAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", swapMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->swapMethod:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amountIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountIn:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amountOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountOut:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amountBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->amountBound:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->path:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", executionPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->executionPrice:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->callData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
