package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingApprovalInfoResponse;
import com.iMe.storage.domain.model.staking.StakingApprovalInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingApprovalInfoMapper.kt */
/* loaded from: classes4.dex */
public final class StakingApprovalInfoMapperKt {
    public static final StakingApprovalInfo mapToDomain(StakingApprovalInfoResponse stakingApprovalInfoResponse) {
        Intrinsics.checkNotNullParameter(stakingApprovalInfoResponse, "<this>");
        return new StakingApprovalInfo(stakingApprovalInfoResponse.getFeeToken(), stakingApprovalInfoResponse.getToken());
    }
}
