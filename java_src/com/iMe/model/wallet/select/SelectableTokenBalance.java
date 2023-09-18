package com.iMe.model.wallet.select;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SelectableTokenBalance.kt */
/* loaded from: classes4.dex */
public final class SelectableTokenBalance {
    private final String total;
    private final String totalInDollars;

    public static /* synthetic */ SelectableTokenBalance copy$default(SelectableTokenBalance selectableTokenBalance, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = selectableTokenBalance.total;
        }
        if ((i & 2) != 0) {
            str2 = selectableTokenBalance.totalInDollars;
        }
        return selectableTokenBalance.copy(str, str2);
    }

    public final String component1() {
        return this.total;
    }

    public final String component2() {
        return this.totalInDollars;
    }

    public final SelectableTokenBalance copy(String total, String totalInDollars) {
        Intrinsics.checkNotNullParameter(total, "total");
        Intrinsics.checkNotNullParameter(totalInDollars, "totalInDollars");
        return new SelectableTokenBalance(total, totalInDollars);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SelectableTokenBalance) {
            SelectableTokenBalance selectableTokenBalance = (SelectableTokenBalance) obj;
            return Intrinsics.areEqual(this.total, selectableTokenBalance.total) && Intrinsics.areEqual(this.totalInDollars, selectableTokenBalance.totalInDollars);
        }
        return false;
    }

    public int hashCode() {
        return (this.total.hashCode() * 31) + this.totalInDollars.hashCode();
    }

    public String toString() {
        return "SelectableTokenBalance(total=" + this.total + ", totalInDollars=" + this.totalInDollars + ')';
    }

    public SelectableTokenBalance(String total, String totalInDollars) {
        Intrinsics.checkNotNullParameter(total, "total");
        Intrinsics.checkNotNullParameter(totalInDollars, "totalInDollars");
        this.total = total;
        this.totalInDollars = totalInDollars;
    }

    public final String getTotal() {
        return this.total;
    }

    public final String getTotalInDollars() {
        return this.totalInDollars;
    }
}
