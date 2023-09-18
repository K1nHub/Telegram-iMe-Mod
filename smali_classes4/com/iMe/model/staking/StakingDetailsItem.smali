.class public final Lcom/iMe/model/staking/StakingDetailsItem;
.super Ljava/lang/Object;
.source "StakingDetailsItem.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/iMe/model/staking/StakingDetailsItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final annualPercentageMode:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

.field private final author:Ljava/lang/String;

.field private final availableForClaim:D

.field private final canWithdrawImmediately:Z

.field private final canWithdrawSafely:Z

.field private final compoundAccrualThreshold:Ljava/math/BigDecimal;

.field private final contract:Ljava/lang/String;

.field private final debt:Ljava/math/BigDecimal;

.field private final endsAt:Ljava/lang/String;

.field private final endsAtISO:Ljava/lang/String;

.field private final feeTokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

.field private final formattedAPR:Ljava/lang/String;

.field private final formattedAPY:Ljava/lang/String;

.field private final hasEnoughFunds:Z

.field private final id:J

.field private final immediateWithdrawalFeePercentage:D

.field private final impact:Ljava/math/BigDecimal;

.field private final incomePercent:D

.field private final incomePeriod:J

.field private final minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field private final name:Ljava/lang/String;

.field private final prematureWithdrawalFeePercentage:D

.field private final safeWithdrawalDuration:J

.field private final safeWithdrawalFeePercentage:D

.field private final startsAt:Ljava/lang/String;

.field private final startsAtISO:Ljava/lang/String;

.field private final tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

.field private final website:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/staking/StakingDetailsItem$Creator;

    invoke-direct {v0}, Lcom/iMe/model/staking/StakingDetailsItem$Creator;-><init>()V

    sput-object v0, Lcom/iMe/model/staking/StakingDetailsItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;DZZDDDJLcom/iMe/model/staking/StakingAnnualPercentageMode;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;JD)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p29

    move-object/from16 v0, p31

    const-string v0, "name"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenItem"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contract"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenItem"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formattedAPR"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formattedAPY"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compoundAccrualThreshold"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startsAt"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startsAtISO"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endsAt"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endsAtISO"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impact"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debt"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annualPercentageMode"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minimalRank"

    move-object/from16 v15, p31

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "website"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    .line 12
    iput-wide v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->id:J

    .line 13
    iput-object v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->name:Ljava/lang/String;

    .line 14
    iput-object v2, v0, Lcom/iMe/model/staking/StakingDetailsItem;->author:Ljava/lang/String;

    .line 15
    iput-object v3, v0, Lcom/iMe/model/staking/StakingDetailsItem;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    .line 16
    iput-object v4, v0, Lcom/iMe/model/staking/StakingDetailsItem;->contract:Ljava/lang/String;

    .line 17
    iput-object v5, v0, Lcom/iMe/model/staking/StakingDetailsItem;->feeTokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    .line 18
    iput-object v6, v0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPR:Ljava/lang/String;

    .line 19
    iput-object v7, v0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPY:Ljava/lang/String;

    .line 20
    iput-object v8, v0, Lcom/iMe/model/staking/StakingDetailsItem;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    .line 21
    iput-object v9, v0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAt:Ljava/lang/String;

    .line 22
    iput-object v10, v0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAtISO:Ljava/lang/String;

    .line 23
    iput-object v11, v0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAt:Ljava/lang/String;

    .line 24
    iput-object v12, v0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAtISO:Ljava/lang/String;

    .line 25
    iput-object v13, v0, Lcom/iMe/model/staking/StakingDetailsItem;->impact:Ljava/math/BigDecimal;

    move-object/from16 v1, p16

    .line 26
    iput-object v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->debt:Ljava/math/BigDecimal;

    move-wide/from16 v1, p17

    .line 27
    iput-wide v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->availableForClaim:D

    move/from16 v1, p19

    .line 28
    iput-boolean v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawSafely:Z

    move/from16 v1, p20

    .line 29
    iput-boolean v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawImmediately:Z

    move-wide/from16 v1, p21

    .line 30
    iput-wide v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->prematureWithdrawalFeePercentage:D

    move-wide/from16 v1, p23

    .line 31
    iput-wide v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->immediateWithdrawalFeePercentage:D

    move-wide/from16 v1, p25

    .line 32
    iput-wide v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalFeePercentage:D

    move-wide/from16 v1, p27

    .line 33
    iput-wide v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalDuration:J

    move-object/from16 v1, p29

    .line 34
    iput-object v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->annualPercentageMode:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    move/from16 v1, p30

    .line 35
    iput-boolean v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->hasEnoughFunds:Z

    move-object/from16 v1, p31

    .line 36
    iput-object v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-object/from16 v1, p32

    .line 37
    iput-object v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->website:Ljava/lang/String;

    move-wide/from16 v1, p33

    .line 38
    iput-wide v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePeriod:J

    move-wide/from16 v1, p35

    .line 39
    iput-wide v1, v0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePercent:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/staking/StakingDetailsItem;JLjava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;DZZDDDJLcom/iMe/model/staking/StakingAnnualPercentageMode;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;JDILjava/lang/Object;)Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p37

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/iMe/model/staking/StakingDetailsItem;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/iMe/model/staking/StakingDetailsItem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/iMe/model/staking/StakingDetailsItem;->author:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/iMe/model/staking/StakingDetailsItem;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/iMe/model/staking/StakingDetailsItem;->contract:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/iMe/model/staking/StakingDetailsItem;->feeTokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPR:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPY:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/iMe/model/staking/StakingDetailsItem;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAt:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAtISO:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAt:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAtISO:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/iMe/model/staking/StakingDetailsItem;->impact:Ljava/math/BigDecimal;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/iMe/model/staking/StakingDetailsItem;->debt:Ljava/math/BigDecimal;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p13, v14

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-wide v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->availableForClaim:D

    goto :goto_f

    :cond_f
    move-wide/from16 v14, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p17, v14

    if-eqz v16, :cond_10

    iget-boolean v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawSafely:Z

    goto :goto_10

    :cond_10
    move/from16 v14, p19

    :goto_10
    const/high16 v15, 0x20000

    and-int/2addr v15, v1

    if-eqz v15, :cond_11

    iget-boolean v15, v0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawImmediately:Z

    goto :goto_11

    :cond_11
    move/from16 v15, p20

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p19, v14

    move/from16 p20, v15

    if-eqz v16, :cond_12

    iget-wide v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->prematureWithdrawalFeePercentage:D

    goto :goto_12

    :cond_12
    move-wide/from16 v14, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-wide/from16 p21, v14

    if-eqz v16, :cond_13

    iget-wide v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->immediateWithdrawalFeePercentage:D

    goto :goto_13

    :cond_13
    move-wide/from16 v14, p23

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-wide/from16 p23, v14

    if-eqz v16, :cond_14

    iget-wide v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalFeePercentage:D

    goto :goto_14

    :cond_14
    move-wide/from16 v14, p25

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-wide/from16 p25, v14

    if-eqz v16, :cond_15

    iget-wide v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalDuration:J

    goto :goto_15

    :cond_15
    move-wide/from16 v14, p27

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-wide/from16 p27, v14

    if-eqz v16, :cond_16

    iget-object v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->annualPercentageMode:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    goto :goto_16

    :cond_16
    move-object/from16 v14, p29

    :goto_16
    const/high16 v15, 0x800000

    and-int/2addr v15, v1

    if-eqz v15, :cond_17

    iget-boolean v15, v0, Lcom/iMe/model/staking/StakingDetailsItem;->hasEnoughFunds:Z

    goto :goto_17

    :cond_17
    move/from16 v15, p30

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move/from16 p30, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/iMe/model/staking/StakingDetailsItem;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p31

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p31, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/iMe/model/staking/StakingDetailsItem;->website:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p32

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p29, v14

    move-object/from16 p32, v15

    if-eqz v16, :cond_1a

    iget-wide v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePeriod:J

    goto :goto_1a

    :cond_1a
    move-wide/from16 v14, p33

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v1, v1, v16

    move-wide/from16 p33, v14

    if-eqz v1, :cond_1b

    iget-wide v14, v0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePercent:D

    goto :goto_1b

    :cond_1b
    move-wide/from16 v14, p35

    :goto_1b
    move-wide/from16 p1, v2

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

    move-wide/from16 p35, v14

    invoke-virtual/range {p0 .. p36}, Lcom/iMe/model/staking/StakingDetailsItem;->copy(JLjava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;DZZDDDJLcom/iMe/model/staking/StakingAnnualPercentageMode;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;JD)Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->id:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAtISO:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAtISO:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->impact:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component15()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->debt:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component16()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->availableForClaim:D

    return-wide v0
.end method

.method public final component17()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawSafely:Z

    return v0
.end method

.method public final component18()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawImmediately:Z

    return v0
.end method

.method public final component19()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->prematureWithdrawalFeePercentage:D

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->immediateWithdrawalFeePercentage:D

    return-wide v0
.end method

.method public final component21()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalFeePercentage:D

    return-wide v0
.end method

.method public final component22()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalDuration:J

    return-wide v0
.end method

.method public final component23()Lcom/iMe/model/staking/StakingAnnualPercentageMode;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->annualPercentageMode:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    return-object v0
.end method

.method public final component24()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->hasEnoughFunds:Z

    return v0
.end method

.method public final component25()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->website:Ljava/lang/String;

    return-object v0
.end method

.method public final component27()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePeriod:J

    return-wide v0
.end method

.method public final component28()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePercent:D

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/iMe/model/wallet/crypto/TokenItem;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->contract:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/iMe/model/wallet/crypto/TokenItem;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->feeTokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPR:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPY:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;DZZDDDJLcom/iMe/model/staking/StakingAnnualPercentageMode;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;JD)Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 38

    move-wide/from16 v1, p1

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

    move-wide/from16 v17, p17

    move/from16 v19, p19

    move/from16 v20, p20

    move-wide/from16 v21, p21

    move-wide/from16 v23, p23

    move-wide/from16 v25, p25

    move-wide/from16 v27, p27

    move-object/from16 v29, p29

    move/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-wide/from16 v33, p33

    move-wide/from16 v35, p35

    const-string v0, "name"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenItem"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contract"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenItem"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formattedAPR"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formattedAPY"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compoundAccrualThreshold"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startsAt"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startsAtISO"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endsAt"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endsAtISO"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impact"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debt"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annualPercentageMode"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minimalRank"

    move-object/from16 v1, p31

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "website"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v37, Lcom/iMe/model/staking/StakingDetailsItem;

    move-object/from16 v0, v37

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v36}, Lcom/iMe/model/staking/StakingDetailsItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;DZZDDDJLcom/iMe/model/staking/StakingAnnualPercentageMode;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;JD)V

    return-object v37
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/staking/StakingDetailsItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/staking/StakingDetailsItem;

    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->id:J

    iget-wide v5, p1, Lcom/iMe/model/staking/StakingDetailsItem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->author:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->author:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->contract:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->contract:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->feeTokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->feeTokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPR:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPR:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPY:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPY:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->startsAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAtISO:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->startsAtISO:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->endsAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAtISO:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->endsAtISO:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->impact:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->impact:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->debt:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->debt:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->availableForClaim:D

    iget-wide v5, p1, Lcom/iMe/model/staking/StakingDetailsItem;->availableForClaim:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawSafely:Z

    iget-boolean v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawSafely:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawImmediately:Z

    iget-boolean v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawImmediately:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->prematureWithdrawalFeePercentage:D

    iget-wide v5, p1, Lcom/iMe/model/staking/StakingDetailsItem;->prematureWithdrawalFeePercentage:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->immediateWithdrawalFeePercentage:D

    iget-wide v5, p1, Lcom/iMe/model/staking/StakingDetailsItem;->immediateWithdrawalFeePercentage:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalFeePercentage:D

    iget-wide v5, p1, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalFeePercentage:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalDuration:J

    iget-wide v5, p1, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->annualPercentageMode:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->annualPercentageMode:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->hasEnoughFunds:Z

    iget-boolean v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->hasEnoughFunds:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->website:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/staking/StakingDetailsItem;->website:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePeriod:J

    iget-wide v5, p1, Lcom/iMe/model/staking/StakingDetailsItem;->incomePeriod:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePercent:D

    iget-wide v5, p1, Lcom/iMe/model/staking/StakingDetailsItem;->incomePercent:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_1d

    return v2

    :cond_1d
    return v0
.end method

.method public final getAnnualPercentageMode()Lcom/iMe/model/staking/StakingAnnualPercentageMode;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->annualPercentageMode:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    return-object v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvailableForClaim()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->availableForClaim:D

    return-wide v0
.end method

.method public final getCanWithdrawImmediately()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawImmediately:Z

    return v0
.end method

.method public final getCanWithdrawSafely()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawSafely:Z

    return v0
.end method

.method public final getCompoundAccrualThreshold()Ljava/math/BigDecimal;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getContract()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->contract:Ljava/lang/String;

    return-object v0
.end method

.method public final getContractUrl()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->contract:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getAddressUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDebt()Ljava/math/BigDecimal;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->debt:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getEndsAt()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndsAtISO()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAtISO:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeeTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->feeTokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    return-object v0
.end method

.method public final getFormattedAPR()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPR:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormattedAPY()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPY:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasEnoughFunds()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->hasEnoughFunds:Z

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->id:J

    return-wide v0
.end method

.method public final getImmediateWithdrawalFeePercentage()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->immediateWithdrawalFeePercentage:D

    return-wide v0
.end method

.method public final getImpact()Ljava/math/BigDecimal;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->impact:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getIncomePercent()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePercent:D

    return-wide v0
.end method

.method public final getIncomePeriod()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePeriod:J

    return-wide v0
.end method

.method public final getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrematureWithdrawalFeePercentage()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->prematureWithdrawalFeePercentage:D

    return-wide v0
.end method

.method public final getSafeWithdrawalDuration()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalDuration:J

    return-wide v0
.end method

.method public final getSafeWithdrawalFeePercentage()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalFeePercentage:D

    return-wide v0
.end method

.method public final getStartsAt()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartsAtISO()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAtISO:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    return-object v0
.end method

.method public final getWebsite()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->website:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->id:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->author:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->contract:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->feeTokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAtISO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAtISO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->impact:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->debt:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->availableForClaim:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawSafely:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawImmediately:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->prematureWithdrawalFeePercentage:D

    invoke-static {v3, v4}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->immediateWithdrawalFeePercentage:D

    invoke-static {v3, v4}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalFeePercentage:D

    invoke-static {v3, v4}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalDuration:J

    invoke-static {v3, v4}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->annualPercentageMode:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->hasEnoughFunds:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->website:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePeriod:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePercent:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingDetailsItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contract="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->contract:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feeTokenItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->feeTokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formattedAPR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", formattedAPY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", compoundAccrualThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startsAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startsAtISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAtISO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endsAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endsAtISO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAtISO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->impact:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", debt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->debt:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", availableForClaim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->availableForClaim:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", canWithdrawSafely="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawSafely:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canWithdrawImmediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawImmediately:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prematureWithdrawalFeePercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->prematureWithdrawalFeePercentage:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", immediateWithdrawalFeePercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->immediateWithdrawalFeePercentage:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", safeWithdrawalFeePercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalFeePercentage:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", safeWithdrawalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", annualPercentageMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->annualPercentageMode:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasEnoughFunds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->hasEnoughFunds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", minimalRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", website="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->website:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", incomePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePeriod:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", incomePercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->tokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/model/wallet/crypto/TokenItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->contract:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->feeTokenItem:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/model/wallet/crypto/TokenItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->formattedAPY:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->compoundAccrualThreshold:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->startsAtISO:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->endsAtISO:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->impact:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->debt:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->availableForClaim:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawSafely:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->canWithdrawImmediately:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->prematureWithdrawalFeePercentage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->immediateWithdrawalFeePercentage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalFeePercentage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->safeWithdrawalDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->annualPercentageMode:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->hasEnoughFunds:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iMe/model/staking/StakingDetailsItem;->website:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePeriod:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/iMe/model/staking/StakingDetailsItem;->incomePercent:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
