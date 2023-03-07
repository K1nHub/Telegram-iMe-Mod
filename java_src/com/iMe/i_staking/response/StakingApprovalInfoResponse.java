package com.iMe.i_staking.response;

import com.smedialink.storage.domain.model.staking.StakingTokenApprovalStatus;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingApprovalInfoResponse.kt */
/* loaded from: classes3.dex */
public final class StakingApprovalInfoResponse {
    private final StakingTokenApprovalStatus feeToken;
    private final StakingTokenApprovalStatus token;

    public static /* synthetic */ StakingApprovalInfoResponse copy$default(StakingApprovalInfoResponse stakingApprovalInfoResponse, StakingTokenApprovalStatus stakingTokenApprovalStatus, StakingTokenApprovalStatus stakingTokenApprovalStatus2, int i, Object obj) {
        if ((i & 1) != 0) {
            stakingTokenApprovalStatus = stakingApprovalInfoResponse.feeToken;
        }
        if ((i & 2) != 0) {
            stakingTokenApprovalStatus2 = stakingApprovalInfoResponse.token;
        }
        return stakingApprovalInfoResponse.copy(stakingTokenApprovalStatus, stakingTokenApprovalStatus2);
    }

    public final StakingTokenApprovalStatus component1() {
        return this.feeToken;
    }

    public final StakingTokenApprovalStatus component2() {
        return this.token;
    }

    public final StakingApprovalInfoResponse copy(StakingTokenApprovalStatus feeToken, StakingTokenApprovalStatus token) {
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(token, "token");
        return new StakingApprovalInfoResponse(feeToken, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingApprovalInfoResponse) {
            StakingApprovalInfoResponse stakingApprovalInfoResponse = (StakingApprovalInfoResponse) obj;
            return this.feeToken == stakingApprovalInfoResponse.feeToken && this.token == stakingApprovalInfoResponse.token;
        }
        return false;
    }

    public int hashCode() {
        return (this.feeToken.hashCode() * 31) + this.token.hashCode();
    }

    public String toString() {
        return "StakingApprovalInfoResponse(feeToken=" + this.feeToken + ", token=" + this.token + ')';
    }

    public StakingApprovalInfoResponse(StakingTokenApprovalStatus feeToken, StakingTokenApprovalStatus token) {
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(token, "token");
        this.feeToken = feeToken;
        this.token = token;
    }

    public final StakingTokenApprovalStatus getFeeToken() {
        return this.feeToken;
    }

    public final StakingTokenApprovalStatus getToken() {
        return this.token;
    }
}
