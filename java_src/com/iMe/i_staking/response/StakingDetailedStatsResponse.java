package com.iMe.i_staking.response;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingDetailedStatsResponse.kt */
/* loaded from: classes3.dex */
public final class StakingDetailedStatsResponse {
    private final BigDecimal availableForWithdrawal;
    private final StakingValuesResponse debt;
    private final boolean feeTokenApproved;
    private final StakingValuesResponse impact;
    private final boolean participated;
    private final StakingValuesResponse profit;
    private final boolean tokenApproved;
    private final WithdrawnTokensResponse withdrawnTokens;

    public final StakingValuesResponse component1() {
        return this.debt;
    }

    public final StakingValuesResponse component2() {
        return this.impact;
    }

    public final BigDecimal component3() {
        return this.availableForWithdrawal;
    }

    public final WithdrawnTokensResponse component4() {
        return this.withdrawnTokens;
    }

    public final boolean component5() {
        return this.tokenApproved;
    }

    public final boolean component6() {
        return this.feeTokenApproved;
    }

    public final StakingValuesResponse component7() {
        return this.profit;
    }

    public final boolean component8() {
        return this.participated;
    }

    public final StakingDetailedStatsResponse copy(StakingValuesResponse debt, StakingValuesResponse impact, BigDecimal availableForWithdrawal, WithdrawnTokensResponse withdrawnTokens, boolean z, boolean z2, StakingValuesResponse profit, boolean z3) {
        Intrinsics.checkNotNullParameter(debt, "debt");
        Intrinsics.checkNotNullParameter(impact, "impact");
        Intrinsics.checkNotNullParameter(availableForWithdrawal, "availableForWithdrawal");
        Intrinsics.checkNotNullParameter(withdrawnTokens, "withdrawnTokens");
        Intrinsics.checkNotNullParameter(profit, "profit");
        return new StakingDetailedStatsResponse(debt, impact, availableForWithdrawal, withdrawnTokens, z, z2, profit, z3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingDetailedStatsResponse) {
            StakingDetailedStatsResponse stakingDetailedStatsResponse = (StakingDetailedStatsResponse) obj;
            return Intrinsics.areEqual(this.debt, stakingDetailedStatsResponse.debt) && Intrinsics.areEqual(this.impact, stakingDetailedStatsResponse.impact) && Intrinsics.areEqual(this.availableForWithdrawal, stakingDetailedStatsResponse.availableForWithdrawal) && Intrinsics.areEqual(this.withdrawnTokens, stakingDetailedStatsResponse.withdrawnTokens) && this.tokenApproved == stakingDetailedStatsResponse.tokenApproved && this.feeTokenApproved == stakingDetailedStatsResponse.feeTokenApproved && Intrinsics.areEqual(this.profit, stakingDetailedStatsResponse.profit) && this.participated == stakingDetailedStatsResponse.participated;
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
        boolean z3 = this.participated;
        return hashCode2 + (z3 ? 1 : z3 ? 1 : 0);
    }

    public String toString() {
        return "StakingDetailedStatsResponse(debt=" + this.debt + ", impact=" + this.impact + ", availableForWithdrawal=" + this.availableForWithdrawal + ", withdrawnTokens=" + this.withdrawnTokens + ", tokenApproved=" + this.tokenApproved + ", feeTokenApproved=" + this.feeTokenApproved + ", profit=" + this.profit + ", participated=" + this.participated + ')';
    }

    public StakingDetailedStatsResponse(StakingValuesResponse debt, StakingValuesResponse impact, BigDecimal availableForWithdrawal, WithdrawnTokensResponse withdrawnTokens, boolean z, boolean z2, StakingValuesResponse profit, boolean z3) {
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
        this.participated = z3;
    }

    public final StakingValuesResponse getDebt() {
        return this.debt;
    }

    public final StakingValuesResponse getImpact() {
        return this.impact;
    }

    public final BigDecimal getAvailableForWithdrawal() {
        return this.availableForWithdrawal;
    }

    public final WithdrawnTokensResponse getWithdrawnTokens() {
        return this.withdrawnTokens;
    }

    public final boolean getTokenApproved() {
        return this.tokenApproved;
    }

    public final boolean getFeeTokenApproved() {
        return this.feeTokenApproved;
    }

    public final StakingValuesResponse getProfit() {
        return this.profit;
    }

    public final boolean getParticipated() {
        return this.participated;
    }
}
