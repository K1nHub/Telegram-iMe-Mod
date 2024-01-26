package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingTotalStatsResponse;
import com.iMe.storage.domain.model.staking.StakingTotalStats;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingTotalStatsMapper.kt */
/* loaded from: classes3.dex */
public final class StakingTotalStatsMapperKt {
    public static final StakingTotalStats mapToDomain(StakingTotalStatsResponse stakingTotalStatsResponse) {
        Intrinsics.checkNotNullParameter(stakingTotalStatsResponse, "<this>");
        return new StakingTotalStats(stakingTotalStatsResponse.getTotalStakedUsd(), stakingTotalStatsResponse.getTotalProfitUsd());
    }
}
