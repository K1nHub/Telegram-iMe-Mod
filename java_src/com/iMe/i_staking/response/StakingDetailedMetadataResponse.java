package com.iMe.i_staking.response;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingDetailedMetadataResponse.kt */
/* loaded from: classes3.dex */
public final class StakingDetailedMetadataResponse {
    private final double apr;
    private final double apy;
    private final String author;
    private final BigDecimal compoundAccrualThreshold;
    private final String contract;
    private final String endsAt;
    private final TokenDetailedResponse feeToken;
    private final boolean hasEnoughFunds;

    /* renamed from: id */
    private final long f346id;
    private final double immediateWithdrawalFee;
    private final double incomePercent;
    private final long incomePeriod;
    private final String minimalRank;
    private final String name;

    /* renamed from: net  reason: collision with root package name */
    private final String f1979net;
    private final double prematureWithdrawalFee;
    private final StakingRulesResponse rules;
    private final long safeWithdrawalDuration;
    private final double safeWithdrawalFee;
    private final String startsAt;
    private final StakingDetailedStatsResponse stats;
    private final TokenDetailedResponse token;
    private final String website;

    public final long component1() {
        return this.f346id;
    }

    public final double component10() {
        return this.apy;
    }

    public final double component11() {
        return this.apr;
    }

    public final long component12() {
        return this.incomePeriod;
    }

    public final double component13() {
        return this.incomePercent;
    }

    public final double component14() {
        return this.prematureWithdrawalFee;
    }

    public final double component15() {
        return this.immediateWithdrawalFee;
    }

    public final double component16() {
        return this.safeWithdrawalFee;
    }

    public final long component17() {
        return this.safeWithdrawalDuration;
    }

    public final BigDecimal component18() {
        return this.compoundAccrualThreshold;
    }

    public final StakingDetailedStatsResponse component19() {
        return this.stats;
    }

    public final String component2() {
        return this.f1979net;
    }

    public final StakingRulesResponse component20() {
        return this.rules;
    }

    public final boolean component21() {
        return this.hasEnoughFunds;
    }

    public final String component22() {
        return this.minimalRank;
    }

    public final String component23() {
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

    public final TokenDetailedResponse component8() {
        return this.token;
    }

    public final TokenDetailedResponse component9() {
        return this.feeToken;
    }

    public final StakingDetailedMetadataResponse copy(long j, String net2, String name, String author, String contract, String startsAt, String endsAt, TokenDetailedResponse token, TokenDetailedResponse feeToken, double d, double d2, long j2, double d3, double d4, double d5, double d6, long j3, BigDecimal compoundAccrualThreshold, StakingDetailedStatsResponse stats, StakingRulesResponse rules, boolean z, String str, String website) {
        Intrinsics.checkNotNullParameter(net2, "net");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(contract, "contract");
        Intrinsics.checkNotNullParameter(startsAt, "startsAt");
        Intrinsics.checkNotNullParameter(endsAt, "endsAt");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(compoundAccrualThreshold, "compoundAccrualThreshold");
        Intrinsics.checkNotNullParameter(stats, "stats");
        Intrinsics.checkNotNullParameter(rules, "rules");
        Intrinsics.checkNotNullParameter(website, "website");
        return new StakingDetailedMetadataResponse(j, net2, name, author, contract, startsAt, endsAt, token, feeToken, d, d2, j2, d3, d4, d5, d6, j3, compoundAccrualThreshold, stats, rules, z, str, website);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingDetailedMetadataResponse) {
            StakingDetailedMetadataResponse stakingDetailedMetadataResponse = (StakingDetailedMetadataResponse) obj;
            return this.f346id == stakingDetailedMetadataResponse.f346id && Intrinsics.areEqual(this.f1979net, stakingDetailedMetadataResponse.f1979net) && Intrinsics.areEqual(this.name, stakingDetailedMetadataResponse.name) && Intrinsics.areEqual(this.author, stakingDetailedMetadataResponse.author) && Intrinsics.areEqual(this.contract, stakingDetailedMetadataResponse.contract) && Intrinsics.areEqual(this.startsAt, stakingDetailedMetadataResponse.startsAt) && Intrinsics.areEqual(this.endsAt, stakingDetailedMetadataResponse.endsAt) && Intrinsics.areEqual(this.token, stakingDetailedMetadataResponse.token) && Intrinsics.areEqual(this.feeToken, stakingDetailedMetadataResponse.feeToken) && Double.compare(this.apy, stakingDetailedMetadataResponse.apy) == 0 && Double.compare(this.apr, stakingDetailedMetadataResponse.apr) == 0 && this.incomePeriod == stakingDetailedMetadataResponse.incomePeriod && Double.compare(this.incomePercent, stakingDetailedMetadataResponse.incomePercent) == 0 && Double.compare(this.prematureWithdrawalFee, stakingDetailedMetadataResponse.prematureWithdrawalFee) == 0 && Double.compare(this.immediateWithdrawalFee, stakingDetailedMetadataResponse.immediateWithdrawalFee) == 0 && Double.compare(this.safeWithdrawalFee, stakingDetailedMetadataResponse.safeWithdrawalFee) == 0 && this.safeWithdrawalDuration == stakingDetailedMetadataResponse.safeWithdrawalDuration && Intrinsics.areEqual(this.compoundAccrualThreshold, stakingDetailedMetadataResponse.compoundAccrualThreshold) && Intrinsics.areEqual(this.stats, stakingDetailedMetadataResponse.stats) && Intrinsics.areEqual(this.rules, stakingDetailedMetadataResponse.rules) && this.hasEnoughFunds == stakingDetailedMetadataResponse.hasEnoughFunds && Intrinsics.areEqual(this.minimalRank, stakingDetailedMetadataResponse.minimalRank) && Intrinsics.areEqual(this.website, stakingDetailedMetadataResponse.website);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m724m = ((((((((((((((((((((((((((((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.f346id) * 31) + this.f1979net.hashCode()) * 31) + this.name.hashCode()) * 31) + this.author.hashCode()) * 31) + this.contract.hashCode()) * 31) + this.startsAt.hashCode()) * 31) + this.endsAt.hashCode()) * 31) + this.token.hashCode()) * 31) + this.feeToken.hashCode()) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.apy)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.apr)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.incomePeriod)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.incomePercent)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.prematureWithdrawalFee)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.immediateWithdrawalFee)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.safeWithdrawalFee)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.safeWithdrawalDuration)) * 31) + this.compoundAccrualThreshold.hashCode()) * 31) + this.stats.hashCode()) * 31) + this.rules.hashCode()) * 31;
        boolean z = this.hasEnoughFunds;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (m724m + i) * 31;
        String str = this.minimalRank;
        return ((i2 + (str == null ? 0 : str.hashCode())) * 31) + this.website.hashCode();
    }

    public String toString() {
        return "StakingDetailedMetadataResponse(id=" + this.f346id + ", net=" + this.f1979net + ", name=" + this.name + ", author=" + this.author + ", contract=" + this.contract + ", startsAt=" + this.startsAt + ", endsAt=" + this.endsAt + ", token=" + this.token + ", feeToken=" + this.feeToken + ", apy=" + this.apy + ", apr=" + this.apr + ", incomePeriod=" + this.incomePeriod + ", incomePercent=" + this.incomePercent + ", prematureWithdrawalFee=" + this.prematureWithdrawalFee + ", immediateWithdrawalFee=" + this.immediateWithdrawalFee + ", safeWithdrawalFee=" + this.safeWithdrawalFee + ", safeWithdrawalDuration=" + this.safeWithdrawalDuration + ", compoundAccrualThreshold=" + this.compoundAccrualThreshold + ", stats=" + this.stats + ", rules=" + this.rules + ", hasEnoughFunds=" + this.hasEnoughFunds + ", minimalRank=" + this.minimalRank + ", website=" + this.website + ')';
    }

    public StakingDetailedMetadataResponse(long j, String net2, String name, String author, String contract, String startsAt, String endsAt, TokenDetailedResponse token, TokenDetailedResponse feeToken, double d, double d2, long j2, double d3, double d4, double d5, double d6, long j3, BigDecimal compoundAccrualThreshold, StakingDetailedStatsResponse stats, StakingRulesResponse rules, boolean z, String str, String website) {
        Intrinsics.checkNotNullParameter(net2, "net");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(contract, "contract");
        Intrinsics.checkNotNullParameter(startsAt, "startsAt");
        Intrinsics.checkNotNullParameter(endsAt, "endsAt");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(compoundAccrualThreshold, "compoundAccrualThreshold");
        Intrinsics.checkNotNullParameter(stats, "stats");
        Intrinsics.checkNotNullParameter(rules, "rules");
        Intrinsics.checkNotNullParameter(website, "website");
        this.f346id = j;
        this.f1979net = net2;
        this.name = name;
        this.author = author;
        this.contract = contract;
        this.startsAt = startsAt;
        this.endsAt = endsAt;
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
        this.rules = rules;
        this.hasEnoughFunds = z;
        this.minimalRank = str;
        this.website = website;
    }

    public final long getId() {
        return this.f346id;
    }

    public final String getNet() {
        return this.f1979net;
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

    public final StakingDetailedStatsResponse getStats() {
        return this.stats;
    }

    public final StakingRulesResponse getRules() {
        return this.rules;
    }

    public final boolean getHasEnoughFunds() {
        return this.hasEnoughFunds;
    }

    public final String getMinimalRank() {
        return this.minimalRank;
    }

    public final String getWebsite() {
        return this.website;
    }
}
