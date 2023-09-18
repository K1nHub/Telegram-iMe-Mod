package com.iMe.model.wallet.select;

import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SelectableTokenItem.kt */
/* loaded from: classes4.dex */
public final class SelectableTokenItem {
    private final SelectableTokenBalance balance;
    private final boolean isBinance;
    private final TokenDetailed token;

    public static /* synthetic */ SelectableTokenItem copy$default(SelectableTokenItem selectableTokenItem, boolean z, TokenDetailed tokenDetailed, SelectableTokenBalance selectableTokenBalance, int i, Object obj) {
        if ((i & 1) != 0) {
            z = selectableTokenItem.isBinance;
        }
        if ((i & 2) != 0) {
            tokenDetailed = selectableTokenItem.token;
        }
        if ((i & 4) != 0) {
            selectableTokenBalance = selectableTokenItem.balance;
        }
        return selectableTokenItem.copy(z, tokenDetailed, selectableTokenBalance);
    }

    public final boolean component1() {
        return this.isBinance;
    }

    public final TokenDetailed component2() {
        return this.token;
    }

    public final SelectableTokenBalance component3() {
        return this.balance;
    }

    public final SelectableTokenItem copy(boolean z, TokenDetailed token, SelectableTokenBalance selectableTokenBalance) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new SelectableTokenItem(z, token, selectableTokenBalance);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SelectableTokenItem) {
            SelectableTokenItem selectableTokenItem = (SelectableTokenItem) obj;
            return this.isBinance == selectableTokenItem.isBinance && Intrinsics.areEqual(this.token, selectableTokenItem.token) && Intrinsics.areEqual(this.balance, selectableTokenItem.balance);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z = this.isBinance;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int hashCode = ((r0 * 31) + this.token.hashCode()) * 31;
        SelectableTokenBalance selectableTokenBalance = this.balance;
        return hashCode + (selectableTokenBalance == null ? 0 : selectableTokenBalance.hashCode());
    }

    public String toString() {
        return "SelectableTokenItem(isBinance=" + this.isBinance + ", token=" + this.token + ", balance=" + this.balance + ')';
    }

    public SelectableTokenItem(boolean z, TokenDetailed token, SelectableTokenBalance selectableTokenBalance) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.isBinance = z;
        this.token = token;
        this.balance = selectableTokenBalance;
    }

    public /* synthetic */ SelectableTokenItem(boolean z, TokenDetailed tokenDetailed, SelectableTokenBalance selectableTokenBalance, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, tokenDetailed, (i & 4) != 0 ? null : selectableTokenBalance);
    }

    public final boolean isBinance() {
        return this.isBinance;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    public final SelectableTokenBalance getBalance() {
        return this.balance;
    }

    public final boolean isWithBalance() {
        return this.balance != null;
    }
}
