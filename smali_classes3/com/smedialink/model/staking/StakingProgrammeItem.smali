.class public final Lcom/smedialink/model/staking/StakingProgrammeItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "StakingProgrammeItem.kt"


# instance fields
.field private final annualPercentageMode:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

.field private final apr:Ljava/lang/String;

.field private final apy:Ljava/lang/String;

.field private final endsAt:Ljava/lang/String;

.field private final id:J

.field private final isParticipated:Z

.field private final name:Ljava/lang/String;

.field private final tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;


# direct methods
.method public constructor <init>(JLjava/lang/String;ZLcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/model/staking/StakingAnnualPercentageMode;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenBalance"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apr"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apy"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annualPercentageMode"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endsAt"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->id:J

    .line 9
    iput-object p3, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->name:Ljava/lang/String;

    .line 10
    iput-boolean p4, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->isParticipated:Z

    .line 11
    iput-object p5, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 12
    iput-object p6, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apr:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apy:Ljava/lang/String;

    .line 14
    iput-object p8, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->annualPercentageMode:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    .line 15
    iput-object p9, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->endsAt:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/staking/StakingProgrammeItem;JLjava/lang/String;ZLcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/model/staking/StakingAnnualPercentageMode;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/model/staking/StakingProgrammeItem;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/smedialink/model/staking/StakingProgrammeItem;->id:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/smedialink/model/staking/StakingProgrammeItem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/smedialink/model/staking/StakingProgrammeItem;->isParticipated:Z

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/smedialink/model/staking/StakingProgrammeItem;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apr:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apy:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/smedialink/model/staking/StakingProgrammeItem;->annualPercentageMode:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/smedialink/model/staking/StakingProgrammeItem;->endsAt:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p9

    :goto_7
    move-wide p1, v2

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/smedialink/model/staking/StakingProgrammeItem;->copy(JLjava/lang/String;ZLcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/model/staking/StakingAnnualPercentageMode;Ljava/lang/String;)Lcom/smedialink/model/staking/StakingProgrammeItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->isParticipated:Z

    return v0
.end method

.method public final component4()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apr:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apy:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/smedialink/model/staking/StakingAnnualPercentageMode;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->annualPercentageMode:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->endsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;ZLcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/model/staking/StakingAnnualPercentageMode;Ljava/lang/String;)Lcom/smedialink/model/staking/StakingProgrammeItem;
    .locals 11

    const-string v0, "name"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenBalance"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apr"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apy"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annualPercentageMode"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endsAt"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/staking/StakingProgrammeItem;

    move-object v1, v0

    move-wide v2, p1

    move v5, p4

    invoke-direct/range {v1 .. v10}, Lcom/smedialink/model/staking/StakingProgrammeItem;-><init>(JLjava/lang/String;ZLcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/model/staking/StakingAnnualPercentageMode;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/staking/StakingProgrammeItem;

    iget-wide v3, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->id:J

    iget-wide v5, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->isParticipated:Z

    iget-boolean v3, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;->isParticipated:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    iget-object v3, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apr:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;->apr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apy:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;->apy:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->annualPercentageMode:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    iget-object v3, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;->annualPercentageMode:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->endsAt:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/model/staking/StakingProgrammeItem;->endsAt:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAnnualPercentageMode()Lcom/smedialink/model/staking/StakingAnnualPercentageMode;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->annualPercentageMode:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    return-object v0
.end method

.method public final getApr()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apr:Ljava/lang/String;

    return-object v0
.end method

.method public final getApy()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apy:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndsAt()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->endsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPercentageTextColor(Lcom/smedialink/model/staking/StakingAnnualPercentageMode;)Ljava/lang/String;
    .locals 1

    const-string v0, "annualPercentageMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->annualPercentageMode:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    if-ne v0, p1, :cond_0

    const-string p1, "windowBackgroundWhiteBlueText"

    goto :goto_0

    :cond_0
    const-string p1, "windowBackgroundWhiteBlackText"

    :goto_0
    return-object p1
.end method

.method public final getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->id:J

    invoke-static {v0, v1}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->isParticipated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apy:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->annualPercentageMode:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->endsAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isParticipated()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->isParticipated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingProgrammeItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isParticipated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->isParticipated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tokenBalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", apy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->apy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", annualPercentageMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->annualPercentageMode:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endsAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;->endsAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
