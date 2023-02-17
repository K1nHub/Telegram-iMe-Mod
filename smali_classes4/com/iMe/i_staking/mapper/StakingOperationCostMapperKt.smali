.class public final Lcom/iMe/i_staking/mapper/StakingOperationCostMapperKt;
.super Ljava/lang/Object;
.source "StakingOperationCostMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingOperationCostResponse;)Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    .line 10
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingOperationCostResponse;->getToken()Lcom/iMe/i_staking/response/StakingTokenResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/i_staking/mapper/StakingTokenMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingTokenResponse;)Lcom/smedialink/storage/domain/model/staking/StakingToken;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingOperationCostResponse;->getValue()Lcom/iMe/i_staking/response/StakingValuesResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/i_staking/mapper/StakingOperationCostMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingValuesResponse;)Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object p0

    .line 9
    invoke-direct {v0, v1, p0}, Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;-><init>(Lcom/smedialink/storage/domain/model/staking/StakingToken;Lcom/smedialink/storage/domain/model/staking/StakingValues;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingValuesResponse;)Lcom/smedialink/storage/domain/model/staking/StakingValues;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingValues;

    .line 16
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingValuesResponse;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingValuesResponse;->getAsUsd()Ljava/math/BigDecimal;

    move-result-object p0

    .line 15
    invoke-direct {v0, v1, p0}, Lcom/smedialink/storage/domain/model/staking/StakingValues;-><init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    return-object v0
.end method
