package com.smedialink.storage.domain.model.staking;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingApprovalInfo.kt */
/* loaded from: classes3.dex */
public final class StakingApprovalInfo {
    private final StakingTokenApprovalStatus feeToken;
    private final StakingTokenApprovalStatus token;

    public static /* synthetic */ StakingApprovalInfo copy$default(StakingApprovalInfo stakingApprovalInfo, StakingTokenApprovalStatus stakingTokenApprovalStatus, StakingTokenApprovalStatus stakingTokenApprovalStatus2, int i, Object obj) {
        if ((i & 1) != 0) {
            stakingTokenApprovalStatus = stakingApprovalInfo.feeToken;
        }
        if ((i & 2) != 0) {
            stakingTokenApprovalStatus2 = stakingApprovalInfo.token;
        }
        return stakingApprovalInfo.copy(stakingTokenApprovalStatus, stakingTokenApprovalStatus2);
    }

    public final StakingTokenApprovalStatus component1() {
        return this.feeToken;
    }

    public final StakingTokenApprovalStatus component2() {
        return this.token;
    }

    public final StakingApprovalInfo copy(StakingTokenApprovalStatus feeToken, StakingTokenApprovalStatus token) {
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(token, "token");
        return new StakingApprovalInfo(feeToken, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingApprovalInfo) {
            StakingApprovalInfo stakingApprovalInfo = (StakingApprovalInfo) obj;
            return this.feeToken == stakingApprovalInfo.feeToken && this.token == stakingApprovalInfo.token;
        }
        return false;
    }

    public int hashCode() {
        return (this.feeToken.hashCode() * 31) + this.token.hashCode();
    }

    public String toString() {
        return "StakingApprovalInfo(feeToken=" + this.feeToken + ", token=" + this.token + ')';
    }

    public StakingApprovalInfo(StakingTokenApprovalStatus feeToken, StakingTokenApprovalStatus token) {
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
