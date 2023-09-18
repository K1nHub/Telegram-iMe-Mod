package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingRulesResponse;
import com.iMe.storage.domain.model.staking.StakingRules;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingRulesMapper.kt */
/* loaded from: classes4.dex */
public final class StakingRulesMapperKt {
    public static final StakingRules mapToDomain(StakingRulesResponse stakingRulesResponse) {
        Intrinsics.checkNotNullParameter(stakingRulesResponse, "<this>");
        return new StakingRules(stakingRulesResponse.getCanDeposit(), stakingRulesResponse.getCanWithdrawImmediately(), stakingRulesResponse.getCanWithdrawSafely(), stakingRulesResponse.getImmediateWithdrawalFeeTaken(), stakingRulesResponse.getSafeWithdrawalFeeTaken(), stakingRulesResponse.getNeededAllowanceForDeposit());
    }
}
