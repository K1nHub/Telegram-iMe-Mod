package com.iMe.i_staking.request;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
/* compiled from: StakingIdRequest.kt */
/* loaded from: classes3.dex */
public final class StakingIdRequest {
    private final long stakingId;

    public static /* synthetic */ StakingIdRequest copy$default(StakingIdRequest stakingIdRequest, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = stakingIdRequest.stakingId;
        }
        return stakingIdRequest.copy(j);
    }

    public final long component1() {
        return this.stakingId;
    }

    public final StakingIdRequest copy(long j) {
        return new StakingIdRequest(j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StakingIdRequest) && this.stakingId == ((StakingIdRequest) obj).stakingId;
    }

    public int hashCode() {
        return BotsDbModel$$ExternalSyntheticBackport0.m706m(this.stakingId);
    }

    public String toString() {
        return "StakingIdRequest(stakingId=" + this.stakingId + ')';
    }

    public StakingIdRequest(long j) {
        this.stakingId = j;
    }

    public final long getStakingId() {
        return this.stakingId;
    }
}
