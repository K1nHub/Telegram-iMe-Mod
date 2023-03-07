package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingOperationCostResponse;
import com.iMe.i_staking.response.StakingValuesResponse;
import com.smedialink.storage.domain.model.staking.StakingOperationCost;
import com.smedialink.storage.domain.model.staking.StakingValues;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationCostMapper.kt */
/* loaded from: classes3.dex */
public final class StakingOperationCostMapperKt {
    public static final StakingOperationCost mapToDomain(StakingOperationCostResponse stakingOperationCostResponse) {
        Intrinsics.checkNotNullParameter(stakingOperationCostResponse, "<this>");
        return new StakingOperationCost(StakingTokenMapperKt.mapToDomain(stakingOperationCostResponse.getToken()), mapToDomain(stakingOperationCostResponse.getValue()));
    }

    public static final StakingValues mapToDomain(StakingValuesResponse stakingValuesResponse) {
        Intrinsics.checkNotNullParameter(stakingValuesResponse, "<this>");
        return new StakingValues(stakingValuesResponse.getAsToken(), stakingValuesResponse.getAsUsd());
    }
}
