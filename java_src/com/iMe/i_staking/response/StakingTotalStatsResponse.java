package com.iMe.i_staking.response;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingTotalStatsResponse.kt */
/* loaded from: classes3.dex */
public final class StakingTotalStatsResponse {
    private final float totalProfitUsd;
    private final float totalStakedUsd;

    public static /* synthetic */ StakingTotalStatsResponse copy$default(StakingTotalStatsResponse stakingTotalStatsResponse, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = stakingTotalStatsResponse.totalStakedUsd;
        }
        if ((i & 2) != 0) {
            f2 = stakingTotalStatsResponse.totalProfitUsd;
        }
        return stakingTotalStatsResponse.copy(f, f2);
    }

    public final float component1() {
        return this.totalStakedUsd;
    }

    public final float component2() {
        return this.totalProfitUsd;
    }

    public final StakingTotalStatsResponse copy(float f, float f2) {
        return new StakingTotalStatsResponse(f, f2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingTotalStatsResponse) {
            StakingTotalStatsResponse stakingTotalStatsResponse = (StakingTotalStatsResponse) obj;
            return Intrinsics.areEqual(Float.valueOf(this.totalStakedUsd), Float.valueOf(stakingTotalStatsResponse.totalStakedUsd)) && Intrinsics.areEqual(Float.valueOf(this.totalProfitUsd), Float.valueOf(stakingTotalStatsResponse.totalProfitUsd));
        }
        return false;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.totalStakedUsd) * 31) + Float.floatToIntBits(this.totalProfitUsd);
    }

    public String toString() {
        return "StakingTotalStatsResponse(totalStakedUsd=" + this.totalStakedUsd + ", totalProfitUsd=" + this.totalProfitUsd + ')';
    }

    public StakingTotalStatsResponse(float f, float f2) {
        this.totalStakedUsd = f;
        this.totalProfitUsd = f2;
    }

    public final float getTotalStakedUsd() {
        return this.totalStakedUsd;
    }

    public final float getTotalProfitUsd() {
        return this.totalProfitUsd;
    }
}
