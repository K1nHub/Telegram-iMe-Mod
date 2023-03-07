package com.smedialink.storage.domain.model.staking;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingDetailedStats.kt */
/* loaded from: classes3.dex */
public final class StakingDetailedStats {
    private final BigDecimal availableForWithdrawal;
    private final StakingValues debt;
    private final boolean feeTokenApproved;
    private final StakingValues impact;
    private final boolean isParticipated;
    private final StakingValues profit;
    private final boolean tokenApproved;
    private final WithdrawnTokens withdrawnTokens;

    public final StakingValues component1() {
        return this.debt;
    }

    public final StakingValues component2() {
        return this.impact;
    }

    public final BigDecimal component3() {
        return this.availableForWithdrawal;
    }

    public final WithdrawnTokens component4() {
        return this.withdrawnTokens;
    }

    public final boolean component5() {
        return this.tokenApproved;
    }

    public final boolean component6() {
        return this.feeTokenApproved;
    }

    public final StakingValues component7() {
        return this.profit;
    }

    public final boolean component8() {
        return this.isParticipated;
    }

    public final StakingDetailedStats copy(StakingValues debt, StakingValues impact, BigDecimal availableForWithdrawal, WithdrawnTokens withdrawnTokens, boolean z, boolean z2, StakingValues profit, boolean z3) {
        Intrinsics.checkNotNullParameter(debt, "debt");
        Intrinsics.checkNotNullParameter(impact, "impact");
        Intrinsics.checkNotNullParameter(availableForWithdrawal, "availableForWithdrawal");
        Intrinsics.checkNotNullParameter(withdrawnTokens, "withdrawnTokens");
        Intrinsics.checkNotNullParameter(profit, "profit");
        return new StakingDetailedStats(debt, impact, availableForWithdrawal, withdrawnTokens, z, z2, profit, z3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingDetailedStats) {
            StakingDetailedStats stakingDetailedStats = (StakingDetailedStats) obj;
            return Intrinsics.areEqual(this.debt, stakingDetailedStats.debt) && Intrinsics.areEqual(this.impact, stakingDetailedStats.impact) && Intrinsics.areEqual(this.availableForWithdrawal, stakingDetailedStats.availableForWithdrawal) && Intrinsics.areEqual(this.withdrawnTokens, stakingDetailedStats.withdrawnTokens) && this.tokenApproved == stakingDetailedStats.tokenApproved && this.feeTokenApproved == stakingDetailedStats.feeTokenApproved && Intrinsics.areEqual(this.profit, stakingDetailedStats.profit) && this.isParticipated == stakingDetailedStats.isParticipated;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((this.debt.hashCode() * 31) + this.impact.hashCode()) * 31) + this.availableForWithdrawal.hashCode()) * 31) + this.withdrawnTokens.hashCode()) * 31;
        boolean z = this.tokenApproved;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.feeTokenApproved;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int hashCode2 = (((i2 + i3) * 31) + this.profit.hashCode()) * 31;
        boolean z3 = this.isParticipated;
        return hashCode2 + (z3 ? 1 : z3 ? 1 : 0);
    }

    public String toString() {
        return "StakingDetailedStats(debt=" + this.debt + ", impact=" + this.impact + ", availableForWithdrawal=" + this.availableForWithdrawal + ", withdrawnTokens=" + this.withdrawnTokens + ", tokenApproved=" + this.tokenApproved + ", feeTokenApproved=" + this.feeTokenApproved + ", profit=" + this.profit + ", isParticipated=" + this.isParticipated + ')';
    }

    public StakingDetailedStats(StakingValues debt, StakingValues impact, BigDecimal availableForWithdrawal, WithdrawnTokens withdrawnTokens, boolean z, boolean z2, StakingValues profit, boolean z3) {
        Intrinsics.checkNotNullParameter(debt, "debt");
        Intrinsics.checkNotNullParameter(impact, "impact");
        Intrinsics.checkNotNullParameter(availableForWithdrawal, "availableForWithdrawal");
        Intrinsics.checkNotNullParameter(withdrawnTokens, "withdrawnTokens");
        Intrinsics.checkNotNullParameter(profit, "profit");
        this.debt = debt;
        this.impact = impact;
        this.availableForWithdrawal = availableForWithdrawal;
        this.withdrawnTokens = withdrawnTokens;
        this.tokenApproved = z;
        this.feeTokenApproved = z2;
        this.profit = profit;
        this.isParticipated = z3;
    }

    public final StakingValues getDebt() {
        return this.debt;
    }

    public final StakingValues getImpact() {
        return this.impact;
    }

    public final BigDecimal getAvailableForWithdrawal() {
        return this.availableForWithdrawal;
    }

    public final WithdrawnTokens getWithdrawnTokens() {
        return this.withdrawnTokens;
    }

    public final boolean getTokenApproved() {
        return this.tokenApproved;
    }

    public final boolean getFeeTokenApproved() {
        return this.feeTokenApproved;
    }

    public final StakingValues getProfit() {
        return this.profit;
    }

    public final boolean isParticipated() {
        return this.isParticipated;
    }
}
