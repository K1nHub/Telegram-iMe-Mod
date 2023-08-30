package com.iMe.model.wallet.home;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TotalBalanceItem.kt */
/* loaded from: classes3.dex */
public final class TotalBalanceItem extends NoChildNode {
    private final String balanceText;
    private final boolean isBalanceHidden;

    public static /* synthetic */ TotalBalanceItem copy$default(TotalBalanceItem totalBalanceItem, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = totalBalanceItem.balanceText;
        }
        if ((i & 2) != 0) {
            z = totalBalanceItem.isBalanceHidden;
        }
        return totalBalanceItem.copy(str, z);
    }

    public final String component1() {
        return this.balanceText;
    }

    public final boolean component2() {
        return this.isBalanceHidden;
    }

    public final TotalBalanceItem copy(String balanceText, boolean z) {
        Intrinsics.checkNotNullParameter(balanceText, "balanceText");
        return new TotalBalanceItem(balanceText, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TotalBalanceItem) {
            TotalBalanceItem totalBalanceItem = (TotalBalanceItem) obj;
            return Intrinsics.areEqual(this.balanceText, totalBalanceItem.balanceText) && this.isBalanceHidden == totalBalanceItem.isBalanceHidden;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.balanceText.hashCode() * 31;
        boolean z = this.isBalanceHidden;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "TotalBalanceItem(balanceText=" + this.balanceText + ", isBalanceHidden=" + this.isBalanceHidden + ')';
    }

    public final String getBalanceText() {
        return this.balanceText;
    }

    public final boolean isBalanceHidden() {
        return this.isBalanceHidden;
    }

    public TotalBalanceItem(String balanceText, boolean z) {
        Intrinsics.checkNotNullParameter(balanceText, "balanceText");
        this.balanceText = balanceText;
        this.isBalanceHidden = z;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TotalBalanceItem(float r3, boolean r4) {
        /*
            r2 = this;
            java.lang.Float r3 = java.lang.Float.valueOf(r3)
            com.iMe.storage.domain.model.wallet.token.TokenDetailed$Companion r0 = com.iMe.storage.domain.model.wallet.token.TokenDetailed.Companion
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r1 = r0.getUSD()
            int r1 = r1.getDecimals()
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r0 = r0.getUSD()
            java.lang.String r0 = r0.getTicker()
            java.lang.String r3 = com.iMe.utils.formatter.MaskFormatter.formatBalanceOrMask(r4, r3, r1, r0)
            r2.<init>(r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.model.wallet.home.TotalBalanceItem.<init>(float, boolean):void");
    }
}
