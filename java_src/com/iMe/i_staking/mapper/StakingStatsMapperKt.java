package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingStatsResponse;
import com.iMe.storage.domain.model.staking.StakingStats;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingStatsMapper.kt */
/* loaded from: classes3.dex */
public final class StakingStatsMapperKt {
    public static final StakingStats mapToDomain(StakingStatsResponse stakingStatsResponse) {
        Intrinsics.checkNotNullParameter(stakingStatsResponse, "<this>");
        return new StakingStats(stakingStatsResponse.getParticipated(), StakingOperationCostMapperKt.mapToDomain(stakingStatsResponse.getDebt()));
    }
}
