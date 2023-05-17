package com.iMe.storage.domain.model.staking;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingDetailedMetadata.kt */
/* loaded from: classes3.dex */
public final class StakingDetailedMetadata {
    private final double apr;
    private final double apy;
    private final String author;
    private final BigDecimal compoundAccrualThreshold;
    private final String contract;
    private final String endsAt;
    private final StakingToken feeToken;
    private final boolean hasEnoughFunds;

    /* renamed from: id */
    private final long f350id;
    private final double immediateWithdrawalFee;
    private final double incomePercent;
    private final long incomePeriod;
    private final AccountLevel minimalRank;
    private final String name;
    private final NetworkType networkType;
    private final double prematureWithdrawalFee;
    private final StakingRules rules;
    private final long safeWithdrawalDuration;
    private final double safeWithdrawalFee;
    private final String startsAt;
    private final StakingDetailedStats stats;
    private final StakingToken token;
    private final String website;

    public final long component1() {
        return this.f350id;
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

    public final StakingDetailedStats component19() {
        return this.stats;
    }

    public final NetworkType component2() {
        return this.networkType;
    }

    public final StakingRules component20() {
        return this.rules;
    }

    public final boolean component21() {
        return this.hasEnoughFunds;
    }

    public final AccountLevel component22() {
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

    public final StakingToken component8() {
        return this.token;
    }

    public final StakingToken component9() {
        return this.feeToken;
    }

    public final StakingDetailedMetadata copy(long j, NetworkType networkType, String name, String author, String contract, String startsAt, String endsAt, StakingToken token, StakingToken feeToken, double d, double d2, long j2, double d3, double d4, double d5, double d6, long j3, BigDecimal compoundAccrualThreshold, StakingDetailedStats stats, StakingRules rules, boolean z, AccountLevel minimalRank, String website) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
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
        Intrinsics.checkNotNullParameter(minimalRank, "minimalRank");
        Intrinsics.checkNotNullParameter(website, "website");
        return new StakingDetailedMetadata(j, networkType, name, author, contract, startsAt, endsAt, token, feeToken, d, d2, j2, d3, d4, d5, d6, j3, compoundAccrualThreshold, stats, rules, z, minimalRank, website);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingDetailedMetadata) {
            StakingDetailedMetadata stakingDetailedMetadata = (StakingDetailedMetadata) obj;
            return this.f350id == stakingDetailedMetadata.f350id && this.networkType == stakingDetailedMetadata.networkType && Intrinsics.areEqual(this.name, stakingDetailedMetadata.name) && Intrinsics.areEqual(this.author, stakingDetailedMetadata.author) && Intrinsics.areEqual(this.contract, stakingDetailedMetadata.contract) && Intrinsics.areEqual(this.startsAt, stakingDetailedMetadata.startsAt) && Intrinsics.areEqual(this.endsAt, stakingDetailedMetadata.endsAt) && Intrinsics.areEqual(this.token, stakingDetailedMetadata.token) && Intrinsics.areEqual(this.feeToken, stakingDetailedMetadata.feeToken) && Double.compare(this.apy, stakingDetailedMetadata.apy) == 0 && Double.compare(this.apr, stakingDetailedMetadata.apr) == 0 && this.incomePeriod == stakingDetailedMetadata.incomePeriod && Double.compare(this.incomePercent, stakingDetailedMetadata.incomePercent) == 0 && Double.compare(this.prematureWithdrawalFee, stakingDetailedMetadata.prematureWithdrawalFee) == 0 && Double.compare(this.immediateWithdrawalFee, stakingDetailedMetadata.immediateWithdrawalFee) == 0 && Double.compare(this.safeWithdrawalFee, stakingDetailedMetadata.safeWithdrawalFee) == 0 && this.safeWithdrawalDuration == stakingDetailedMetadata.safeWithdrawalDuration && Intrinsics.areEqual(this.compoundAccrualThreshold, stakingDetailedMetadata.compoundAccrualThreshold) && Intrinsics.areEqual(this.stats, stakingDetailedMetadata.stats) && Intrinsics.areEqual(this.rules, stakingDetailedMetadata.rules) && this.hasEnoughFunds == stakingDetailedMetadata.hasEnoughFunds && this.minimalRank == stakingDetailedMetadata.minimalRank && Intrinsics.areEqual(this.website, stakingDetailedMetadata.website);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m706m = ((((((((((((((((((((((((((((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m706m(this.f350id) * 31) + this.networkType.hashCode()) * 31) + this.name.hashCode()) * 31) + this.author.hashCode()) * 31) + this.contract.hashCode()) * 31) + this.startsAt.hashCode()) * 31) + this.endsAt.hashCode()) * 31) + this.token.hashCode()) * 31) + this.feeToken.hashCode()) * 31) + Double.doubleToLongBits(this.apy)) * 31) + Double.doubleToLongBits(this.apr)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.incomePeriod)) * 31) + Double.doubleToLongBits(this.incomePercent)) * 31) + Double.doubleToLongBits(this.prematureWithdrawalFee)) * 31) + Double.doubleToLongBits(this.immediateWithdrawalFee)) * 31) + Double.doubleToLongBits(this.safeWithdrawalFee)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.safeWithdrawalDuration)) * 31) + this.compoundAccrualThreshold.hashCode()) * 31) + this.stats.hashCode()) * 31) + this.rules.hashCode()) * 31;
        boolean z = this.hasEnoughFunds;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((m706m + i) * 31) + this.minimalRank.hashCode()) * 31) + this.website.hashCode();
    }

    public String toString() {
        return "StakingDetailedMetadata(id=" + this.f350id + ", networkType=" + this.networkType + ", name=" + this.name + ", author=" + this.author + ", contract=" + this.contract + ", startsAt=" + this.startsAt + ", endsAt=" + this.endsAt + ", token=" + this.token + ", feeToken=" + this.feeToken + ", apy=" + this.apy + ", apr=" + this.apr + ", incomePeriod=" + this.incomePeriod + ", incomePercent=" + this.incomePercent + ", prematureWithdrawalFee=" + this.prematureWithdrawalFee + ", immediateWithdrawalFee=" + this.immediateWithdrawalFee + ", safeWithdrawalFee=" + this.safeWithdrawalFee + ", safeWithdrawalDuration=" + this.safeWithdrawalDuration + ", compoundAccrualThreshold=" + this.compoundAccrualThreshold + ", stats=" + this.stats + ", rules=" + this.rules + ", hasEnoughFunds=" + this.hasEnoughFunds + ", minimalRank=" + this.minimalRank + ", website=" + this.website + ')';
    }

    public StakingDetailedMetadata(long j, NetworkType networkType, String name, String author, String contract, String startsAt, String endsAt, StakingToken token, StakingToken feeToken, double d, double d2, long j2, double d3, double d4, double d5, double d6, long j3, BigDecimal compoundAccrualThreshold, StakingDetailedStats stats, StakingRules rules, boolean z, AccountLevel minimalRank, String website) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
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
        Intrinsics.checkNotNullParameter(minimalRank, "minimalRank");
        Intrinsics.checkNotNullParameter(website, "website");
        this.f350id = j;
        this.networkType = networkType;
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
        this.minimalRank = minimalRank;
        this.website = website;
    }

    public final long getId() {
        return this.f350id;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
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

    public final StakingToken getToken() {
        return this.token;
    }

    public final StakingToken getFeeToken() {
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

    public final StakingDetailedStats getStats() {
        return this.stats;
    }

    public final StakingRules getRules() {
        return this.rules;
    }

    public final boolean getHasEnoughFunds() {
        return this.hasEnoughFunds;
    }

    public final AccountLevel getMinimalRank() {
        return this.minimalRank;
    }

    public final String getWebsite() {
        return this.website;
    }
}
