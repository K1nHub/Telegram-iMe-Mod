.class public final Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;
.super Ljava/lang/Object;
.source "BinancePayGetTransactionHistoryResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final assetCode:Ljava/lang/String;

.field private final assetName:Ljava/lang/String;

.field private final clientTradeNo:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Ljava/lang/String;

.field private final initiatorUserId:Ljava/lang/String;

.field private final inputAmount:Ljava/lang/String;

.field private final inputAssetCode:Ljava/lang/String;

.field private final inputAssetShortName:Ljava/lang/String;

.field private final logoUrl:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final outputAmount:Ljava/lang/String;

.field private final outputAssetCode:Ljava/lang/String;

.field private final outputAssetShortName:Ljava/lang/String;

.field private final payerUserId:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final transactionId:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final updatedAt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v15, "orderId"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "transactionId"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "clientTradeNo"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "payerUserId"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "initiatorUserId"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "amount"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "assetCode"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "assetName"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "logoUrl"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "type"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "direction"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "status"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "updatedAt"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "createdAt"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->orderId:Ljava/lang/String;

    .line 7
    iput-object v2, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->transactionId:Ljava/lang/String;

    .line 8
    iput-object v3, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->clientTradeNo:Ljava/lang/String;

    .line 9
    iput-object v4, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->payerUserId:Ljava/lang/String;

    .line 10
    iput-object v5, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->initiatorUserId:Ljava/lang/String;

    .line 11
    iput-object v6, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->amount:Ljava/lang/String;

    .line 12
    iput-object v7, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetCode:Ljava/lang/String;

    .line 13
    iput-object v8, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetName:Ljava/lang/String;

    .line 14
    iput-object v9, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->logoUrl:Ljava/lang/String;

    .line 15
    iput-object v10, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->type:Ljava/lang/String;

    .line 16
    iput-object v11, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->direction:Ljava/lang/String;

    .line 17
    iput-object v12, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->status:Ljava/lang/String;

    .line 18
    iput-object v13, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->updatedAt:Ljava/lang/String;

    .line 19
    iput-object v14, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->createdAt:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 22
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAmount:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 23
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAmount:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 24
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetCode:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 25
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetCode:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 26
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetShortName:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 27
    iput-object v1, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetShortName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->orderId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->transactionId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->clientTradeNo:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->payerUserId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->initiatorUserId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->amount:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetCode:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->logoUrl:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->type:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->direction:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->status:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->updatedAt:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->createdAt:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAmount:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAmount:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetCode:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetCode:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetShortName:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetShortName:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
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

    move-object/from16 p19, v15

    move-object/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->clientTradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->payerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->initiatorUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;
    .locals 23

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

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    const-string v0, "orderId"

    move-object/from16 v21, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionId"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientTradeNo"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payerUserId"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initiatorUserId"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetCode"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoUrl"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedAt"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v22, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v20}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v22
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->orderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->transactionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->transactionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->clientTradeNo:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->clientTradeNo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->payerUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->payerUserId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->initiatorUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->initiatorUserId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->amount:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->amount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->logoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->logoUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->direction:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->direction:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->updatedAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->updatedAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->createdAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->createdAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAmount:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAmount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAmount:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAmount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetShortName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetShortName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetShortName:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetShortName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssetCode()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssetName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientTradeNo()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->clientTradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirection()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public final getInitiatorUserId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->initiatorUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputAmount()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputAssetCode()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputAssetShortName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputAmount()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputAssetCode()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputAssetShortName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayerUserId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->payerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->orderId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->transactionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->clientTradeNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->payerUserId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->initiatorUserId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->amount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->logoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->direction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->updatedAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->createdAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAmount:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAmount:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetCode:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetCode:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetShortName:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetShortName:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HistoryItem(orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientTradeNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->clientTradeNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payerUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->payerUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", initiatorUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->initiatorUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", assetCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", assetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->assetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->logoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->direction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputAssetCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputAssetCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputAssetShortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->inputAssetShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputAssetShortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->outputAssetShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
