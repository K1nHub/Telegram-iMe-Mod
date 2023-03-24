.class public final Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;
.super Ljava/lang/Object;
.source "WalletTransactionResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WalletTransactionResponse"
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final amountToSpent:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Ljava/lang/String;

.field private final feeAmount:Ljava/lang/String;

.field private final feeTokenCode:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final inputAmount:Ljava/lang/String;

.field private final inputCryptoTokenCode:Ljava/lang/String;

.field private final isDonation:Ljava/lang/Boolean;

.field private final logicalTime:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final outputAmount:Ljava/lang/String;

.field private final outputCryptoTokenCode:Ljava/lang/String;

.field private final payloadMessage:Ljava/lang/String;

.field private final processing:Ljava/lang/String;

.field private final receiverAccountId:Ljava/lang/String;

.field private final senderAccountId:Ljava/lang/String;

.field private final simplexOrderId:Ljava/lang/String;

.field private final spentCurrency:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final tokenCode:Ljava/lang/String;

.field private final tradeType:Ljava/lang/String;

.field private final txFromCryptoAddress:Ljava/lang/String;

.field private final txHash:Ljava/lang/String;

.field private final txToCryptoAddress:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final updatedAt:Ljava/lang/String;

.field private final userAccountId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    const-string v12, "id"

    invoke-static {p1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "amount"

    invoke-static {p2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "type"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "direction"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "updatedAt"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "createdAt"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "tokenCode"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "status"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "feeAmount"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "feeTokenCode"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "processing"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->id:Ljava/lang/String;

    .line 9
    iput-object v2, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amount:Ljava/lang/String;

    .line 10
    iput-object v3, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->type:Ljava/lang/String;

    .line 11
    iput-object v4, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->direction:Ljava/lang/String;

    .line 12
    iput-object v5, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->updatedAt:Ljava/lang/String;

    .line 13
    iput-object v6, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->createdAt:Ljava/lang/String;

    .line 14
    iput-object v7, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tokenCode:Ljava/lang/String;

    .line 15
    iput-object v8, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->status:Ljava/lang/String;

    .line 16
    iput-object v9, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeAmount:Ljava/lang/String;

    .line 17
    iput-object v10, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeTokenCode:Ljava/lang/String;

    .line 18
    iput-object v11, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->processing:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 21
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->userAccountId:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 24
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    .line 25
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->senderAccountId:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 26
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->receiverAccountId:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 29
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txFromCryptoAddress:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 30
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txHash:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 31
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->networkType:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 32
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txToCryptoAddress:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 35
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->simplexOrderId:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 36
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->spentCurrency:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 37
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amountToSpent:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 40
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tradeType:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 41
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputCryptoTokenCode:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 42
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputCryptoTokenCode:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 43
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputAmount:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 44
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputAmount:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 47
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->logicalTime:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 48
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->payloadMessage:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p30

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amount:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->type:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->direction:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->updatedAt:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->createdAt:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tokenCode:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->status:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeAmount:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeTokenCode:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->processing:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->userAccountId:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->senderAccountId:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->receiverAccountId:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txFromCryptoAddress:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txHash:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->networkType:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txToCryptoAddress:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->simplexOrderId:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->spentCurrency:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amountToSpent:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tradeType:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputCryptoTokenCode:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputCryptoTokenCode:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputAmount:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputAmount:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->logicalTime:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->payloadMessage:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p29

    :goto_1c
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

    move-object/from16 p28, v15

    move-object/from16 p29, v1

    invoke-virtual/range {p0 .. p29}, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeTokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->processing:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->userAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->senderAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->receiverAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txFromCryptoAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txToCryptoAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->simplexOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->spentCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amountToSpent:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tradeType:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputCryptoTokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputCryptoTokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final component28()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->logicalTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->payloadMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;
    .locals 32

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

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    const-string v0, "id"

    move-object/from16 v30, v1

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

    const-string v0, "updatedAt"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenCode"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processing"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v31, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-direct/range {v0 .. v29}, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v31
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amount:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->direction:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->direction:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->updatedAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->updatedAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->createdAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->createdAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tokenCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tokenCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeAmount:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeAmount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeTokenCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeTokenCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->processing:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->processing:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->userAccountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->userAccountId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->senderAccountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->senderAccountId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->receiverAccountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->receiverAccountId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txFromCryptoAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txFromCryptoAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->networkType:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->networkType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txToCryptoAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txToCryptoAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->simplexOrderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->simplexOrderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->spentCurrency:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->spentCurrency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amountToSpent:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amountToSpent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tradeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tradeType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputCryptoTokenCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputCryptoTokenCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputCryptoTokenCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputCryptoTokenCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputAmount:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputAmount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputAmount:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputAmount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->logicalTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->logicalTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->payloadMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->payloadMessage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getAmountToSpent()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amountToSpent:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirection()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeeAmount()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeeTokenCode()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeTokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputAmount()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputCryptoTokenCode()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputCryptoTokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogicalTime()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->logicalTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputAmount()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputCryptoTokenCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputCryptoTokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayloadMessage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->payloadMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessing()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->processing:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiverAccountId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->receiverAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSenderAccountId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->senderAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSimplexOrderId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->simplexOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpentCurrency()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->spentCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenCode()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getTradeType()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tradeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getTxFromCryptoAddress()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txFromCryptoAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getTxHash()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getTxToCryptoAddress()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txToCryptoAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAccountId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->userAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->direction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->updatedAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->createdAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tokenCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeAmount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeTokenCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->processing:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->userAccountId:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->senderAccountId:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->receiverAccountId:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txFromCryptoAddress:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txHash:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->networkType:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txToCryptoAddress:Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->simplexOrderId:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->spentCurrency:Ljava/lang/String;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amountToSpent:Ljava/lang/String;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tradeType:Ljava/lang/String;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputCryptoTokenCode:Ljava/lang/String;

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputCryptoTokenCode:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputAmount:Ljava/lang/String;

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputAmount:Ljava/lang/String;

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->logicalTime:Ljava/lang/String;

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->payloadMessage:Ljava/lang/String;

    if-nez v1, :cond_11

    goto :goto_11

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    return v0
.end method

.method public final isDonation()Ljava/lang/Boolean;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalletTransactionResponse(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->direction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->updatedAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tokenCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feeTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->feeTokenCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", processing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->processing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->userAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDonation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", senderAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->senderAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", receiverAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->receiverAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txFromCryptoAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txFromCryptoAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txToCryptoAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->txToCryptoAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", simplexOrderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->simplexOrderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spentCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->spentCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amountToSpent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->amountToSpent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tradeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->tradeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputCryptoTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputCryptoTokenCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputCryptoTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputCryptoTokenCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->outputAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->inputAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logicalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->logicalTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payloadMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->payloadMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
