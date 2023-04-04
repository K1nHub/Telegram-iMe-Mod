.class public final Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;
.super Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;
.source "BinanceTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pay"
.end annotation


# instance fields
.field private final amount:D

.field private final asset:Ljava/lang/String;

.field private final assetLogo:Ljava/lang/String;

.field private final assetName:Ljava/lang/String;

.field private final clientTradeNo:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

.field private final initiatorUserId:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final payerUserId:Ljava/lang/String;

.field private final status:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

.field private final transactionId:Ljava/lang/String;

.field private final type:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p7

    move-object/from16 v9, p8

    move-object/from16 v8, p9

    move-object/from16 v7, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v4, p13

    move-object/from16 v3, p14

    const-string v0, "orderId"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionId"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payerUserId"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initiatorUserId"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetLogo"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientTradeNo"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object v15, v14

    move-object/from16 v14, v16

    .line 47
    invoke-direct/range {v0 .. v14}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v15

    .line 34
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->orderId:Ljava/lang/String;

    move-object/from16 v1, p2

    .line 35
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->transactionId:Ljava/lang/String;

    move-object/from16 v1, p3

    .line 36
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->payerUserId:Ljava/lang/String;

    move-object/from16 v1, p4

    .line 37
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->initiatorUserId:Ljava/lang/String;

    move-wide/from16 v1, p5

    .line 38
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->amount:D

    move-object/from16 v1, p7

    .line 39
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->asset:Ljava/lang/String;

    move-object/from16 v1, p8

    .line 40
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->assetName:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 41
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->assetLogo:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 42
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->direction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-object/from16 v1, p11

    .line 43
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->type:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-object/from16 v1, p12

    .line 44
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->status:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-object/from16 v1, p13

    .line 45
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->createdAt:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 46
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->clientTradeNo:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getOrderId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getPayerUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAmount()D

    move-result-wide v5

    goto :goto_4

    :cond_4
    move-wide/from16 v5, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAsset()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetName()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetLogo()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v12

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getCreatedAt()Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    :cond_b
    move-object/from16 v13, p13

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move-object v0, p0

    iget-object v14, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->clientTradeNo:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object v0, p0

    move-object/from16 v14, p14

    :goto_c
    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-wide/from16 p5, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    invoke-virtual/range {p0 .. p14}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getOrderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v0

    return-object v0
.end method

.method public final component11()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v0

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->clientTradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getPayerUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()D
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAmount()D

    move-result-wide v0

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAsset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetLogo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component9()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;
    .locals 16

    const-string v0, "orderId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payerUserId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initiatorUserId"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetLogo"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientTradeNo"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;

    move-object v1, v0

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v15}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getPayerUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getPayerUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAmount()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAmount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAsset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAsset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v3

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v3

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->clientTradeNo:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->clientTradeNo:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public getAmount()D
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->amount:D

    return-wide v0
.end method

.method public getAsset()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->asset:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetLogo()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->assetLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientTradeNo()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->clientTradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->direction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    return-object v0
.end method

.method public getInitiatorUserId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->initiatorUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerUserId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->payerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->status:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->type:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getPayerUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAsset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->clientTradeNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pay(orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payerUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getPayerUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", initiatorUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAsset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", assetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", assetLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getAssetLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientTradeNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;->clientTradeNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
