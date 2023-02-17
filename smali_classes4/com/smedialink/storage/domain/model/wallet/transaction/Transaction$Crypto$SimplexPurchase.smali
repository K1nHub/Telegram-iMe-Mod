.class public final Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;
.super Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimplexPurchase"
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

.field private final feeAmount:Ljava/math/BigDecimal;

.field private final feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final id:Ljava/lang/String;

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final orderId:Ljava/lang/String;

.field private final processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field private final recipientAddress:Ljava/lang/String;

.field private final senderAddress:Ljava/lang/String;

.field private final spentAmount:Ljava/math/BigDecimal;

.field private final spentFiatCode:Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

.field private final status:Lcom/smedialink/storage/data/network/model/response/base/Status;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final txHash:Ljava/lang/String;

.field private final type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "id"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenCode"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingType"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderAddress"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderId"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spentAmount"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spentFiatCode"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct/range {p0 .. p12}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 185
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->id:Ljava/lang/String;

    .line 186
    iput-object v2, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->amount:Ljava/math/BigDecimal;

    .line 187
    iput-object v3, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 188
    iput-object v4, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 189
    iput-object v5, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->createdAt:Ljava/lang/String;

    .line 190
    iput-object v6, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 191
    iput-object v7, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    .line 192
    iput-object v8, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 193
    iput-object v9, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->feeAmount:Ljava/math/BigDecimal;

    .line 194
    iput-object v10, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 195
    iput-object v11, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->txHash:Ljava/lang/String;

    .line 196
    iput-object v12, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 197
    iput-object v13, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->senderAddress:Ljava/lang/String;

    .line 198
    iput-object v14, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->recipientAddress:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 199
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->orderId:Ljava/lang/String;

    .line 200
    iput-object v15, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentAmount:Ljava/math/BigDecimal;

    move-object/from16 v1, p17

    .line 201
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentFiatCode:Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getCreatedAt()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTxHash()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v13

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->senderAddress:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->recipientAddress:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->orderId:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentAmount:Ljava/math/BigDecimal;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentFiatCode:Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
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

    move-object/from16 p16, v15

    move-object/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->copy(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;)Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTxHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component12()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->senderAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component17()Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentFiatCode:Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    return-object v0
.end method

.method public final component2()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Lcom/smedialink/storage/data/network/model/response/base/Status;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v0

    return-object v0
.end method

.method public final component9()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;)Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    const-string v0, "id"

    move-object/from16 v18, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenCode"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingType"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderAddress"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderId"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spentAmount"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spentFiatCode"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;)V

    return-object v19
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTxHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->senderAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->senderAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->recipientAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->recipientAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->orderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentAmount:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentAmount:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentFiatCode:Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentFiatCode:Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method

.method public getFeeAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object v0
.end method

.method public final getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->senderAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpentAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getSpentFiatCode()Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentFiatCode:Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    return-object v0
.end method

.method public getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->senderAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->orderId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentFiatCode:Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimplexPurchase(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", txHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", senderAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->senderAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recipientAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spentAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentAmount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spentFiatCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->spentFiatCode:Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
