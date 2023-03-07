.class public final Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;
.super Ljava/lang/Object;
.source "NotificationResponse.kt"


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final amountToSpent:Ljava/lang/String;

.field private final assetCode:Ljava/lang/String;

.field private final assetName:Ljava/lang/String;

.field private final cryptoCode:Ljava/lang/String;

.field private final date:Ljava/lang/String;

.field private final debtAsToken:Ljava/lang/String;

.field private final debtAsUsd:Ljava/lang/String;

.field private final fromWalletAddress:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final linkedObjectId:Ljava/lang/String;

.field private final linkedUserId:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final payerUserId:Ljava/lang/String;

.field private final profitAsToken:Ljava/lang/String;

.field private final profitAsUsd:Ljava/lang/String;

.field private final read:Z

.field private final shouldFinishAt:Ljava/lang/String;

.field private final spentCurrency:Ljava/lang/String;

.field private final stakingAPR:Ljava/lang/String;

.field private final stakingAPY:Ljava/lang/String;

.field private final stakingAuthor:Ljava/lang/String;

.field private final stakingEndsAt:Ljava/lang/String;

.field private final stakingId:Ljava/lang/String;

.field private final stakingName:Ljava/lang/String;

.field private final stakingToken:Ljava/lang/String;

.field private final stakingWebsite:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final toWalletAddress:Ljava/lang/String;

.field private final txHash:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p20

    move-object/from16 v7, p21

    move-object/from16 v8, p22

    move-object/from16 v9, p23

    move-object/from16 v10, p24

    move-object/from16 v11, p25

    move-object/from16 v12, p26

    move-object/from16 v13, p27

    move-object/from16 v14, p29

    move-object/from16 v15, p30

    move-object/from16 v0, p31

    const-string v0, "id"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingId"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingName"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAuthor"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingWebsite"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAPY"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAPR"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingEndsAt"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingToken"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debtAsToken"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debtAsUsd"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profitAsToken"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profitAsUsd"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p31

    .line 6
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->id:Ljava/lang/String;

    .line 7
    iput-object v2, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->userId:Ljava/lang/String;

    .line 8
    iput-object v3, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amount:Ljava/math/BigDecimal;

    move/from16 v1, p4

    .line 9
    iput-boolean v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->read:Z

    move-object/from16 v1, p5

    .line 10
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedUserId:Ljava/lang/String;

    move-object/from16 v1, p6

    .line 11
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedObjectId:Ljava/lang/String;

    .line 12
    iput-object v4, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->type:Ljava/lang/String;

    .line 13
    iput-object v5, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->date:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 14
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->status:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 15
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->cryptoCode:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 16
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->fromWalletAddress:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 17
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->toWalletAddress:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 18
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->txHash:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 19
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->networkType:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 22
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->spentCurrency:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 23
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amountToSpent:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 26
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetCode:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 27
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetName:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 28
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->payerUserId:Ljava/lang/String;

    .line 31
    iput-object v6, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingId:Ljava/lang/String;

    .line 32
    iput-object v7, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingName:Ljava/lang/String;

    .line 33
    iput-object v8, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAuthor:Ljava/lang/String;

    .line 34
    iput-object v9, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingWebsite:Ljava/lang/String;

    .line 35
    iput-object v10, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPY:Ljava/lang/String;

    .line 36
    iput-object v11, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPR:Ljava/lang/String;

    .line 37
    iput-object v12, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingEndsAt:Ljava/lang/String;

    .line 38
    iput-object v13, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingToken:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 39
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->shouldFinishAt:Ljava/lang/String;

    .line 40
    iput-object v14, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsToken:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 41
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsUsd:Ljava/lang/String;

    .line 42
    iput-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsToken:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 43
    iput-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsUsd:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p33

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->userId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amount:Ljava/math/BigDecimal;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->read:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedUserId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedObjectId:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->type:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->date:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->status:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->cryptoCode:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->fromWalletAddress:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->toWalletAddress:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->txHash:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->networkType:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->spentCurrency:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amountToSpent:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetCode:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetName:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->payerUserId:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingId:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingName:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAuthor:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingWebsite:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPY:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPR:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingEndsAt:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingToken:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->shouldFinishAt:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsToken:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsUsd:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsToken:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p31

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsUsd:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p31, v15

    move-object/from16 p32, v1

    invoke-virtual/range {p0 .. p32}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->cryptoCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->fromWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->toWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->spentCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amountToSpent:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->payerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingId:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingName:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPY:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPR:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingEndsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component28()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->shouldFinishAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsUsd:Ljava/lang/String;

    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsUsd:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->read:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;
    .locals 35

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

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

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    const-string v0, "id"

    move-object/from16 v33, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingId"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingName"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAuthor"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingWebsite"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAPY"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAPR"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingEndsAt"

    move-object/from16 v1, p26

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingToken"

    move-object/from16 v1, p27

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debtAsToken"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debtAsUsd"

    move-object/from16 v1, p30

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profitAsToken"

    move-object/from16 v1, p31

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profitAsUsd"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v34, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct/range {v0 .. v32}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v34
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amount:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amount:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->read:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->read:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedUserId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedObjectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedObjectId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->date:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->date:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->cryptoCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->cryptoCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->fromWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->fromWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->toWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->toWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->txHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->txHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->networkType:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->networkType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->spentCurrency:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->spentCurrency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amountToSpent:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amountToSpent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetName:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->payerUserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->payerUserId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingName:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAuthor:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAuthor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingWebsite:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingWebsite:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPY:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPY:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPR:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPR:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingEndsAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingEndsAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->shouldFinishAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->shouldFinishAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsUsd:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsUsd:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsUsd:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsUsd:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getAmountToSpent()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amountToSpent:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssetCode()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssetName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCryptoCode()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->cryptoCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getDebtAsToken()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getDebtAsUsd()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsUsd:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromWalletAddress()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->fromWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkedObjectId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLinkedUserId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayerUserId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->payerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfitAsToken()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfitAsUsd()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsUsd:Ljava/lang/String;

    return-object v0
.end method

.method public final getRead()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->read:Z

    return v0
.end method

.method public final getShouldFinishAt()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->shouldFinishAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpentCurrency()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->spentCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingAPR()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPR:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingAPY()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPY:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingAuthor()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingEndsAt()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingEndsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingToken()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingWebsite()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getToWalletAddress()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->toWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getTxHash()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->userId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->read:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedUserId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedObjectId:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->status:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->cryptoCode:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->fromWalletAddress:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->toWalletAddress:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->txHash:Ljava/lang/String;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->networkType:Ljava/lang/String;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_7

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->spentCurrency:Ljava/lang/String;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amountToSpent:Ljava/lang/String;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_9

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetCode:Ljava/lang/String;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_a

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetName:Ljava/lang/String;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_b

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->payerUserId:Ljava/lang/String;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_c

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAuthor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingWebsite:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingEndsAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->shouldFinishAt:Ljava/lang/String;

    if-nez v1, :cond_e

    goto :goto_d

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsUsd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsUsd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationResponse(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->read:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linkedUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", linkedObjectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->linkedObjectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cryptoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->fromWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->toWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", txHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->txHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spentCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->spentCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amountToSpent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->amountToSpent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assetCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->assetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payerUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->payerUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingAuthor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingWebsite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingWebsite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingAPY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingAPR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingAPR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingEndsAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingEndsAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->stakingToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldFinishAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->shouldFinishAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", debtAsToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", debtAsUsd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->debtAsUsd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profitAsToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profitAsUsd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->profitAsUsd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
