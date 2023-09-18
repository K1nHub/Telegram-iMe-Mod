package com.iMe.storage.data.network.model.response.binance.pay;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayGetBalancesResponse.kt */
/* loaded from: classes4.dex */
public final class BinanceTokenBalanceResponse {
    private final String assetCode;
    private final String assetName;
    private final String assetShortName;
    private final Balance combined;
    private final boolean convertible;
    private final String logoUrl;
    private final Balance margin;
    private final boolean receivable;
    private final List<String> replenishNetworks;
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
        return this.replenishNetworks;
    }

    public final boolean component9() {
        return this.convertible;
    }

    public final BinanceTokenBalanceResponse copy(String assetCode, String assetName, String assetShortName, String logoUrl, Balance spot, Balance margin, Balance combined, List<String> replenishNetworks, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        Intrinsics.checkNotNullParameter(spot, "spot");
        Intrinsics.checkNotNullParameter(margin, "margin");
        Intrinsics.checkNotNullParameter(combined, "combined");
        Intrinsics.checkNotNullParameter(replenishNetworks, "replenishNetworks");
        return new BinanceTokenBalanceResponse(assetCode, assetName, assetShortName, logoUrl, spot, margin, combined, replenishNetworks, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceTokenBalanceResponse) {
            BinanceTokenBalanceResponse binanceTokenBalanceResponse = (BinanceTokenBalanceResponse) obj;
            return Intrinsics.areEqual(this.assetCode, binanceTokenBalanceResponse.assetCode) && Intrinsics.areEqual(this.assetName, binanceTokenBalanceResponse.assetName) && Intrinsics.areEqual(this.assetShortName, binanceTokenBalanceResponse.assetShortName) && Intrinsics.areEqual(this.logoUrl, binanceTokenBalanceResponse.logoUrl) && Intrinsics.areEqual(this.spot, binanceTokenBalanceResponse.spot) && Intrinsics.areEqual(this.margin, binanceTokenBalanceResponse.margin) && Intrinsics.areEqual(this.combined, binanceTokenBalanceResponse.combined) && Intrinsics.areEqual(this.replenishNetworks, binanceTokenBalanceResponse.replenishNetworks) && this.convertible == binanceTokenBalanceResponse.convertible && this.receivable == binanceTokenBalanceResponse.receivable;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((this.assetCode.hashCode() * 31) + this.assetName.hashCode()) * 31) + this.assetShortName.hashCode()) * 31) + this.logoUrl.hashCode()) * 31) + this.spot.hashCode()) * 31) + this.margin.hashCode()) * 31) + this.combined.hashCode()) * 31) + this.replenishNetworks.hashCode()) * 31;
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
        return "BinanceTokenBalanceResponse(assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", assetShortName=" + this.assetShortName + ", logoUrl=" + this.logoUrl + ", spot=" + this.spot + ", margin=" + this.margin + ", combined=" + this.combined + ", replenishNetworks=" + this.replenishNetworks + ", convertible=" + this.convertible + ", receivable=" + this.receivable + ')';
    }

    public BinanceTokenBalanceResponse(String assetCode, String assetName, String assetShortName, String logoUrl, Balance spot, Balance margin, Balance combined, List<String> replenishNetworks, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(assetCode, "assetCode");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetShortName, "assetShortName");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        Intrinsics.checkNotNullParameter(spot, "spot");
        Intrinsics.checkNotNullParameter(margin, "margin");
        Intrinsics.checkNotNullParameter(combined, "combined");
        Intrinsics.checkNotNullParameter(replenishNetworks, "replenishNetworks");
        this.assetCode = assetCode;
        this.assetName = assetName;
        this.assetShortName = assetShortName;
        this.logoUrl = logoUrl;
        this.spot = spot;
        this.margin = margin;
        this.combined = combined;
        this.replenishNetworks = replenishNetworks;
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

    public final List<String> getReplenishNetworks() {
        return this.replenishNetworks;
    }

    public final boolean getConvertible() {
        return this.convertible;
    }

    public final boolean getReceivable() {
        return this.receivable;
    }

    /* compiled from: BinancePayGetBalancesResponse.kt */
    /* loaded from: classes4.dex */
    public static final class Balance {
        private final String btcValuation;
        private final String fiatValuation;
        private final String free;
        private final String freeze;
        private final String locked;
        private final String total;
        private final String withdrawing;

        public static /* synthetic */ Balance copy$default(Balance balance, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
            if ((i & 1) != 0) {
                str = balance.free;
            }
            if ((i & 2) != 0) {
                str2 = balance.locked;
            }
            String str8 = str2;
            if ((i & 4) != 0) {
                str3 = balance.freeze;
            }
            String str9 = str3;
            if ((i & 8) != 0) {
                str4 = balance.total;
            }
            String str10 = str4;
            if ((i & 16) != 0) {
                str5 = balance.withdrawing;
            }
            String str11 = str5;
            if ((i & 32) != 0) {
                str6 = balance.btcValuation;
            }
            String str12 = str6;
            if ((i & 64) != 0) {
                str7 = balance.fiatValuation;
            }
            return balance.copy(str, str8, str9, str10, str11, str12, str7);
        }

        public final String component1() {
            return this.free;
        }

        public final String component2() {
            return this.locked;
        }

        public final String component3() {
            return this.freeze;
        }

        public final String component4() {
            return this.total;
        }

        public final String component5() {
            return this.withdrawing;
        }

        public final String component6() {
            return this.btcValuation;
        }

        public final String component7() {
            return this.fiatValuation;
        }

        public final Balance copy(String free, String locked, String freeze, String total, String withdrawing, String btcValuation, String fiatValuation) {
            Intrinsics.checkNotNullParameter(free, "free");
            Intrinsics.checkNotNullParameter(locked, "locked");
            Intrinsics.checkNotNullParameter(freeze, "freeze");
            Intrinsics.checkNotNullParameter(total, "total");
            Intrinsics.checkNotNullParameter(withdrawing, "withdrawing");
            Intrinsics.checkNotNullParameter(btcValuation, "btcValuation");
            Intrinsics.checkNotNullParameter(fiatValuation, "fiatValuation");
            return new Balance(free, locked, freeze, total, withdrawing, btcValuation, fiatValuation);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Balance) {
                Balance balance = (Balance) obj;
                return Intrinsics.areEqual(this.free, balance.free) && Intrinsics.areEqual(this.locked, balance.locked) && Intrinsics.areEqual(this.freeze, balance.freeze) && Intrinsics.areEqual(this.total, balance.total) && Intrinsics.areEqual(this.withdrawing, balance.withdrawing) && Intrinsics.areEqual(this.btcValuation, balance.btcValuation) && Intrinsics.areEqual(this.fiatValuation, balance.fiatValuation);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((this.free.hashCode() * 31) + this.locked.hashCode()) * 31) + this.freeze.hashCode()) * 31) + this.total.hashCode()) * 31) + this.withdrawing.hashCode()) * 31) + this.btcValuation.hashCode()) * 31) + this.fiatValuation.hashCode();
        }

        public String toString() {
            return "Balance(free=" + this.free + ", locked=" + this.locked + ", freeze=" + this.freeze + ", total=" + this.total + ", withdrawing=" + this.withdrawing + ", btcValuation=" + this.btcValuation + ", fiatValuation=" + this.fiatValuation + ')';
        }

        public Balance(String free, String locked, String freeze, String total, String withdrawing, String btcValuation, String fiatValuation) {
            Intrinsics.checkNotNullParameter(free, "free");
            Intrinsics.checkNotNullParameter(locked, "locked");
            Intrinsics.checkNotNullParameter(freeze, "freeze");
            Intrinsics.checkNotNullParameter(total, "total");
            Intrinsics.checkNotNullParameter(withdrawing, "withdrawing");
            Intrinsics.checkNotNullParameter(btcValuation, "btcValuation");
            Intrinsics.checkNotNullParameter(fiatValuation, "fiatValuation");
            this.free = free;
            this.locked = locked;
            this.freeze = freeze;
            this.total = total;
            this.withdrawing = withdrawing;
            this.btcValuation = btcValuation;
            this.fiatValuation = fiatValuation;
        }

        public final String getFree() {
            return this.free;
        }

        public final String getLocked() {
            return this.locked;
        }

        public final String getFreeze() {
            return this.freeze;
        }

        public final String getTotal() {
            return this.total;
        }

        public final String getWithdrawing() {
            return this.withdrawing;
        }

        public final String getBtcValuation() {
            return this.btcValuation;
        }

        public final String getFiatValuation() {
            return this.fiatValuation;
        }
    }
}
