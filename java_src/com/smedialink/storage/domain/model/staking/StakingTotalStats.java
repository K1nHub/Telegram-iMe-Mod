package com.smedialink.storage.domain.model.staking;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingTotalStats.kt */
/* loaded from: classes3.dex */
public final class StakingTotalStats {
    private final float totalProfitUsd;
    private final float totalStakedUsd;

    public static /* synthetic */ StakingTotalStats copy$default(StakingTotalStats stakingTotalStats, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = stakingTotalStats.totalStakedUsd;
        }
        if ((i & 2) != 0) {
            f2 = stakingTotalStats.totalProfitUsd;
        }
        return stakingTotalStats.copy(f, f2);
    }

    public final float component1() {
        return this.totalStakedUsd;
    }

    public final float component2() {
        return this.totalProfitUsd;
    }

    public final StakingTotalStats copy(float f, float f2) {
        return new StakingTotalStats(f, f2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingTotalStats) {
            StakingTotalStats stakingTotalStats = (StakingTotalStats) obj;
            return Intrinsics.areEqual(Float.valueOf(this.totalStakedUsd), Float.valueOf(stakingTotalStats.totalStakedUsd)) && Intrinsics.areEqual(Float.valueOf(this.totalProfitUsd), Float.valueOf(stakingTotalStats.totalProfitUsd));
        }
        return false;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.totalStakedUsd) * 31) + Float.floatToIntBits(this.totalProfitUsd);
    }

    public String toString() {
        return "StakingTotalStats(totalStakedUsd=" + this.totalStakedUsd + ", totalProfitUsd=" + this.totalProfitUsd + ')';
    }

    public StakingTotalStats(float f, float f2) {
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
