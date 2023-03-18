.class public final Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;
.super Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;
.source "BinanceTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Convert"
.end annotation


# instance fields
.field private final amount:D

.field private final asset:Ljava/lang/String;

.field private final assetLogo:Ljava/lang/String;

.field private final assetName:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

.field private final initiatorUserId:Ljava/lang/String;

.field private final inputAmount:D

.field private final inputAssetCode:Ljava/lang/String;

.field private final inputAssetShortName:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final outputAmount:D

.field private final outputAssetCode:Ljava/lang/String;

.field private final outputAssetShortName:Ljava/lang/String;

.field private final payerUserId:Ljava/lang/String;

.field private final status:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

.field private final transactionId:Ljava/lang/String;

.field private final type:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

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

    move-object/from16 v3, p18

    move-object/from16 v2, p19

    move-object/from16 v1, p20

    move-object/from16 v0, p21

    const-string v15, "orderId"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "transactionId"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "payerUserId"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "initiatorUserId"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "asset"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "assetName"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "assetLogo"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "direction"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "type"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "status"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "createdAt"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "inputAssetCode"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "outputAssetCode"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "inputAssetShortName"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "outputAssetShortName"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

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

    move-object v14, v15

    .line 68
    invoke-direct/range {v0 .. v14}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->orderId:Ljava/lang/String;

    move-object/from16 v1, p2

    .line 51
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->transactionId:Ljava/lang/String;

    move-object/from16 v1, p3

    .line 52
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->payerUserId:Ljava/lang/String;

    move-object/from16 v1, p4

    .line 53
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->initiatorUserId:Ljava/lang/String;

    move-wide/from16 v1, p5

    .line 54
    iput-wide v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->amount:D

    move-object/from16 v1, p7

    .line 55
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->asset:Ljava/lang/String;

    move-object/from16 v1, p8

    .line 56
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->assetName:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 57
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->assetLogo:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 58
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->direction:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-object/from16 v1, p11

    .line 59
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->type:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;

    move-object/from16 v1, p12

    .line 60
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->status:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-object/from16 v1, p13

    .line 61
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->createdAt:Ljava/lang/String;

    move-wide/from16 v1, p14

    .line 62
    iput-wide v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAmount:D

    move-wide/from16 v1, p16

    .line 63
    iput-wide v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAmount:D

    move-object/from16 v1, p18

    .line 64
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetCode:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 65
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetCode:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 66
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetShortName:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 67
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetShortName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getOrderId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getPayerUserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAmount()D

    move-result-wide v6

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAsset()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetName()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetLogo()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getDirection()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v11

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getType()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v12

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getStatus()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v13

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getCreatedAt()Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    move-object/from16 p13, v14

    if-eqz v15, :cond_c

    iget-wide v14, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAmount:D

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p14

    :goto_c
    move-wide/from16 p14, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-wide v14, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAmount:D

    goto :goto_d

    :cond_d
    move-wide/from16 v14, p16

    :goto_d
    move-wide/from16 p16, v14

    and-int/lit16 v14, v1, 0x4000

    if-eqz v14, :cond_e

    iget-object v14, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetCode:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v14, p18

    :goto_e
    const v15, 0x8000

    and-int/2addr v15, v1

    if-eqz v15, :cond_f

    iget-object v15, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetCode:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p19

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetShortName:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p20

    :goto_10
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetShortName:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p21

    :goto_11
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p18, v14

    move-object/from16 p20, v15

    move-object/from16 p21, v1

    invoke-virtual/range {p0 .. p21}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getOrderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getType()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v0

    return-object v0
.end method

.method public final component11()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getStatus()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v0

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component13()D
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAmount:D

    return-wide v0
.end method

.method public final component14()D
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAmount:D

    return-wide v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getPayerUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()D
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAmount()D

    move-result-wide v0

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAsset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetLogo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component9()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getDirection()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;
    .locals 24

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

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    const-string v0, "orderId"

    move-object/from16 v22, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionId"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payerUserId"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initiatorUserId"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asset"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetLogo"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputAssetCode"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputAssetCode"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputAssetShortName"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputAssetShortName"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v23, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct/range {v0 .. v21}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getPayerUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getPayerUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAmount()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAmount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAsset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAsset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getDirection()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getDirection()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v3

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getType()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getType()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getStatus()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getStatus()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v3

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAmount:D

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAmount:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAmount:D

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAmount:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetShortName:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetShortName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetShortName:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetShortName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public getAmount()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->amount:D

    return-wide v0
.end method

.method public getAsset()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->asset:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetLogo()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->assetLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->direction:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    return-object v0
.end method

.method public getInitiatorUserId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->initiatorUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputAmount()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAmount:D

    return-wide v0
.end method

.method public final getInputAssetCode()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputAssetShortName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputAmount()D
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAmount:D

    return-wide v0
.end method

.method public final getOutputAssetCode()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputAssetShortName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerUserId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->payerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->status:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->type:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getPayerUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAsset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getDirection()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getType()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getStatus()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAmount:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAmount:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetShortName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetShortName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Convert(orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payerUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getPayerUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", initiatorUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAsset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", assetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", assetLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getAssetLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getDirection()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getType()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getStatus()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAmount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", outputAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAmount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", inputAssetCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputAssetCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputAssetShortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->inputAssetShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputAssetShortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;->outputAssetShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
