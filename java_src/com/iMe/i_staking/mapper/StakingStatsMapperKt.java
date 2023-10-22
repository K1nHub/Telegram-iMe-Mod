package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingStatsResponse;
import com.iMe.i_staking.response.StakingValuesResponse;
import com.iMe.storage.domain.model.staking.StakingStats;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingStatsMapper.kt */
/* loaded from: classes3.dex */
public final class StakingStatsMapperKt {
    public static final StakingStats mapToDomain(StakingStatsResponse stakingStatsResponse) {
        Intrinsics.checkNotNullParameter(stakingStatsResponse, "<this>");
        boolean participated = stakingStatsResponse.getParticipated();
        StakingValuesResponse debt = stakingStatsResponse.getDebt();
        return new StakingStats(participated, debt != null ? StakingOperationCostMapperKt.mapToDomain(debt) : null);
    }
}
