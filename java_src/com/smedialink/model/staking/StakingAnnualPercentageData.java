package com.smedialink.model.staking;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingAnnualPercentageData.kt */
/* loaded from: classes3.dex */
public final class StakingAnnualPercentageData {
    private final String apr;
    private final String apy;
    private final String compoundThreshold;

    public static /* synthetic */ StakingAnnualPercentageData copy$default(StakingAnnualPercentageData stakingAnnualPercentageData, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stakingAnnualPercentageData.apr;
        }
        if ((i & 2) != 0) {
            str2 = stakingAnnualPercentageData.apy;
        }
        if ((i & 4) != 0) {
            str3 = stakingAnnualPercentageData.compoundThreshold;
        }
        return stakingAnnualPercentageData.copy(str, str2, str3);
    }

    public final String component1() {
        return this.apr;
    }

    public final String component2() {
        return this.apy;
    }

    public final String component3() {
        return this.compoundThreshold;
    }

    public final StakingAnnualPercentageData copy(String apr, String apy, String compoundThreshold) {
        Intrinsics.checkNotNullParameter(apr, "apr");
        Intrinsics.checkNotNullParameter(apy, "apy");
        Intrinsics.checkNotNullParameter(compoundThreshold, "compoundThreshold");
        return new StakingAnnualPercentageData(apr, apy, compoundThreshold);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingAnnualPercentageData) {
            StakingAnnualPercentageData stakingAnnualPercentageData = (StakingAnnualPercentageData) obj;
            return Intrinsics.areEqual(this.apr, stakingAnnualPercentageData.apr) && Intrinsics.areEqual(this.apy, stakingAnnualPercentageData.apy) && Intrinsics.areEqual(this.compoundThreshold, stakingAnnualPercentageData.compoundThreshold);
        }
        return false;
    }

    public int hashCode() {
        return (((this.apr.hashCode() * 31) + this.apy.hashCode()) * 31) + this.compoundThreshold.hashCode();
    }

    public String toString() {
        return "StakingAnnualPercentageData(apr=" + this.apr + ", apy=" + this.apy + ", compoundThreshold=" + this.compoundThreshold + ')';
    }

    public StakingAnnualPercentageData(String apr, String apy, String compoundThreshold) {
        Intrinsics.checkNotNullParameter(apr, "apr");
        Intrinsics.checkNotNullParameter(apy, "apy");
        Intrinsics.checkNotNullParameter(compoundThreshold, "compoundThreshold");
        this.apr = apr;
        this.apy = apy;
        this.compoundThreshold = compoundThreshold;
    }

    public final String getApr() {
        return this.apr;
    }

    public final String getApy() {
        return this.apy;
    }

    public final String getCompoundThreshold() {
        return this.compoundThreshold;
    }
}
