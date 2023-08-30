package com.iMe.model.wallet.home.pay;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceBalanceItem.kt */
/* loaded from: classes3.dex */
public final class BinanceBalanceItem extends NoChildNode {
    private final BinanceTokenBalanceInfo balanceInfo;
    private final boolean isBalanceHidden;

    public static /* synthetic */ BinanceBalanceItem copy$default(BinanceBalanceItem binanceBalanceItem, BinanceTokenBalanceInfo binanceTokenBalanceInfo, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            binanceTokenBalanceInfo = binanceBalanceItem.balanceInfo;
        }
        if ((i & 2) != 0) {
            z = binanceBalanceItem.isBalanceHidden;
        }
        return binanceBalanceItem.copy(binanceTokenBalanceInfo, z);
    }

    public final BinanceTokenBalanceInfo component1() {
        return this.balanceInfo;
    }

    public final boolean component2() {
        return this.isBalanceHidden;
    }

    public final BinanceBalanceItem copy(BinanceTokenBalanceInfo balanceInfo, boolean z) {
        Intrinsics.checkNotNullParameter(balanceInfo, "balanceInfo");
        return new BinanceBalanceItem(balanceInfo, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceBalanceItem) {
            BinanceBalanceItem binanceBalanceItem = (BinanceBalanceItem) obj;
            return Intrinsics.areEqual(this.balanceInfo, binanceBalanceItem.balanceInfo) && this.isBalanceHidden == binanceBalanceItem.isBalanceHidden;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.balanceInfo.hashCode() * 31;
        boolean z = this.isBalanceHidden;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "BinanceBalanceItem(balanceInfo=" + this.balanceInfo + ", isBalanceHidden=" + this.isBalanceHidden + ')';
    }

    public final BinanceTokenBalanceInfo getBalanceInfo() {
        return this.balanceInfo;
    }

    public final boolean isBalanceHidden() {
        return this.isBalanceHidden;
    }

    public BinanceBalanceItem(BinanceTokenBalanceInfo balanceInfo, boolean z) {
        Intrinsics.checkNotNullParameter(balanceInfo, "balanceInfo");
        this.balanceInfo = balanceInfo;
        this.isBalanceHidden = z;
    }
}
