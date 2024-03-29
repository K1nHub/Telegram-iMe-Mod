package com.iMe.storage.domain.model.binancepay;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceTokenBalanceInfo.kt */
/* loaded from: classes3.dex */
public final class BinanceTokenBalanceInfo {
    public static final Companion Companion = new Companion(null);
    private final String assetCode;
    private final String assetName;
    private final String assetShortName;
    private final Balance combined;
    private final boolean convertible;
    private final String logoUrl;
    private final Balance margin;
    private final boolean receivable;
    private final List<String> replenishNetworksIds;
    private final Balance spot;

    public final String component1() {
        return this.assetCode;
    }

    public final boolean component10() {
        return this.receivable;
    }

    public final String component2() {
        return this.assetName;
    }

    public final String component3() {
        return this.assetShortName;
    }

    public final String component4() {
        return this.logoUrl;
    }

    public final Balance component5() {
        return this.spot;
    }

    public final Balance component6() {
        return this.margin;
    }

    public final Balance component7() {
        return this.combined;
    }

    public final List<String> component8() {
        return this.replenishNetworksIds;
    }

    public final boolean component9() {
        return this.convertible;
    }

    public final BinanceTokenBalanceInfo copy(String assetCode, String assetName, String assetShortName, String logoUrl, Balance spot, Balance margin, Balance combined, List<String> replenishNetworksIds, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        Intrinsics.checkNotNullParameter(spot, "spot");
        Intrinsics.checkNotNullParameter(margin, "margin");
        Intrinsics.checkNotNullParameter(combined, "combined");
        Intrinsics.checkNotNullParameter(replenishNetworksIds, "replenishNetworksIds");
        return new BinanceTokenBalanceInfo(assetCode, assetName, assetShortName, logoUrl, spot, margin, combined, replenishNetworksIds, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceTokenBalanceInfo) {
            BinanceTokenBalanceInfo binanceTokenBalanceInfo = (BinanceTokenBalanceInfo) obj;
            return Intrinsics.areEqual(this.assetCode, binanceTokenBalanceInfo.assetCode) && Intrinsics.areEqual(this.assetName, binanceTokenBalanceInfo.assetName) && Intrinsics.areEqual(this.assetShortName, binanceTokenBalanceInfo.assetShortName) && Intrinsics.areEqual(this.logoUrl, binanceTokenBalanceInfo.logoUrl) && Intrinsics.areEqual(this.spot, binanceTokenBalanceInfo.spot) && Intrinsics.areEqual(this.margin, binanceTokenBalanceInfo.margin) && Intrinsics.areEqual(this.combined, binanceTokenBalanceInfo.combined) && Intrinsics.areEqual(this.replenishNetworksIds, binanceTokenBalanceInfo.replenishNetworksIds) && this.convertible == binanceTokenBalanceInfo.convertible && this.receivable == binanceTokenBalanceInfo.receivable;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((this.assetCode.hashCode() * 31) + this.assetName.hashCode()) * 31) + this.assetShortName.hashCode()) * 31) + this.logoUrl.hashCode()) * 31) + this.spot.hashCode()) * 31) + this.margin.hashCode()) * 31) + this.combined.hashCode()) * 31) + this.replenishNetworksIds.hashCode()) * 31;
        boolean z = this.convertible;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.receivable;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        return "BinanceTokenBalanceInfo(assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", assetShortName=" + this.assetShortName + ", logoUrl=" + this.logoUrl + ", spot=" + this.spot + ", margin=" + this.margin + ", combined=" + this.combined + ", replenishNetworksIds=" + this.replenishNetworksIds + ", convertible=" + this.convertible + ", receivable=" + this.receivable + ')';
    }

    public BinanceTokenBalanceInfo(String assetCode, String assetName, String assetShortName, String logoUrl, Balance spot, Balance margin, Balance combined, List<String> replenishNetworksIds, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        Intrinsics.checkNotNullParameter(spot, "spot");
        Intrinsics.checkNotNullParameter(margin, "margin");
        Intrinsics.checkNotNullParameter(combined, "combined");
        Intrinsics.checkNotNullParameter(replenishNetworksIds, "replenishNetworksIds");
        this.assetCode = assetCode;
        this.assetName = assetName;
        this.assetShortName = assetShortName;
        this.logoUrl = logoUrl;
        this.spot = spot;
        this.margin = margin;
        this.combined = combined;
        this.replenishNetworksIds = replenishNetworksIds;
        this.convertible = z;
        this.receivable = z2;
    }

    public final String getAssetCode() {
        return this.assetCode;
    }

    public final String getAssetName() {
        return this.assetName;
    }

    public final String getAssetShortName() {
        return this.assetShortName;
    }

    public final String getLogoUrl() {
        return this.logoUrl;
    }

    public final Balance getSpot() {
        return this.spot;
    }

    public final Balance getMargin() {
        return this.margin;
    }

    public final Balance getCombined() {
        return this.combined;
    }

    public final List<String> getReplenishNetworksIds() {
        return this.replenishNetworksIds;
    }

    public final boolean getConvertible() {
        return this.convertible;
    }

    public final boolean getReceivable() {
        return this.receivable;
    }

    /* compiled from: BinanceTokenBalanceInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Balance {
        public static final Companion Companion = new Companion(null);
        private final double btcValuation;
        private final double fiatValuation;
        private final double free;
        private final double freeze;
        private final double locked;
        private final double total;
        private final double withdrawing;

        public final double component1() {
            return this.total;
        }

        public final double component2() {
            return this.free;
        }

        public final double component3() {
            return this.locked;
        }

        public final double component4() {
            return this.freeze;
        }

        public final double component5() {
            return this.withdrawing;
        }

        public final double component6() {
            return this.btcValuation;
        }

        public final double component7() {
            return this.fiatValuation;
        }

        public final Balance copy(double d, double d2, double d3, double d4, double d5, double d6, double d7) {
            return new Balance(d, d2, d3, d4, d5, d6, d7);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Balance) {
                Balance balance = (Balance) obj;
                return Double.compare(this.total, balance.total) == 0 && Double.compare(this.free, balance.free) == 0 && Double.compare(this.locked, balance.locked) == 0 && Double.compare(this.freeze, balance.freeze) == 0 && Double.compare(this.withdrawing, balance.withdrawing) == 0 && Double.compare(this.btcValuation, balance.btcValuation) == 0 && Double.compare(this.fiatValuation, balance.fiatValuation) == 0;
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.total) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.free)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.locked)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.freeze)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.withdrawing)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.btcValuation)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.fiatValuation);
        }

        public String toString() {
            return "Balance(total=" + this.total + ", free=" + this.free + ", locked=" + this.locked + ", freeze=" + this.freeze + ", withdrawing=" + this.withdrawing + ", btcValuation=" + this.btcValuation + ", fiatValuation=" + this.fiatValuation + ')';
        }

        public Balance(double d, double d2, double d3, double d4, double d5, double d6, double d7) {
            this.total = d;
            this.free = d2;
            this.locked = d3;
            this.freeze = d4;
            this.withdrawing = d5;
            this.btcValuation = d6;
            this.fiatValuation = d7;
        }

        public final double getTotal() {
            return this.total;
        }

        public final double getFree() {
            return this.free;
        }

        public final double getLocked() {
            return this.locked;
        }

        public final double getFreeze() {
            return this.freeze;
        }

        public final double getWithdrawing() {
            return this.withdrawing;
        }

        public final double getBtcValuation() {
            return this.btcValuation;
        }

        public final double getFiatValuation() {
            return this.fiatValuation;
        }

        /* compiled from: BinanceTokenBalanceInfo.kt */
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Balance createEmptyBalance() {
                return new Balance(0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d);
            }
        }
    }

    /* compiled from: BinanceTokenBalanceInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BinanceTokenBalanceInfo createEmptyBalanceFor(String token) {
            List emptyList;
            Intrinsics.checkNotNullParameter(token, "token");
            Balance.Companion companion = Balance.Companion;
            Balance createEmptyBalance = companion.createEmptyBalance();
            Balance createEmptyBalance2 = companion.createEmptyBalance();
            Balance createEmptyBalance3 = companion.createEmptyBalance();
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return new BinanceTokenBalanceInfo(token, token, token, "", createEmptyBalance, createEmptyBalance2, createEmptyBalance3, emptyList, false, false);
        }
    }
}
