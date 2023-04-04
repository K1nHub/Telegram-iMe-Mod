package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingDetailedStatsResponse;
import com.iMe.storage.domain.model.staking.StakingDetailedStats;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingDetailedStatsMapper.kt */
/* loaded from: classes3.dex */
public final class StakingDetailedStatsMapperKt {
    public static final StakingDetailedStats mapToDomain(StakingDetailedStatsResponse stakingDetailedStatsResponse) {
        Intrinsics.checkNotNullParameter(stakingDetailedStatsResponse, "<this>");
        return new StakingDetailedStats(StakingOperationCostMapperKt.mapToDomain(stakingDetailedStatsResponse.getDebt()), StakingOperationCostMapperKt.mapToDomain(stakingDetailedStatsResponse.getImpact()), stakingDetailedStatsResponse.getAvailableForWithdrawal(), WithdrawnTokensMapperKt.mapToDomain(stakingDetailedStatsResponse.getWithdrawnTokens()), stakingDetailedStatsResponse.getTokenApproved(), stakingDetailedStatsResponse.getFeeTokenApproved(), StakingOperationCostMapperKt.mapToDomain(stakingDetailedStatsResponse.getProfit()), stakingDetailedStatsResponse.getParticipated());
    }
}
