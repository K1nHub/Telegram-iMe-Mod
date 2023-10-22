package com.iMe.storage.data.locale.p026db.model.wallet;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTokenBalanceDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.wallet.WalletTokenBalanceDb */
/* loaded from: classes3.dex */
public final class WalletTokenBalanceDb {
    private final String address;
    private final String avatarUrl;
    private final int decimals;
    private final boolean isCoin;
    private final String name;
    private final String networkId;
    private final double ratePercentageChange24h;
    private final String rateToFiatSymbol;
    private final String rateToFiatTicker;
    private final double rateToFiatValue;
    private final long tgUserId;
    private final String ticker;
    private final double total;
    private final String totalInFiatSymbol;
    private final String totalInFiatTicker;
    private final double totalInFiatValue;
    private final String website;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletTokenBalanceDb) {
            WalletTokenBalanceDb walletTokenBalanceDb = (WalletTokenBalanceDb) obj;
            return this.tgUserId == walletTokenBalanceDb.tgUserId && Double.compare(this.total, walletTokenBalanceDb.total) == 0 && Double.compare(this.totalInFiatValue, walletTokenBalanceDb.totalInFiatValue) == 0 && Intrinsics.areEqual(this.totalInFiatSymbol, walletTokenBalanceDb.totalInFiatSymbol) && Intrinsics.areEqual(this.totalInFiatTicker, walletTokenBalanceDb.totalInFiatTicker) && Double.compare(this.rateToFiatValue, walletTokenBalanceDb.rateToFiatValue) == 0 && Intrinsics.areEqual(this.rateToFiatSymbol, walletTokenBalanceDb.rateToFiatSymbol) && Intrinsics.areEqual(this.rateToFiatTicker, walletTokenBalanceDb.rateToFiatTicker) && Double.compare(this.ratePercentageChange24h, walletTokenBalanceDb.ratePercentageChange24h) == 0 && Intrinsics.areEqual(this.address, walletTokenBalanceDb.address) && Intrinsics.areEqual(this.networkId, walletTokenBalanceDb.networkId) && Intrinsics.areEqual(this.avatarUrl, walletTokenBalanceDb.avatarUrl) && this.decimals == walletTokenBalanceDb.decimals && Intrinsics.areEqual(this.ticker, walletTokenBalanceDb.ticker) && this.isCoin == walletTokenBalanceDb.isCoin && Intrinsics.areEqual(this.name, walletTokenBalanceDb.name) && Intrinsics.areEqual(this.website, walletTokenBalanceDb.website);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m1017m = ((((((((((((((((((((((((((ProfileData$$ExternalSyntheticBackport0.m1017m(this.tgUserId) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1011m(this.total)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1011m(this.totalInFiatValue)) * 31) + this.totalInFiatSymbol.hashCode()) * 31) + this.totalInFiatTicker.hashCode()) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1011m(this.rateToFiatValue)) * 31) + this.rateToFiatSymbol.hashCode()) * 31) + this.rateToFiatTicker.hashCode()) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1011m(this.ratePercentageChange24h)) * 31) + this.address.hashCode()) * 31) + this.networkId.hashCode()) * 31) + this.avatarUrl.hashCode()) * 31) + this.decimals) * 31) + this.ticker.hashCode()) * 31;
        boolean z = this.isCoin;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((m1017m + i) * 31) + this.name.hashCode()) * 31) + this.website.hashCode();
    }

    public String toString() {
        return "WalletTokenBalanceDb(tgUserId=" + this.tgUserId + ", total=" + this.total + ", totalInFiatValue=" + this.totalInFiatValue + ", totalInFiatSymbol=" + this.totalInFiatSymbol + ", totalInFiatTicker=" + this.totalInFiatTicker + ", rateToFiatValue=" + this.rateToFiatValue + ", rateToFiatSymbol=" + this.rateToFiatSymbol + ", rateToFiatTicker=" + this.rateToFiatTicker + ", ratePercentageChange24h=" + this.ratePercentageChange24h + ", address=" + this.address + ", networkId=" + this.networkId + ", avatarUrl=" + this.avatarUrl + ", decimals=" + this.decimals + ", ticker=" + this.ticker + ", isCoin=" + this.isCoin + ", name=" + this.name + ", website=" + this.website + ')';
    }

    public WalletTokenBalanceDb(long j, double d, double d2, String totalInFiatSymbol, String totalInFiatTicker, double d3, String rateToFiatSymbol, String rateToFiatTicker, double d4, String address, String networkId, String avatarUrl, int i, String ticker, boolean z, String name, String website) {
        Intrinsics.checkNotNullParameter(totalInFiatSymbol, "totalInFiatSymbol");
        Intrinsics.checkNotNullParameter(totalInFiatTicker, "totalInFiatTicker");
        Intrinsics.checkNotNullParameter(rateToFiatSymbol, "rateToFiatSymbol");
        Intrinsics.checkNotNullParameter(rateToFiatTicker, "rateToFiatTicker");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(website, "website");
        this.tgUserId = j;
        this.total = d;
        this.totalInFiatValue = d2;
        this.totalInFiatSymbol = totalInFiatSymbol;
        this.totalInFiatTicker = totalInFiatTicker;
        this.rateToFiatValue = d3;
        this.rateToFiatSymbol = rateToFiatSymbol;
        this.rateToFiatTicker = rateToFiatTicker;
        this.ratePercentageChange24h = d4;
        this.address = address;
        this.networkId = networkId;
        this.avatarUrl = avatarUrl;
        this.decimals = i;
        this.ticker = ticker;
        this.isCoin = z;
        this.name = name;
        this.website = website;
    }

    public final long getTgUserId() {
        return this.tgUserId;
    }

    public final double getTotal() {
        return this.total;
    }

    public final double getTotalInFiatValue() {
        return this.totalInFiatValue;
    }

    public final String getTotalInFiatSymbol() {
        return this.totalInFiatSymbol;
    }

    public final String getTotalInFiatTicker() {
        return this.totalInFiatTicker;
    }

    public final double getRateToFiatValue() {
        return this.rateToFiatValue;
    }

    public final String getRateToFiatSymbol() {
        return this.rateToFiatSymbol;
    }

    public final String getRateToFiatTicker() {
        return this.rateToFiatTicker;
    }

    public final double getRatePercentageChange24h() {
        return this.ratePercentageChange24h;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getNetworkId() {
        return this.networkId;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final int getDecimals() {
        return this.decimals;
    }

    public final String getTicker() {
        return this.ticker;
    }

    public final boolean isCoin() {
        return this.isCoin;
    }

    public final String getName() {
        return this.name;
    }

    public final String getWebsite() {
        return this.website;
    }
}
