package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingOperationCostResponse;
import com.iMe.i_staking.response.StakingValuesResponse;
import com.iMe.storage.data.mapper.wallet.FiatValueMappingKt;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.domain.model.staking.StakingOperationCost;
import com.iMe.storage.domain.model.staking.StakingValues;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationCostMapper.kt */
/* loaded from: classes3.dex */
public final class StakingOperationCostMapperKt {
    public static final StakingOperationCost mapToDomain(StakingOperationCostResponse stakingOperationCostResponse) {
        Intrinsics.checkNotNullParameter(stakingOperationCostResponse, "<this>");
        return new StakingOperationCost(TokenMappingKt.mapToDomain(stakingOperationCostResponse.getToken()), mapToDomain(stakingOperationCostResponse.getValue()));
    }

    public static final StakingValues mapToDomain(StakingValuesResponse stakingValuesResponse) {
        Intrinsics.checkNotNullParameter(stakingValuesResponse, "<this>");
        return new StakingValues(stakingValuesResponse.getAsToken(), FiatValueMappingKt.mapToDomain(stakingValuesResponse.getAsFiat()));
    }
}
