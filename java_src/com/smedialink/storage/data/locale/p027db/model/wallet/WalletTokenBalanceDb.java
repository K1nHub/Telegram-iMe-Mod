package com.smedialink.storage.data.locale.p027db.model.wallet;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTokenBalanceDb.kt */
/* renamed from: com.smedialink.storage.data.locale.db.model.wallet.WalletTokenBalanceDb */
/* loaded from: classes3.dex */
public final class WalletTokenBalanceDb {
    private final String coinCode;
    private final String networkType;
    private final float ratePercentageChange24h;
    private final double rateToDollars;
    private final long tgUserId;
    private final double total;
    private final float totalInDollars;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletTokenBalanceDb) {
            WalletTokenBalanceDb walletTokenBalanceDb = (WalletTokenBalanceDb) obj;
            return this.tgUserId == walletTokenBalanceDb.tgUserId && Intrinsics.areEqual(this.coinCode, walletTokenBalanceDb.coinCode) && Intrinsics.areEqual(Double.valueOf(this.total), Double.valueOf(walletTokenBalanceDb.total)) && Intrinsics.areEqual(Float.valueOf(this.totalInDollars), Float.valueOf(walletTokenBalanceDb.totalInDollars)) && Intrinsics.areEqual(Double.valueOf(this.rateToDollars), Double.valueOf(walletTokenBalanceDb.rateToDollars)) && Intrinsics.areEqual(Float.valueOf(this.ratePercentageChange24h), Float.valueOf(walletTokenBalanceDb.ratePercentageChange24h)) && Intrinsics.areEqual(this.networkType, walletTokenBalanceDb.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.tgUserId) * 31) + this.coinCode.hashCode()) * 31) + Double.doubleToLongBits(this.total)) * 31) + Float.floatToIntBits(this.totalInDollars)) * 31) + Double.doubleToLongBits(this.rateToDollars)) * 31) + Float.floatToIntBits(this.ratePercentageChange24h)) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "WalletTokenBalanceDb(tgUserId=" + this.tgUserId + ", coinCode=" + this.coinCode + ", total=" + this.total + ", totalInDollars=" + this.totalInDollars + ", rateToDollars=" + this.rateToDollars + ", ratePercentageChange24h=" + this.ratePercentageChange24h + ", networkType=" + this.networkType + ')';
    }

    public WalletTokenBalanceDb(long j, String coinCode, double d, float f, double d2, float f2, String networkType) {
        Intrinsics.checkNotNullParameter(coinCode, "coinCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.tgUserId = j;
        this.coinCode = coinCode;
        this.total = d;
        this.totalInDollars = f;
        this.rateToDollars = d2;
        this.ratePercentageChange24h = f2;
        this.networkType = networkType;
    }

    public final long getTgUserId() {
        return this.tgUserId;
    }

    public final String getCoinCode() {
        return this.coinCode;
    }

    public final double getTotal() {
        return this.total;
    }

    public final float getTotalInDollars() {
        return this.totalInDollars;
    }

    public final double getRateToDollars() {
        return this.rateToDollars;
    }

    public final float getRatePercentageChange24h() {
        return this.ratePercentageChange24h;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
