package com.iMe.storage.domain.model.staking;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingStats.kt */
/* loaded from: classes4.dex */
public final class StakingStats {
    private final StakingValues debt;
    private final boolean isParticipated;

    public static /* synthetic */ StakingStats copy$default(StakingStats stakingStats, boolean z, StakingValues stakingValues, int i, Object obj) {
        if ((i & 1) != 0) {
            z = stakingStats.isParticipated;
        }
        if ((i & 2) != 0) {
            stakingValues = stakingStats.debt;
        }
        return stakingStats.copy(z, stakingValues);
    }

    public final boolean component1() {
        return this.isParticipated;
    }

    public final StakingValues component2() {
        return this.debt;
    }

    public final StakingStats copy(boolean z, StakingValues stakingValues) {
        return new StakingStats(z, stakingValues);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingStats) {
            StakingStats stakingStats = (StakingStats) obj;
            return this.isParticipated == stakingStats.isParticipated && Intrinsics.areEqual(this.debt, stakingStats.debt);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.isParticipated;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        StakingValues stakingValues = this.debt;
        return i + (stakingValues == null ? 0 : stakingValues.hashCode());
    }

    public String toString() {
        return "StakingStats(isParticipated=" + this.isParticipated + ", debt=" + this.debt + ')';
    }

    public StakingStats(boolean z, StakingValues stakingValues) {
        this.isParticipated = z;
        this.debt = stakingValues;
    }

    public final boolean isParticipated() {
        return this.isParticipated;
    }

    public final StakingValues getDebt() {
        return this.debt;
    }
}
