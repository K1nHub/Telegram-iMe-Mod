package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingTokenResponse;
import com.iMe.storage.domain.model.staking.StakingToken;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingTokenMapper.kt */
/* loaded from: classes3.dex */
public final class StakingTokenMapperKt {
    public static final StakingToken mapToDomain(StakingTokenResponse stakingTokenResponse) {
        Intrinsics.checkNotNullParameter(stakingTokenResponse, "<this>");
        return new StakingToken(stakingTokenResponse.getAddress(), stakingTokenResponse.getName(), stakingTokenResponse.getTicker());
    }
}
