.class public final Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;
.super Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transfer"
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

.field private final feeAmount:Ljava/math/BigDecimal;

.field private final feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final id:Ljava/lang/String;

.field private final processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field private final recipientUserId:Ljava/lang/String;

.field private final status:Lcom/smedialink/storage/data/network/model/response/base/Status;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p5

    move-object/from16 v9, p6

    move-object/from16 v8, p7

    move-object/from16 v7, p8

    move-object/from16 v6, p9

    move-object/from16 v5, p10

    move-object/from16 v4, p11

    const-string v0, "id"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenCode"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingType"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientUserId"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

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

    move-object/from16 v11, v16

    .line 48
    invoke-direct/range {v0 .. v11}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    iput-object v13, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->id:Ljava/lang/String;

    .line 38
    iput-object v14, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->amount:Ljava/math/BigDecimal;

    .line 39
    iput-object v15, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-object/from16 v0, p4

    .line 40
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-object/from16 v0, p5

    .line 41
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->createdAt:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 42
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v0, p7

    .line 43
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-object/from16 v0, p8

    .line 44
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-object/from16 v0, p9

    .line 45
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->feeAmount:Ljava/math/BigDecimal;

    move-object/from16 v0, p10

    .line 46
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v0, p11

    .line 47
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->recipientUserId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getAmount()Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v8

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v9

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v10

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    move-object v0, p0

    iget-object v11, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->recipientUserId:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object v0, p0

    move-object/from16 v11, p11

    :goto_a
    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    invoke-virtual/range {p0 .. p11}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->copy(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->recipientUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Lcom/smedialink/storage/data/network/model/response/base/Status;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v0

    return-object v0
.end method

.method public final component9()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;
    .locals 13

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenCode"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingType"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientUserId"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->recipientUserId:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->recipientUserId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method

.method public getFeeAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object v0
.end method

.method public final getRecipientUserId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->recipientUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->recipientUserId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transfer(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recipientUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;->recipientUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
