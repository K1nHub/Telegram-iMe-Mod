.class public final Lcom/iMe/i_staking/mapper/StakingTotalStatsMapperKt;
.super Ljava/lang/Object;
.source "StakingTotalStatsMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingTotalStatsResponse;)Lcom/iMe/storage/domain/model/staking/StakingTotalStats;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingTotalStats;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingTotalStatsResponse;->getTotalStakedUsd()F

    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingTotalStatsResponse;->getTotalProfitUsd()F

    move-result p0

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/staking/StakingTotalStats;-><init>(FF)V

    return-object v0
.end method
