package com.iMe.i_staking.response;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingStatsResponse.kt */
/* loaded from: classes3.dex */
public final class StakingStatsResponse {
    private final StakingValuesResponse debt;
    private final boolean participated;

    public static /* synthetic */ StakingStatsResponse copy$default(StakingStatsResponse stakingStatsResponse, boolean z, StakingValuesResponse stakingValuesResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            z = stakingStatsResponse.participated;
        }
        if ((i & 2) != 0) {
            stakingValuesResponse = stakingStatsResponse.debt;
        }
        return stakingStatsResponse.copy(z, stakingValuesResponse);
    }

    public final boolean component1() {
        return this.participated;
    }

    public final StakingValuesResponse component2() {
        return this.debt;
    }

    public final StakingStatsResponse copy(boolean z, StakingValuesResponse debt) {
        Intrinsics.checkNotNullParameter(debt, "debt");
        return new StakingStatsResponse(z, debt);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingStatsResponse) {
            StakingStatsResponse stakingStatsResponse = (StakingStatsResponse) obj;
            return this.participated == stakingStatsResponse.participated && Intrinsics.areEqual(this.debt, stakingStatsResponse.debt);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.participated;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + this.debt.hashCode();
    }

    public String toString() {
        return "StakingStatsResponse(participated=" + this.participated + ", debt=" + this.debt + ')';
    }

    public StakingStatsResponse(boolean z, StakingValuesResponse debt) {
        Intrinsics.checkNotNullParameter(debt, "debt");
        this.participated = z;
        this.debt = debt;
    }

    public final boolean getParticipated() {
        return this.participated;
    }

    public final StakingValuesResponse getDebt() {
        return this.debt;
    }
}
