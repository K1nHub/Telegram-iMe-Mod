.class public final Lcom/iMe/storage/domain/model/staking/StakingMetadata;
.super Ljava/lang/Object;
.source "StakingMetadata.kt"


# instance fields
.field private final apr:D

.field private final apy:D

.field private final author:Ljava/lang/String;

.field private final compoundAccrualThreshold:Ljava/math/BigDecimal;

.field private final contract:Ljava/lang/String;

.field private final endsAt:Ljava/lang/String;

.field private final feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final id:J

.field private final immediateWithdrawalFee:D

.field private final incomePercent:D

.field private final incomePeriod:J

.field private final minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field private final name:Ljava/lang/String;

.field private final networkId:Ljava/lang/String;

.field private final prematureWithdrawalFee:D

.field private final safeWithdrawalDuration:J

.field private final safeWithdrawalFee:D

.field private final startsAt:Ljava/lang/String;

.field private final stats:Lcom/iMe/storage/domain/model/staking/StakingStats;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final website:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDJDDDDJLjava/math/BigDecimal;Lcom/iMe/storage/domain/model/staking/StakingStats;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p27

    move-object/from16 v10, p28

    move-object/from16 v11, p29

    move-object/from16 v12, p30

    const-string v13, "networkId"

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "name"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "author"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "contract"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "startsAt"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "endsAt"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "token"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "feeToken"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "compoundAccrualThreshold"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "stats"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "minimalRank"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "website"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v13, p1

    .line 8
    iput-wide v13, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->id:J

    .line 9
    iput-object v1, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->networkId:Ljava/lang/String;

    .line 10
    iput-object v2, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->name:Ljava/lang/String;

    .line 11
    iput-object v3, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->author:Ljava/lang/String;

    .line 12
    iput-object v4, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->contract:Ljava/lang/String;

    .line 13
    iput-object v5, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->startsAt:Ljava/lang/String;

    .line 14
    iput-object v6, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->endsAt:Ljava/lang/String;

    .line 15
    iput-object v7, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 16
    iput-object v8, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-wide/from16 v1, p11

    .line 17
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apy:D

    move-wide/from16 v1, p13

    .line 18
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apr:D

    move-wide/from16 v1, p15

    .line 19
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePeriod:J

    move-wide/from16 v1, p17

    .line 20
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePercent:D

    move-wide/from16 v1, p19

    .line 21
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->prematureWithdrawalFee:D

    move-wide/from16 v1, p21

    .line 22
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->immediateWithdrawalFee:D

    move-wide/from16 v1, p23

    .line 23
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalFee:D

    move-wide/from16 v1, p25

    .line 24
    iput-wide v1, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalDuration:J

    .line 25
    iput-object v9, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    .line 26
    iput-object v10, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->stats:Lcom/iMe/storage/domain/model/staking/StakingStats;

    .line 27
    iput-object v11, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 28
    iput-object v12, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->website:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/staking/StakingMetadata;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDJDDDDJLjava/math/BigDecimal;Lcom/iMe/storage/domain/model/staking/StakingStats;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/staking/StakingMetadata;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p31

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->networkId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->author:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->contract:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->startsAt:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->endsAt:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-wide v12, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apy:D

    goto :goto_9

    :cond_9
    move-wide/from16 v12, p11

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-wide v14, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apr:D

    goto :goto_a

    :cond_a
    move-wide/from16 v14, p13

    :goto_a
    move-wide/from16 p13, v14

    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-wide v14, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePeriod:J

    goto :goto_b

    :cond_b
    move-wide/from16 v14, p15

    :goto_b
    move-wide/from16 p15, v14

    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-wide v14, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePercent:D

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p17

    :goto_c
    move-wide/from16 p17, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-wide v14, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->prematureWithdrawalFee:D

    goto :goto_d

    :cond_d
    move-wide/from16 v14, p19

    :goto_d
    move-wide/from16 p19, v14

    and-int/lit16 v14, v1, 0x4000

    if-eqz v14, :cond_e

    iget-wide v14, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->immediateWithdrawalFee:D

    goto :goto_e

    :cond_e
    move-wide/from16 v14, p21

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-wide/from16 p21, v14

    if-eqz v16, :cond_f

    iget-wide v14, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalFee:D

    goto :goto_f

    :cond_f
    move-wide/from16 v14, p23

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p23, v14

    if-eqz v16, :cond_10

    iget-wide v14, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalDuration:J

    goto :goto_10

    :cond_10
    move-wide/from16 v14, p25

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-wide/from16 p25, v14

    if-eqz v16, :cond_11

    iget-object v14, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    goto :goto_11

    :cond_11
    move-object/from16 v14, p27

    :goto_11
    const/high16 v15, 0x40000

    and-int/2addr v15, v1

    if-eqz v15, :cond_12

    iget-object v15, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->stats:Lcom/iMe/storage/domain/model/staking/StakingStats;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p28

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p29

    :goto_13
    const/high16 v16, 0x100000

    and-int v1, v1, v16

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->website:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p30

    :goto_14
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-wide/from16 p11, v12

    move-object/from16 p27, v14

    move-object/from16 p29, v15

    move-object/from16 p30, v1

    invoke-virtual/range {p0 .. p30}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDJDDDDJLjava/math/BigDecimal;Lcom/iMe/storage/domain/model/staking/StakingStats;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;)Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->id:J

    return-wide v0
.end method

.method public final component10()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apy:D

    return-wide v0
.end method

.method public final component11()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apr:D

    return-wide v0
.end method

.method public final component12()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePeriod:J

    return-wide v0
.end method

.method public final component13()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePercent:D

    return-wide v0
.end method

.method public final component14()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->prematureWithdrawalFee:D

    return-wide v0
.end method

.method public final component15()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->immediateWithdrawalFee:D

    return-wide v0
.end method

.method public final component16()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalFee:D

    return-wide v0
.end method

.method public final component17()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalDuration:J

    return-wide v0
.end method

.method public final component18()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component19()Lcom/iMe/storage/domain/model/staking/StakingStats;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->stats:Lcom/iMe/storage/domain/model/staking/StakingStats;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->networkId:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->website:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->contract:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->startsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->endsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final component9()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDJDDDDJLjava/math/BigDecimal;Lcom/iMe/storage/domain/model/staking/StakingStats;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;)Lcom/iMe/storage/domain/model/staking/StakingMetadata;
    .locals 32

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    move-wide/from16 v19, p19

    move-wide/from16 v21, p21

    move-wide/from16 v23, p23

    move-wide/from16 v25, p25

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    const-string v0, "networkId"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contract"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startsAt"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endsAt"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compoundAccrualThreshold"

    move-object/from16 v1, p27

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stats"

    move-object/from16 v1, p28

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minimalRank"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "website"

    move-object/from16 v1, p30

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v31, Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    move-object/from16 v0, v31

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v30}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDJDDDDJLjava/math/BigDecimal;Lcom/iMe/storage/domain/model/staking/StakingStats;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;)V

    return-object v31
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    iget-wide v3, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->id:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->networkId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->networkId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->author:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->author:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->contract:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->contract:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->startsAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->startsAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->endsAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->endsAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apy:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apy:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apr:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apr:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePeriod:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePeriod:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePercent:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePercent:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->prematureWithdrawalFee:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->prematureWithdrawalFee:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->immediateWithdrawalFee:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->immediateWithdrawalFee:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalFee:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalFee:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalDuration:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->stats:Lcom/iMe/storage/domain/model/staking/StakingStats;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->stats:Lcom/iMe/storage/domain/model/staking/StakingStats;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->website:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->website:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public final getApr()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apr:D

    return-wide v0
.end method

.method public final getApy()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apy:D

    return-wide v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompoundAccrualThreshold()Ljava/math/BigDecimal;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getContract()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->contract:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndsAt()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->endsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->id:J

    return-wide v0
.end method

.method public final getImmediateWithdrawalFee()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->immediateWithdrawalFee:D

    return-wide v0
.end method

.method public final getIncomePercent()D
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePercent:D

    return-wide v0
.end method

.method public final getIncomePeriod()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePeriod:J

    return-wide v0
.end method

.method public final getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->networkId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrematureWithdrawalFee()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->prematureWithdrawalFee:D

    return-wide v0
.end method

.method public final getSafeWithdrawalDuration()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalDuration:J

    return-wide v0
.end method

.method public final getSafeWithdrawalFee()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalFee:D

    return-wide v0
.end method

.method public final getStartsAt()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->startsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getStats()Lcom/iMe/storage/domain/model/staking/StakingStats;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->stats:Lcom/iMe/storage/domain/model/staking/StakingStats;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getWebsite()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->website:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->id:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->networkId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->author:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->contract:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->startsAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->endsAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apy:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apr:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePeriod:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePercent:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->prematureWithdrawalFee:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->immediateWithdrawalFee:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalFee:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalDuration:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->stats:Lcom/iMe/storage/domain/model/staking/StakingStats;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingStats;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->website:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingMetadata(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->networkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contract="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->contract:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startsAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->startsAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endsAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->endsAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apy:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", apr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->apr:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", incomePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePeriod:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", incomePercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->incomePercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", prematureWithdrawalFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->prematureWithdrawalFee:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", immediateWithdrawalFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->immediateWithdrawalFee:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", safeWithdrawalFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalFee:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", safeWithdrawalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->safeWithdrawalDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", compoundAccrualThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->stats:Lcom/iMe/storage/domain/model/staking/StakingStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minimalRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", website="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->website:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
