package com.smedialink.model.wallet.home.pay;

import com.smedialink.model.common.NoChildNode;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceBalanceItem.kt */
/* loaded from: classes3.dex */
public final class BinanceBalanceItem extends NoChildNode {
    private BinanceTokenBalanceInfo balanceInfo;

    public static /* synthetic */ BinanceBalanceItem copy$default(BinanceBalanceItem binanceBalanceItem, BinanceTokenBalanceInfo binanceTokenBalanceInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            binanceTokenBalanceInfo = binanceBalanceItem.balanceInfo;
        }
        return binanceBalanceItem.copy(binanceTokenBalanceInfo);
    }

    public final BinanceTokenBalanceInfo component1() {
        return this.balanceInfo;
    }

    public final BinanceBalanceItem copy(BinanceTokenBalanceInfo balanceInfo) {
        Intrinsics.checkNotNullParameter(balanceInfo, "balanceInfo");
        return new BinanceBalanceItem(balanceInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinanceBalanceItem) && Intrinsics.areEqual(this.balanceInfo, ((BinanceBalanceItem) obj).balanceInfo);
    }

    public int hashCode() {
        return this.balanceInfo.hashCode();
    }

    public String toString() {
        return "BinanceBalanceItem(balanceInfo=" + this.balanceInfo + ')';
    }

    public final BinanceTokenBalanceInfo getBalanceInfo() {
        return this.balanceInfo;
    }

    public final void setBalanceInfo(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<set-?>");
        this.balanceInfo = binanceTokenBalanceInfo;
    }

    public BinanceBalanceItem(BinanceTokenBalanceInfo balanceInfo) {
        Intrinsics.checkNotNullParameter(balanceInfo, "balanceInfo");
        this.balanceInfo = balanceInfo;
    }
}
