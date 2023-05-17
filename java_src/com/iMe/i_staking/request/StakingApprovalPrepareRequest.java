package com.iMe.i_staking.request;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingApprovalPrepareRequest.kt */
/* loaded from: classes3.dex */
public final class StakingApprovalPrepareRequest {
    private final long stakingId;
    private final String token;

    public static /* synthetic */ StakingApprovalPrepareRequest copy$default(StakingApprovalPrepareRequest stakingApprovalPrepareRequest, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = stakingApprovalPrepareRequest.stakingId;
        }
        if ((i & 2) != 0) {
            str = stakingApprovalPrepareRequest.token;
        }
        return stakingApprovalPrepareRequest.copy(j, str);
    }

    public final long component1() {
        return this.stakingId;
    }

    public final String component2() {
        return this.token;
    }

    public final StakingApprovalPrepareRequest copy(long j, String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new StakingApprovalPrepareRequest(j, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingApprovalPrepareRequest) {
            StakingApprovalPrepareRequest stakingApprovalPrepareRequest = (StakingApprovalPrepareRequest) obj;
            return this.stakingId == stakingApprovalPrepareRequest.stakingId && Intrinsics.areEqual(this.token, stakingApprovalPrepareRequest.token);
        }
        return false;
    }

    public int hashCode() {
        return (BotsDbModel$$ExternalSyntheticBackport0.m706m(this.stakingId) * 31) + this.token.hashCode();
    }

    public String toString() {
        return "StakingApprovalPrepareRequest(stakingId=" + this.stakingId + ", token=" + this.token + ')';
    }

    public StakingApprovalPrepareRequest(long j, String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.stakingId = j;
        this.token = token;
    }

    public final long getStakingId() {
        return this.stakingId;
    }

    public final String getToken() {
        return this.token;
    }
}
