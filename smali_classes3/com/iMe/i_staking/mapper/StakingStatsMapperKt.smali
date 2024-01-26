.class public final Lcom/iMe/i_staking/mapper/StakingStatsMapperKt;
.super Ljava/lang/Object;
.source "StakingStatsMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingStatsResponse;)Lcom/iMe/storage/domain/model/staking/StakingStats;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingStats;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingStatsResponse;->getParticipated()Z

    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingStatsResponse;->getDebt()Lcom/iMe/i_staking/response/StakingValuesResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/iMe/i_staking/mapper/StakingOperationCostMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingValuesResponse;)Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/staking/StakingStats;-><init>(ZLcom/iMe/storage/domain/model/staking/StakingValues;)V

    return-object v0
.end method
