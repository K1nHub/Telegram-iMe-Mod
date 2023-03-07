package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingApprovalInfoResponse;
import com.smedialink.storage.domain.model.staking.StakingApprovalInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingApprovalInfoMapper.kt */
/* loaded from: classes3.dex */
public final class StakingApprovalInfoMapperKt {
    public static final StakingApprovalInfo mapToDomain(StakingApprovalInfoResponse stakingApprovalInfoResponse) {
        Intrinsics.checkNotNullParameter(stakingApprovalInfoResponse, "<this>");
        return new StakingApprovalInfo(stakingApprovalInfoResponse.getFeeToken(), stakingApprovalInfoResponse.getToken());
    }
}
