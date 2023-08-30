package com.iMe.model.staking;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: StakingProgrammeItem.kt */
/* loaded from: classes3.dex */
public final class StakingProgrammeItem extends NoChildNode {
    private final StakingAnnualPercentageMode annualPercentageMode;
    private final String apr;
    private final String apy;
    private final String endsAt;

    /* renamed from: id */
    private final long f360id;
    private final boolean isParticipated;
    private final String name;
    private final TokenBalance tokenBalance;

    public final long component1() {
        return this.f360id;
    }

    public final String component2() {
        return this.name;
    }

    public final boolean component3() {
        return this.isParticipated;
    }

    public final TokenBalance component4() {
        return this.tokenBalance;
    }

    public final String component5() {
        return this.apr;
    }

    public final String component6() {
        return this.apy;
    }

    public final StakingAnnualPercentageMode component7() {
        return this.annualPercentageMode;
    }

    public final String component8() {
        return this.endsAt;
    }

    public final StakingProgrammeItem copy(long j, String name, boolean z, TokenBalance tokenBalance, String apr, String apy, StakingAnnualPercentageMode annualPercentageMode, String endsAt) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(tokenBalance, "tokenBalance");
        Intrinsics.checkNotNullParameter(apr, "apr");
        Intrinsics.checkNotNullParameter(apy, "apy");
        Intrinsics.checkNotNullParameter(annualPercentageMode, "annualPercentageMode");
        Intrinsics.checkNotNullParameter(endsAt, "endsAt");
        return new StakingProgrammeItem(j, name, z, tokenBalance, apr, apy, annualPercentageMode, endsAt);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingProgrammeItem) {
            StakingProgrammeItem stakingProgrammeItem = (StakingProgrammeItem) obj;
            return this.f360id == stakingProgrammeItem.f360id && Intrinsics.areEqual(this.name, stakingProgrammeItem.name) && this.isParticipated == stakingProgrammeItem.isParticipated && Intrinsics.areEqual(this.tokenBalance, stakingProgrammeItem.tokenBalance) && Intrinsics.areEqual(this.apr, stakingProgrammeItem.apr) && Intrinsics.areEqual(this.apy, stakingProgrammeItem.apy) && this.annualPercentageMode == stakingProgrammeItem.annualPercentageMode && Intrinsics.areEqual(this.endsAt, stakingProgrammeItem.endsAt);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m724m = ((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.f360id) * 31) + this.name.hashCode()) * 31;
        boolean z = this.isParticipated;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((((((((m724m + i) * 31) + this.tokenBalance.hashCode()) * 31) + this.apr.hashCode()) * 31) + this.apy.hashCode()) * 31) + this.annualPercentageMode.hashCode()) * 31) + this.endsAt.hashCode();
    }

    public String toString() {
        return "StakingProgrammeItem(id=" + this.f360id + ", name=" + this.name + ", isParticipated=" + this.isParticipated + ", tokenBalance=" + this.tokenBalance + ", apr=" + this.apr + ", apy=" + this.apy + ", annualPercentageMode=" + this.annualPercentageMode + ", endsAt=" + this.endsAt + ')';
    }

    public final long getId() {
        return this.f360id;
    }

    public final String getName() {
        return this.name;
    }

    public final boolean isParticipated() {
        return this.isParticipated;
    }

    public final TokenBalance getTokenBalance() {
        return this.tokenBalance;
    }

    public final String getApr() {
        return this.apr;
    }

    public final String getApy() {
        return this.apy;
    }

    public final StakingAnnualPercentageMode getAnnualPercentageMode() {
        return this.annualPercentageMode;
    }

    public final String getEndsAt() {
        return this.endsAt;
    }

    public StakingProgrammeItem(long j, String name, boolean z, TokenBalance tokenBalance, String apr, String apy, StakingAnnualPercentageMode annualPercentageMode, String endsAt) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(tokenBalance, "tokenBalance");
        Intrinsics.checkNotNullParameter(apr, "apr");
        Intrinsics.checkNotNullParameter(apy, "apy");
        Intrinsics.checkNotNullParameter(annualPercentageMode, "annualPercentageMode");
        Intrinsics.checkNotNullParameter(endsAt, "endsAt");
        this.f360id = j;
        this.name = name;
        this.isParticipated = z;
        this.tokenBalance = tokenBalance;
        this.apr = apr;
        this.apy = apy;
        this.annualPercentageMode = annualPercentageMode;
        this.endsAt = endsAt;
    }

    public final int getPercentageTextColor(StakingAnnualPercentageMode annualPercentageMode) {
        Intrinsics.checkNotNullParameter(annualPercentageMode, "annualPercentageMode");
        return this.annualPercentageMode == annualPercentageMode ? Theme.key_windowBackgroundWhiteBlueText : Theme.key_windowBackgroundWhiteBlackText;
    }
}
