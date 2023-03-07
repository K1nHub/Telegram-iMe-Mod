package com.smedialink.model.wallet.home;

import com.smedialink.model.common.NoChildNode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.utils.formatter.MaskFormatter;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TotalBalanceItem.kt */
/* loaded from: classes3.dex */
public final class TotalBalanceItem extends NoChildNode {
    private float balance;

    public static /* synthetic */ TotalBalanceItem copy$default(TotalBalanceItem totalBalanceItem, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = totalBalanceItem.balance;
        }
        return totalBalanceItem.copy(f);
    }

    public final float component1() {
        return this.balance;
    }

    public final TotalBalanceItem copy(float f) {
        return new TotalBalanceItem(f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TotalBalanceItem) && Intrinsics.areEqual(Float.valueOf(this.balance), Float.valueOf(((TotalBalanceItem) obj).balance));
    }

    public int hashCode() {
        return Float.floatToIntBits(this.balance);
    }

    public String toString() {
        return "TotalBalanceItem(balance=" + this.balance + ')';
    }

    public final float getBalance() {
        return this.balance;
    }

    public final void setBalance(float f) {
        this.balance = f;
    }

    public TotalBalanceItem(float f) {
        this.balance = f;
    }

    public final String getFormattedBalance(boolean z) {
        Float valueOf = Float.valueOf(this.balance);
        TokenInfo.Fiat.USD usd = TokenInfo.Fiat.USD.INSTANCE;
        return MaskFormatter.formatBalanceOrMask(z, valueOf, usd.getDecimals(), usd.getShortName());
    }
}
