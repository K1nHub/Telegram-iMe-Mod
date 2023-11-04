package com.iMe.i_staking.response;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingMetadataResponse.kt */
/* loaded from: classes3.dex */
public final class StakingMetadataResponse {
    private final double apr;
    private final double apy;
    private final String author;
    private final BigDecimal compoundAccrualThreshold;
    private final String contract;
    private final StakingValuesResponse debt;
    private final String endsAt;
    private final TokenDetailedResponse feeToken;

    /* renamed from: id */
    private final long f280id;
    private final double immediateWithdrawalFee;
    private final double incomePercent;
    private final long incomePeriod;
    private final String minimalRank;
    private final String name;
    private final String net;
    private final double prematureWithdrawalFee;
    private final long safeWithdrawalDuration;
    private final double safeWithdrawalFee;
    private final String startsAt;
    private final StakingStatsResponse stats;
    private final TokenDetailedResponse token;
    private final String website;

    public final long component1() {
        return this.f280id;
    }

    public final TokenDetailedResponse component10() {
        return this.feeToken;
    }

    public final double component11() {
        return this.apy;
    }

    public final double component12() {
        return this.apr;
    }

    public final long component13() {
        return this.incomePeriod;
    }

    public final double component14() {
        return this.incomePercent;
    }

    public final double component15() {
        return this.prematureWithdrawalFee;
    }

    public final double component16() {
        return this.immediateWithdrawalFee;
    }

    public final double component17() {
        return this.safeWithdrawalFee;
    }

    public final long component18() {
        return this.safeWithdrawalDuration;
    }

    public final BigDecimal component19() {
        return this.compoundAccrualThreshold;
    }

    public final String component2() {
        return this.net;
    }

    public final StakingStatsResponse component20() {
        return this.stats;
    }

    public final String component21() {
        return this.minimalRank;
    }

    public final String component22() {
        return this.website;
    }

    public final String component3() {
        return this.name;
    }

    public final String component4() {
        return this.author;
    }

    public final String component5() {
        return this.contract;
    }

    public final String component6() {
        return this.startsAt;
    }

    public final String component7() {
        return this.endsAt;
    }

    public final StakingValuesResponse component8() {
        return this.debt;
    }

    public final TokenDetailedResponse component9() {
        return this.token;
    }

    public final StakingMetadataResponse copy(long j, String net, String name, String author, String contract, String startsAt, String endsAt, StakingValuesResponse debt, TokenDetailedResponse token, TokenDetailedResponse feeToken, double d, double d2, long j2, double d3, double d4, double d5, double d6, long j3, BigDecimal compoundAccrualThreshold, StakingStatsResponse stats, String str, String website) {
        Intrinsics.checkNotNullParameter(net, "net");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(contract, "contract");
        Intrinsics.checkNotNullParameter(startsAt, "startsAt");
        Intrinsics.checkNotNullParameter(endsAt, "endsAt");
        Intrinsics.checkNotNullParameter(debt, "debt");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(compoundAccrualThreshold, "compoundAccrualThreshold");
        Intrinsics.checkNotNullParameter(stats, "stats");
        Intrinsics.checkNotNullParameter(website, "website");
        return new StakingMetadataResponse(j, net, name, author, contract, startsAt, endsAt, debt, token, feeToken, d, d2, j2, d3, d4, d5, d6, j3, compoundAccrualThreshold, stats, str, website);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingMetadataResponse) {
            StakingMetadataResponse stakingMetadataResponse = (StakingMetadataResponse) obj;
            return this.f280id == stakingMetadataResponse.f280id && Intrinsics.areEqual(this.net, stakingMetadataResponse.net) && Intrinsics.areEqual(this.name, stakingMetadataResponse.name) && Intrinsics.areEqual(this.author, stakingMetadataResponse.author) && Intrinsics.areEqual(this.contract, stakingMetadataResponse.contract) && Intrinsics.areEqual(this.startsAt, stakingMetadataResponse.startsAt) && Intrinsics.areEqual(this.endsAt, stakingMetadataResponse.endsAt) && Intrinsics.areEqual(this.debt, stakingMetadataResponse.debt) && Intrinsics.areEqual(this.token, stakingMetadataResponse.token) && Intrinsics.areEqual(this.feeToken, stakingMetadataResponse.feeToken) && Double.compare(this.apy, stakingMetadataResponse.apy) == 0 && Double.compare(this.apr, stakingMetadataResponse.apr) == 0 && this.incomePeriod == stakingMetadataResponse.incomePeriod && Double.compare(this.incomePercent, stakingMetadataResponse.incomePercent) == 0 && Double.compare(this.prematureWithdrawalFee, stakingMetadataResponse.prematureWithdrawalFee) == 0 && Double.compare(this.immediateWithdrawalFee, stakingMetadataResponse.immediateWithdrawalFee) == 0 && Double.compare(this.safeWithdrawalFee, stakingMetadataResponse.safeWithdrawalFee) == 0 && this.safeWithdrawalDuration == stakingMetadataResponse.safeWithdrawalDuration && Intrinsics.areEqual(this.compoundAccrualThreshold, stakingMetadataResponse.compoundAccrualThreshold) && Intrinsics.areEqual(this.stats, stakingMetadataResponse.stats) && Intrinsics.areEqual(this.minimalRank, stakingMetadataResponse.minimalRank) && Intrinsics.areEqual(this.website, stakingMetadataResponse.website);
        }
        return false;
    }

    public int hashCode() {
        int m1018m = ((((((((((((((((((((((((((((((((((((((ProfileData$$ExternalSyntheticBackport0.m1018m(this.f280id) * 31) + this.net.hashCode()) * 31) + this.name.hashCode()) * 31) + this.author.hashCode()) * 31) + this.contract.hashCode()) * 31) + this.startsAt.hashCode()) * 31) + this.endsAt.hashCode()) * 31) + this.debt.hashCode()) * 31) + this.token.hashCode()) * 31) + this.feeToken.hashCode()) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1012m(this.apy)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1012m(this.apr)) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.incomePeriod)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1012m(this.incomePercent)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1012m(this.prematureWithdrawalFee)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1012m(this.immediateWithdrawalFee)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1012m(this.safeWithdrawalFee)) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.safeWithdrawalDuration)) * 31) + this.compoundAccrualThreshold.hashCode()) * 31) + this.stats.hashCode()) * 31;
        String str = this.minimalRank;
        return ((m1018m + (str == null ? 0 : str.hashCode())) * 31) + this.website.hashCode();
    }

    public String toString() {
        return "StakingMetadataResponse(id=" + this.f280id + ", net=" + this.net + ", name=" + this.name + ", author=" + this.author + ", contract=" + this.contract + ", startsAt=" + this.startsAt + ", endsAt=" + this.endsAt + ", debt=" + this.debt + ", token=" + this.token + ", feeToken=" + this.feeToken + ", apy=" + this.apy + ", apr=" + this.apr + ", incomePeriod=" + this.incomePeriod + ", incomePercent=" + this.incomePercent + ", prematureWithdrawalFee=" + this.prematureWithdrawalFee + ", immediateWithdrawalFee=" + this.immediateWithdrawalFee + ", safeWithdrawalFee=" + this.safeWithdrawalFee + ", safeWithdrawalDuration=" + this.safeWithdrawalDuration + ", compoundAccrualThreshold=" + this.compoundAccrualThreshold + ", stats=" + this.stats + ", minimalRank=" + this.minimalRank + ", website=" + this.website + ')';
    }

    public StakingMetadataResponse(long j, String net, String name, String author, String contract, String startsAt, String endsAt, StakingValuesResponse debt, TokenDetailedResponse token, TokenDetailedResponse feeToken, double d, double d2, long j2, double d3, double d4, double d5, double d6, long j3, BigDecimal compoundAccrualThreshold, StakingStatsResponse stats, String str, String website) {
        Intrinsics.checkNotNullParameter(net, "net");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(contract, "contract");
        Intrinsics.checkNotNullParameter(startsAt, "startsAt");
        Intrinsics.checkNotNullParameter(endsAt, "endsAt");
        Intrinsics.checkNotNullParameter(debt, "debt");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(compoundAccrualThreshold, "compoundAccrualThreshold");
        Intrinsics.checkNotNullParameter(stats, "stats");
        Intrinsics.checkNotNullParameter(website, "website");
        this.f280id = j;
        this.net = net;
        this.name = name;
        this.author = author;
        this.contract = contract;
        this.startsAt = startsAt;
        this.endsAt = endsAt;
        this.debt = debt;
        this.token = token;
        this.feeToken = feeToken;
        this.apy = d;
        this.apr = d2;
        this.incomePeriod = j2;
        this.incomePercent = d3;
        this.prematureWithdrawalFee = d4;
        this.immediateWithdrawalFee = d5;
        this.safeWithdrawalFee = d6;
        this.safeWithdrawalDuration = j3;
        this.compoundAccrualThreshold = compoundAccrualThreshold;
        this.stats = stats;
        this.minimalRank = str;
        this.website = website;
    }

    public final long getId() {
        return this.f280id;
    }

    public final String getNet() {
        return this.net;
    }

    public final String getName() {
        return this.name;
    }

    public final String getAuthor() {
        return this.author;
    }

    public final String getContract() {
        return this.contract;
    }

    public final String getStartsAt() {
        return this.startsAt;
    }

    public final String getEndsAt() {
        return this.endsAt;
    }

    public final StakingValuesResponse getDebt() {
        return this.debt;
    }

    public final TokenDetailedResponse getToken() {
        return this.token;
    }

    public final TokenDetailedResponse getFeeToken() {
        return this.feeToken;
    }

    public final double getApy() {
        return this.apy;
    }

    public final double getApr() {
        return this.apr;
    }

    public final long getIncomePeriod() {
        return this.incomePeriod;
    }

    public final double getIncomePercent() {
        return this.incomePercent;
    }

    public final double getPrematureWithdrawalFee() {
        return this.prematureWithdrawalFee;
    }

    public final double getImmediateWithdrawalFee() {
        return this.immediateWithdrawalFee;
    }

    public final double getSafeWithdrawalFee() {
        return this.safeWithdrawalFee;
    }

    public final long getSafeWithdrawalDuration() {
        return this.safeWithdrawalDuration;
    }

    public final BigDecimal getCompoundAccrualThreshold() {
        return this.compoundAccrualThreshold;
    }

    public final StakingStatsResponse getStats() {
        return this.stats;
    }

    public final String getMinimalRank() {
        return this.minimalRank;
    }

    public final String getWebsite() {
        return this.website;
    }
}
