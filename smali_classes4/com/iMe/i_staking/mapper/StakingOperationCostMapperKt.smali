.class public final Lcom/iMe/i_staking/mapper/StakingOperationCostMapperKt;
.super Ljava/lang/Object;
.source "StakingOperationCostMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingOperationCostResponse;)Lcom/iMe/storage/domain/model/staking/StakingOperationCost;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    .line 11
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingOperationCostResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingOperationCostResponse;->getValue()Lcom/iMe/i_staking/response/StakingValuesResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/i_staking/mapper/StakingOperationCostMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingValuesResponse;)Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object p0

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/staking/StakingValues;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingValuesResponse;)Lcom/iMe/storage/domain/model/staking/StakingValues;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingValues;

    .line 17
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingValuesResponse;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingValuesResponse;->getAsFiat()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/wallet/FiatValueMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object p0

    .line 16
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/staking/StakingValues;-><init>(Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    return-object v0
.end method
