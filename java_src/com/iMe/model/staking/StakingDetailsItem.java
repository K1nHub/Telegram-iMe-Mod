package com.iMe.model.staking;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.C0480C;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.LiteMode;
import org.telegram.tgnet.ConnectionsManager;
/* compiled from: StakingDetailsItem.kt */
/* loaded from: classes3.dex */
public final class StakingDetailsItem implements Parcelable {
    public static final Parcelable.Creator<StakingDetailsItem> CREATOR = new Creator();
    private final StakingAnnualPercentageMode annualPercentageMode;
    private final String author;
    private final double availableForClaim;
    private final boolean canWithdrawImmediately;
    private final boolean canWithdrawSafely;
    private final BigDecimal compoundAccrualThreshold;
    private final String contract;
    private final BigDecimal debt;
    private final String endsAt;
    private final String endsAtISO;
    private final TokenItem feeTokenItem;
    private final String formattedAPR;
    private final String formattedAPY;
    private final boolean hasEnoughFunds;

    /* renamed from: id */
    private final long f354id;
    private final double immediateWithdrawalFeePercentage;
    private final BigDecimal impact;
    private final double incomePercent;
    private final long incomePeriod;
    private final AccountLevel minimalRank;
    private final String name;
    private final double prematureWithdrawalFeePercentage;
    private final long safeWithdrawalDuration;
    private final double safeWithdrawalFeePercentage;
    private final String startsAt;
    private final String startsAtISO;
    private final TokenItem tokenItem;
    private final String website;

    /* compiled from: StakingDetailsItem.kt */
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<StakingDetailsItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final StakingDetailsItem createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            long readLong = parcel.readLong();
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            Parcelable.Creator<TokenItem> creator = TokenItem.CREATOR;
            return new StakingDetailsItem(readLong, readString, readString2, creator.createFromParcel(parcel), parcel.readString(), creator.createFromParcel(parcel), parcel.readString(), parcel.readString(), (BigDecimal) parcel.readSerializable(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), (BigDecimal) parcel.readSerializable(), (BigDecimal) parcel.readSerializable(), parcel.readDouble(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readDouble(), parcel.readDouble(), parcel.readDouble(), parcel.readLong(), StakingAnnualPercentageMode.valueOf(parcel.readString()), parcel.readInt() != 0, AccountLevel.valueOf(parcel.readString()), parcel.readString(), parcel.readLong(), parcel.readDouble());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final StakingDetailsItem[] newArray(int i) {
            return new StakingDetailsItem[i];
        }
    }

    public static /* synthetic */ StakingDetailsItem copy$default(StakingDetailsItem stakingDetailsItem, long j, String str, String str2, TokenItem tokenItem, String str3, TokenItem tokenItem2, String str4, String str5, BigDecimal bigDecimal, String str6, String str7, String str8, String str9, BigDecimal bigDecimal2, BigDecimal bigDecimal3, double d, boolean z, boolean z2, double d2, double d3, double d4, long j2, StakingAnnualPercentageMode stakingAnnualPercentageMode, boolean z3, AccountLevel accountLevel, String str10, long j3, double d5, int i, Object obj) {
        long j4 = (i & 1) != 0 ? stakingDetailsItem.f354id : j;
        String str11 = (i & 2) != 0 ? stakingDetailsItem.name : str;
        String str12 = (i & 4) != 0 ? stakingDetailsItem.author : str2;
        TokenItem tokenItem3 = (i & 8) != 0 ? stakingDetailsItem.tokenItem : tokenItem;
        String str13 = (i & 16) != 0 ? stakingDetailsItem.contract : str3;
        TokenItem tokenItem4 = (i & 32) != 0 ? stakingDetailsItem.feeTokenItem : tokenItem2;
        String str14 = (i & 64) != 0 ? stakingDetailsItem.formattedAPR : str4;
        String str15 = (i & 128) != 0 ? stakingDetailsItem.formattedAPY : str5;
        BigDecimal bigDecimal4 = (i & 256) != 0 ? stakingDetailsItem.compoundAccrualThreshold : bigDecimal;
        String str16 = (i & 512) != 0 ? stakingDetailsItem.startsAt : str6;
        String str17 = (i & 1024) != 0 ? stakingDetailsItem.startsAtISO : str7;
        String str18 = (i & 2048) != 0 ? stakingDetailsItem.endsAt : str8;
        return stakingDetailsItem.copy(j4, str11, str12, tokenItem3, str13, tokenItem4, str14, str15, bigDecimal4, str16, str17, str18, (i & 4096) != 0 ? stakingDetailsItem.endsAtISO : str9, (i & 8192) != 0 ? stakingDetailsItem.impact : bigDecimal2, (i & 16384) != 0 ? stakingDetailsItem.debt : bigDecimal3, (i & LiteMode.FLAG_CHAT_SCALE) != 0 ? stakingDetailsItem.availableForClaim : d, (i & 65536) != 0 ? stakingDetailsItem.canWithdrawSafely : z, (131072 & i) != 0 ? stakingDetailsItem.canWithdrawImmediately : z2, (i & 262144) != 0 ? stakingDetailsItem.prematureWithdrawalFeePercentage : d2, (i & 524288) != 0 ? stakingDetailsItem.immediateWithdrawalFeePercentage : d3, (i & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0 ? stakingDetailsItem.safeWithdrawalFeePercentage : d4, (i & 2097152) != 0 ? stakingDetailsItem.safeWithdrawalDuration : j2, (i & 4194304) != 0 ? stakingDetailsItem.annualPercentageMode : stakingAnnualPercentageMode, (8388608 & i) != 0 ? stakingDetailsItem.hasEnoughFunds : z3, (i & ConnectionsManager.FileTypePhoto) != 0 ? stakingDetailsItem.minimalRank : accountLevel, (i & ConnectionsManager.FileTypeVideo) != 0 ? stakingDetailsItem.website : str10, (i & ConnectionsManager.FileTypeFile) != 0 ? stakingDetailsItem.incomePeriod : j3, (i & C0480C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? stakingDetailsItem.incomePercent : d5);
    }

    public final long component1() {
        return this.f354id;
    }

    public final String component10() {
        return this.startsAt;
    }

    public final String component11() {
        return this.startsAtISO;
    }

    public final String component12() {
        return this.endsAt;
    }

    public final String component13() {
        return this.endsAtISO;
    }

    public final BigDecimal component14() {
        return this.impact;
    }

    public final BigDecimal component15() {
        return this.debt;
    }

    public final double component16() {
        return this.availableForClaim;
    }

    public final boolean component17() {
        return this.canWithdrawSafely;
    }

    public final boolean component18() {
        return this.canWithdrawImmediately;
    }

    public final double component19() {
        return this.prematureWithdrawalFeePercentage;
    }

    public final String component2() {
        return this.name;
    }

    public final double component20() {
        return this.immediateWithdrawalFeePercentage;
    }

    public final double component21() {
        return this.safeWithdrawalFeePercentage;
    }

    public final long component22() {
        return this.safeWithdrawalDuration;
    }

    public final StakingAnnualPercentageMode component23() {
        return this.annualPercentageMode;
    }

    public final boolean component24() {
        return this.hasEnoughFunds;
    }

    public final AccountLevel component25() {
        return this.minimalRank;
    }

    public final String component26() {
        return this.website;
    }

    public final long component27() {
        return this.incomePeriod;
    }

    public final double component28() {
        return this.incomePercent;
    }

    public final String component3() {
        return this.author;
    }

    public final TokenItem component4() {
        return this.tokenItem;
    }

    public final String component5() {
        return this.contract;
    }

    public final TokenItem component6() {
        return this.feeTokenItem;
    }

    public final String component7() {
        return this.formattedAPR;
    }

    public final String component8() {
        return this.formattedAPY;
    }

    public final BigDecimal component9() {
        return this.compoundAccrualThreshold;
    }

    public final StakingDetailsItem copy(long j, String name, String author, TokenItem tokenItem, String contract, TokenItem feeTokenItem, String formattedAPR, String formattedAPY, BigDecimal compoundAccrualThreshold, String startsAt, String startsAtISO, String endsAt, String endsAtISO, BigDecimal impact, BigDecimal debt, double d, boolean z, boolean z2, double d2, double d3, double d4, long j2, StakingAnnualPercentageMode annualPercentageMode, boolean z3, AccountLevel minimalRank, String website, long j3, double d5) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(tokenItem, "tokenItem");
        Intrinsics.checkNotNullParameter(contract, "contract");
        Intrinsics.checkNotNullParameter(feeTokenItem, "feeTokenItem");
        Intrinsics.checkNotNullParameter(formattedAPR, "formattedAPR");
        Intrinsics.checkNotNullParameter(formattedAPY, "formattedAPY");
        Intrinsics.checkNotNullParameter(compoundAccrualThreshold, "compoundAccrualThreshold");
        Intrinsics.checkNotNullParameter(startsAt, "startsAt");
        Intrinsics.checkNotNullParameter(startsAtISO, "startsAtISO");
        Intrinsics.checkNotNullParameter(endsAt, "endsAt");
        Intrinsics.checkNotNullParameter(endsAtISO, "endsAtISO");
        Intrinsics.checkNotNullParameter(impact, "impact");
        Intrinsics.checkNotNullParameter(debt, "debt");
        Intrinsics.checkNotNullParameter(annualPercentageMode, "annualPercentageMode");
        Intrinsics.checkNotNullParameter(minimalRank, "minimalRank");
        Intrinsics.checkNotNullParameter(website, "website");
        return new StakingDetailsItem(j, name, author, tokenItem, contract, feeTokenItem, formattedAPR, formattedAPY, compoundAccrualThreshold, startsAt, startsAtISO, endsAt, endsAtISO, impact, debt, d, z, z2, d2, d3, d4, j2, annualPercentageMode, z3, minimalRank, website, j3, d5);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingDetailsItem) {
            StakingDetailsItem stakingDetailsItem = (StakingDetailsItem) obj;
            return this.f354id == stakingDetailsItem.f354id && Intrinsics.areEqual(this.name, stakingDetailsItem.name) && Intrinsics.areEqual(this.author, stakingDetailsItem.author) && Intrinsics.areEqual(this.tokenItem, stakingDetailsItem.tokenItem) && Intrinsics.areEqual(this.contract, stakingDetailsItem.contract) && Intrinsics.areEqual(this.feeTokenItem, stakingDetailsItem.feeTokenItem) && Intrinsics.areEqual(this.formattedAPR, stakingDetailsItem.formattedAPR) && Intrinsics.areEqual(this.formattedAPY, stakingDetailsItem.formattedAPY) && Intrinsics.areEqual(this.compoundAccrualThreshold, stakingDetailsItem.compoundAccrualThreshold) && Intrinsics.areEqual(this.startsAt, stakingDetailsItem.startsAt) && Intrinsics.areEqual(this.startsAtISO, stakingDetailsItem.startsAtISO) && Intrinsics.areEqual(this.endsAt, stakingDetailsItem.endsAt) && Intrinsics.areEqual(this.endsAtISO, stakingDetailsItem.endsAtISO) && Intrinsics.areEqual(this.impact, stakingDetailsItem.impact) && Intrinsics.areEqual(this.debt, stakingDetailsItem.debt) && Double.compare(this.availableForClaim, stakingDetailsItem.availableForClaim) == 0 && this.canWithdrawSafely == stakingDetailsItem.canWithdrawSafely && this.canWithdrawImmediately == stakingDetailsItem.canWithdrawImmediately && Double.compare(this.prematureWithdrawalFeePercentage, stakingDetailsItem.prematureWithdrawalFeePercentage) == 0 && Double.compare(this.immediateWithdrawalFeePercentage, stakingDetailsItem.immediateWithdrawalFeePercentage) == 0 && Double.compare(this.safeWithdrawalFeePercentage, stakingDetailsItem.safeWithdrawalFeePercentage) == 0 && this.safeWithdrawalDuration == stakingDetailsItem.safeWithdrawalDuration && this.annualPercentageMode == stakingDetailsItem.annualPercentageMode && this.hasEnoughFunds == stakingDetailsItem.hasEnoughFunds && this.minimalRank == stakingDetailsItem.minimalRank && Intrinsics.areEqual(this.website, stakingDetailsItem.website) && this.incomePeriod == stakingDetailsItem.incomePeriod && Double.compare(this.incomePercent, stakingDetailsItem.incomePercent) == 0;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m706m = ((((((((((((((((((((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m706m(this.f354id) * 31) + this.name.hashCode()) * 31) + this.author.hashCode()) * 31) + this.tokenItem.hashCode()) * 31) + this.contract.hashCode()) * 31) + this.feeTokenItem.hashCode()) * 31) + this.formattedAPR.hashCode()) * 31) + this.formattedAPY.hashCode()) * 31) + this.compoundAccrualThreshold.hashCode()) * 31) + this.startsAt.hashCode()) * 31) + this.startsAtISO.hashCode()) * 31) + this.endsAt.hashCode()) * 31) + this.endsAtISO.hashCode()) * 31) + this.impact.hashCode()) * 31) + this.debt.hashCode()) * 31) + Double.doubleToLongBits(this.availableForClaim)) * 31;
        boolean z = this.canWithdrawSafely;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (m706m + i) * 31;
        boolean z2 = this.canWithdrawImmediately;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int doubleToLongBits = (((((((((((i2 + i3) * 31) + Double.doubleToLongBits(this.prematureWithdrawalFeePercentage)) * 31) + Double.doubleToLongBits(this.immediateWithdrawalFeePercentage)) * 31) + Double.doubleToLongBits(this.safeWithdrawalFeePercentage)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.safeWithdrawalDuration)) * 31) + this.annualPercentageMode.hashCode()) * 31;
        boolean z3 = this.hasEnoughFunds;
        return ((((((((doubleToLongBits + (z3 ? 1 : z3 ? 1 : 0)) * 31) + this.minimalRank.hashCode()) * 31) + this.website.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.incomePeriod)) * 31) + Double.doubleToLongBits(this.incomePercent);
    }

    public String toString() {
        return "StakingDetailsItem(id=" + this.f354id + ", name=" + this.name + ", author=" + this.author + ", tokenItem=" + this.tokenItem + ", contract=" + this.contract + ", feeTokenItem=" + this.feeTokenItem + ", formattedAPR=" + this.formattedAPR + ", formattedAPY=" + this.formattedAPY + ", compoundAccrualThreshold=" + this.compoundAccrualThreshold + ", startsAt=" + this.startsAt + ", startsAtISO=" + this.startsAtISO + ", endsAt=" + this.endsAt + ", endsAtISO=" + this.endsAtISO + ", impact=" + this.impact + ", debt=" + this.debt + ", availableForClaim=" + this.availableForClaim + ", canWithdrawSafely=" + this.canWithdrawSafely + ", canWithdrawImmediately=" + this.canWithdrawImmediately + ", prematureWithdrawalFeePercentage=" + this.prematureWithdrawalFeePercentage + ", immediateWithdrawalFeePercentage=" + this.immediateWithdrawalFeePercentage + ", safeWithdrawalFeePercentage=" + this.safeWithdrawalFeePercentage + ", safeWithdrawalDuration=" + this.safeWithdrawalDuration + ", annualPercentageMode=" + this.annualPercentageMode + ", hasEnoughFunds=" + this.hasEnoughFunds + ", minimalRank=" + this.minimalRank + ", website=" + this.website + ", incomePeriod=" + this.incomePeriod + ", incomePercent=" + this.incomePercent + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeLong(this.f354id);
        out.writeString(this.name);
        out.writeString(this.author);
        this.tokenItem.writeToParcel(out, i);
        out.writeString(this.contract);
        this.feeTokenItem.writeToParcel(out, i);
        out.writeString(this.formattedAPR);
        out.writeString(this.formattedAPY);
        out.writeSerializable(this.compoundAccrualThreshold);
        out.writeString(this.startsAt);
        out.writeString(this.startsAtISO);
        out.writeString(this.endsAt);
        out.writeString(this.endsAtISO);
        out.writeSerializable(this.impact);
        out.writeSerializable(this.debt);
        out.writeDouble(this.availableForClaim);
        out.writeInt(this.canWithdrawSafely ? 1 : 0);
        out.writeInt(this.canWithdrawImmediately ? 1 : 0);
        out.writeDouble(this.prematureWithdrawalFeePercentage);
        out.writeDouble(this.immediateWithdrawalFeePercentage);
        out.writeDouble(this.safeWithdrawalFeePercentage);
        out.writeLong(this.safeWithdrawalDuration);
        out.writeString(this.annualPercentageMode.name());
        out.writeInt(this.hasEnoughFunds ? 1 : 0);
        out.writeString(this.minimalRank.name());
        out.writeString(this.website);
        out.writeLong(this.incomePeriod);
        out.writeDouble(this.incomePercent);
    }

    public StakingDetailsItem(long j, String name, String author, TokenItem tokenItem, String contract, TokenItem feeTokenItem, String formattedAPR, String formattedAPY, BigDecimal compoundAccrualThreshold, String startsAt, String startsAtISO, String endsAt, String endsAtISO, BigDecimal impact, BigDecimal debt, double d, boolean z, boolean z2, double d2, double d3, double d4, long j2, StakingAnnualPercentageMode annualPercentageMode, boolean z3, AccountLevel minimalRank, String website, long j3, double d5) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(author, "author");
        Intrinsics.checkNotNullParameter(tokenItem, "tokenItem");
        Intrinsics.checkNotNullParameter(contract, "contract");
        Intrinsics.checkNotNullParameter(feeTokenItem, "feeTokenItem");
        Intrinsics.checkNotNullParameter(formattedAPR, "formattedAPR");
        Intrinsics.checkNotNullParameter(formattedAPY, "formattedAPY");
        Intrinsics.checkNotNullParameter(compoundAccrualThreshold, "compoundAccrualThreshold");
        Intrinsics.checkNotNullParameter(startsAt, "startsAt");
        Intrinsics.checkNotNullParameter(startsAtISO, "startsAtISO");
        Intrinsics.checkNotNullParameter(endsAt, "endsAt");
        Intrinsics.checkNotNullParameter(endsAtISO, "endsAtISO");
        Intrinsics.checkNotNullParameter(impact, "impact");
        Intrinsics.checkNotNullParameter(debt, "debt");
        Intrinsics.checkNotNullParameter(annualPercentageMode, "annualPercentageMode");
        Intrinsics.checkNotNullParameter(minimalRank, "minimalRank");
        Intrinsics.checkNotNullParameter(website, "website");
        this.f354id = j;
        this.name = name;
        this.author = author;
        this.tokenItem = tokenItem;
        this.contract = contract;
        this.feeTokenItem = feeTokenItem;
        this.formattedAPR = formattedAPR;
        this.formattedAPY = formattedAPY;
        this.compoundAccrualThreshold = compoundAccrualThreshold;
        this.startsAt = startsAt;
        this.startsAtISO = startsAtISO;
        this.endsAt = endsAt;
        this.endsAtISO = endsAtISO;
        this.impact = impact;
        this.debt = debt;
        this.availableForClaim = d;
        this.canWithdrawSafely = z;
        this.canWithdrawImmediately = z2;
        this.prematureWithdrawalFeePercentage = d2;
        this.immediateWithdrawalFeePercentage = d3;
        this.safeWithdrawalFeePercentage = d4;
        this.safeWithdrawalDuration = j2;
        this.annualPercentageMode = annualPercentageMode;
        this.hasEnoughFunds = z3;
        this.minimalRank = minimalRank;
        this.website = website;
        this.incomePeriod = j3;
        this.incomePercent = d5;
    }

    public final long getId() {
        return this.f354id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getAuthor() {
        return this.author;
    }

    public final TokenItem getTokenItem() {
        return this.tokenItem;
    }

    public final String getContract() {
        return this.contract;
    }

    public final TokenItem getFeeTokenItem() {
        return this.feeTokenItem;
    }

    public final String getFormattedAPR() {
        return this.formattedAPR;
    }

    public final String getFormattedAPY() {
        return this.formattedAPY;
    }

    public final BigDecimal getCompoundAccrualThreshold() {
        return this.compoundAccrualThreshold;
    }

    public final String getStartsAt() {
        return this.startsAt;
    }

    public final String getStartsAtISO() {
        return this.startsAtISO;
    }

    public final String getEndsAt() {
        return this.endsAt;
    }

    public final String getEndsAtISO() {
        return this.endsAtISO;
    }

    public final BigDecimal getImpact() {
        return this.impact;
    }

    public final BigDecimal getDebt() {
        return this.debt;
    }

    public final double getAvailableForClaim() {
        return this.availableForClaim;
    }

    public final boolean getCanWithdrawSafely() {
        return this.canWithdrawSafely;
    }

    public final boolean getCanWithdrawImmediately() {
        return this.canWithdrawImmediately;
    }

    public final double getPrematureWithdrawalFeePercentage() {
        return this.prematureWithdrawalFeePercentage;
    }

    public final double getImmediateWithdrawalFeePercentage() {
        return this.immediateWithdrawalFeePercentage;
    }

    public final double getSafeWithdrawalFeePercentage() {
        return this.safeWithdrawalFeePercentage;
    }

    public final long getSafeWithdrawalDuration() {
        return this.safeWithdrawalDuration;
    }

    public final StakingAnnualPercentageMode getAnnualPercentageMode() {
        return this.annualPercentageMode;
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

    public final long getIncomePeriod() {
        return this.incomePeriod;
    }

    public final double getIncomePercent() {
        return this.incomePercent;
    }

    public final String getContractUrl() {
        return NetworksHelper.getNetworkById(this.tokenItem.getNetworkId()).getAddressUrl(this.contract);
    }
}
