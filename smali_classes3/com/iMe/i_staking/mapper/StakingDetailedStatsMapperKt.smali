.class public final Lcom/iMe/i_staking/mapper/StakingDetailedStatsMapperKt;
.super Ljava/lang/Object;
.source "StakingDetailedStatsMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;)Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->getDebt()Lcom/iMe/i_staking/response/StakingValuesResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/i_staking/mapper/StakingOperationCostMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingValuesResponse;)Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->getImpact()Lcom/iMe/i_staking/response/StakingValuesResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/i_staking/mapper/StakingOperationCostMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingValuesResponse;)Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->getAvailableForWithdrawal()Ljava/math/BigDecimal;

    move-result-object v4

    .line 11
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->getWithdrawnTokens()Lcom/iMe/i_staking/response/WithdrawnTokensResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/i_staking/mapper/WithdrawnTokensMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/WithdrawnTokensResponse;)Lcom/smedialink/storage/domain/model/staking/WithdrawnTokens;

    move-result-object v5

    .line 12
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->getTokenApproved()Z

    move-result v6

    .line 13
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->getFeeTokenApproved()Z

    move-result v7

    .line 14
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->getProfit()Lcom/iMe/i_staking/response/StakingValuesResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/i_staking/mapper/StakingOperationCostMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingValuesResponse;)Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v8

    .line 15
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;->getParticipated()Z

    move-result v9

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v9}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;-><init>(Lcom/smedialink/storage/domain/model/staking/StakingValues;Lcom/smedialink/storage/domain/model/staking/StakingValues;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/staking/WithdrawnTokens;ZZLcom/smedialink/storage/domain/model/staking/StakingValues;Z)V

    return-object v0
.end method
