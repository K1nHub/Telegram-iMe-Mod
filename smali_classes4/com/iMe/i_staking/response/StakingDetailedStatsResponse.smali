.class public final Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;
.super Ljava/lang/Object;
.source "StakingDetailedStatsResponse.kt"


# instance fields
.field private final availableForWithdrawal:Ljava/math/BigDecimal;

.field private final debt:Lcom/iMe/i_staking/response/StakingValuesResponse;

.field private final feeTokenApproved:Z

.field private final impact:Lcom/iMe/i_staking/response/StakingValuesResponse;

.field private final participated:Z

.field private final profit:Lcom/iMe/i_staking/response/StakingValuesResponse;

.field private final tokenApproved:Z

.field private final withdrawnTokens:Lcom/iMe/i_staking/response/WithdrawnTokensResponse;


# direct methods
.method public constructor <init>(Lcom/iMe/i_staking/response/StakingValuesResponse;Lcom/iMe/i_staking/response/StakingValuesResponse;Ljava/math/BigDecimal;Lcom/iMe/i_staking/response/WithdrawnTokensResponse;ZZLcom/iMe/i_staking/response/StakingValuesResponse;Z)V
    .locals 1

    const-string v0, "debt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impact"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableForWithdrawal"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "withdrawnTokens"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profit"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->debt:Lcom/iMe/i_staking/response/StakingValuesResponse;

    .line 7
    iput-object p2, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->impact:Lcom/iMe/i_staking/response/StakingValuesResponse;

    .line 8
    iput-object p3, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->availableForWithdrawal:Ljava/math/BigDecimal;

    .line 9
    iput-object p4, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->withdrawnTokens:Lcom/iMe/i_staking/response/WithdrawnTokensResponse;

    .line 10
    iput-boolean p5, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->tokenApproved:Z

    .line 11
    iput-boolean p6, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->feeTokenApproved:Z

    .line 12
    iput-object p7, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->profit:Lcom/iMe/i_staking/response/StakingValuesResponse;

    .line 13
    iput-boolean p8, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->participated:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;Lcom/iMe/i_staking/response/StakingValuesResponse;Lcom/iMe/i_staking/response/StakingValuesResponse;Ljava/math/BigDecimal;Lcom/iMe/i_staking/response/WithdrawnTokensResponse;ZZLcom/iMe/i_staking/response/StakingValuesResponse;ZILjava/lang/Object;)Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->debt:Lcom/iMe/i_staking/response/StakingValuesResponse;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->impact:Lcom/iMe/i_staking/response/StakingValuesResponse;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->availableForWithdrawal:Ljava/math/BigDecimal;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->withdrawnTokens:Lcom/iMe/i_staking/response/WithdrawnTokensResponse;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->tokenApproved:Z

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->feeTokenApproved:Z

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->profit:Lcom/iMe/i_staking/response/StakingValuesResponse;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->participated:Z

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move p5, v6

    move p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->copy(Lcom/iMe/i_staking/response/StakingValuesResponse;Lcom/iMe/i_staking/response/StakingValuesResponse;Ljava/math/BigDecimal;Lcom/iMe/i_staking/response/WithdrawnTokensResponse;ZZLcom/iMe/i_staking/response/StakingValuesResponse;Z)Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/iMe/i_staking/response/StakingValuesResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->debt:Lcom/iMe/i_staking/response/StakingValuesResponse;

    return-object v0
.end method

.method public final component2()Lcom/iMe/i_staking/response/StakingValuesResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->impact:Lcom/iMe/i_staking/response/StakingValuesResponse;

    return-object v0
.end method

.method public final component3()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->availableForWithdrawal:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component4()Lcom/iMe/i_staking/response/WithdrawnTokensResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->withdrawnTokens:Lcom/iMe/i_staking/response/WithdrawnTokensResponse;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->tokenApproved:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->feeTokenApproved:Z

    return v0
.end method

.method public final component7()Lcom/iMe/i_staking/response/StakingValuesResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->profit:Lcom/iMe/i_staking/response/StakingValuesResponse;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->participated:Z

    return v0
.end method

.method public final copy(Lcom/iMe/i_staking/response/StakingValuesResponse;Lcom/iMe/i_staking/response/StakingValuesResponse;Ljava/math/BigDecimal;Lcom/iMe/i_staking/response/WithdrawnTokensResponse;ZZLcom/iMe/i_staking/response/StakingValuesResponse;Z)Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;
    .locals 10

    const-string v0, "debt"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impact"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableForWithdrawal"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "withdrawnTokens"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profit"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;

    move-object v1, v0

    move v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;-><init>(Lcom/iMe/i_staking/response/StakingValuesResponse;Lcom/iMe/i_staking/response/StakingValuesResponse;Ljava/math/BigDecimal;Lcom/iMe/i_staking/response/WithdrawnTokensResponse;ZZLcom/iMe/i_staking/response/StakingValuesResponse;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->debt:Lcom/iMe/i_staking/response/StakingValuesResponse;

    iget-object v3, p1, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->debt:Lcom/iMe/i_staking/response/StakingValuesResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->impact:Lcom/iMe/i_staking/response/StakingValuesResponse;

    iget-object v3, p1, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->impact:Lcom/iMe/i_staking/response/StakingValuesResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->availableForWithdrawal:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->availableForWithdrawal:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->withdrawnTokens:Lcom/iMe/i_staking/response/WithdrawnTokensResponse;

    iget-object v3, p1, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->withdrawnTokens:Lcom/iMe/i_staking/response/WithdrawnTokensResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->tokenApproved:Z

    iget-boolean v3, p1, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->tokenApproved:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->feeTokenApproved:Z

    iget-boolean v3, p1, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->feeTokenApproved:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->profit:Lcom/iMe/i_staking/response/StakingValuesResponse;

    iget-object v3, p1, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->profit:Lcom/iMe/i_staking/response/StakingValuesResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->participated:Z

    iget-boolean p1, p1, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->participated:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAvailableForWithdrawal()Ljava/math/BigDecimal;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->availableForWithdrawal:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getDebt()Lcom/iMe/i_staking/response/StakingValuesResponse;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->debt:Lcom/iMe/i_staking/response/StakingValuesResponse;

    return-object v0
.end method

.method public final getFeeTokenApproved()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->feeTokenApproved:Z

    return v0
.end method

.method public final getImpact()Lcom/iMe/i_staking/response/StakingValuesResponse;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->impact:Lcom/iMe/i_staking/response/StakingValuesResponse;

    return-object v0
.end method

.method public final getParticipated()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->participated:Z

    return v0
.end method

.method public final getProfit()Lcom/iMe/i_staking/response/StakingValuesResponse;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->profit:Lcom/iMe/i_staking/response/StakingValuesResponse;

    return-object v0
.end method

.method public final getTokenApproved()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->tokenApproved:Z

    return v0
.end method

.method public final getWithdrawnTokens()Lcom/iMe/i_staking/response/WithdrawnTokensResponse;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->withdrawnTokens:Lcom/iMe/i_staking/response/WithdrawnTokensResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->debt:Lcom/iMe/i_staking/response/StakingValuesResponse;

    invoke-virtual {v0}, Lcom/iMe/i_staking/response/StakingValuesResponse;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->impact:Lcom/iMe/i_staking/response/StakingValuesResponse;

    invoke-virtual {v1}, Lcom/iMe/i_staking/response/StakingValuesResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->availableForWithdrawal:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->withdrawnTokens:Lcom/iMe/i_staking/response/WithdrawnTokensResponse;

    invoke-virtual {v1}, Lcom/iMe/i_staking/response/WithdrawnTokensResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->tokenApproved:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->feeTokenApproved:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->profit:Lcom/iMe/i_staking/response/StakingValuesResponse;

    invoke-virtual {v1}, Lcom/iMe/i_staking/response/StakingValuesResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->participated:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingDetailedStatsResponse(debt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->debt:Lcom/iMe/i_staking/response/StakingValuesResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", impact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->impact:Lcom/iMe/i_staking/response/StakingValuesResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", availableForWithdrawal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->availableForWithdrawal:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", withdrawnTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->withdrawnTokens:Lcom/iMe/i_staking/response/WithdrawnTokensResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenApproved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->tokenApproved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", feeTokenApproved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->feeTokenApproved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", profit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->profit:Lcom/iMe/i_staking/response/StakingValuesResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", participated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->participated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
