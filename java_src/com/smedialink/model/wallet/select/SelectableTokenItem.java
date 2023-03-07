package com.smedialink.model.wallet.select;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SelectableTokenItem.kt */
/* loaded from: classes3.dex */
public final class SelectableTokenItem {
    private final SelectableTokenBalance balance;
    private final SelectableToken token;

    public static /* synthetic */ SelectableTokenItem copy$default(SelectableTokenItem selectableTokenItem, SelectableToken selectableToken, SelectableTokenBalance selectableTokenBalance, int i, Object obj) {
        if ((i & 1) != 0) {
            selectableToken = selectableTokenItem.token;
        }
        if ((i & 2) != 0) {
            selectableTokenBalance = selectableTokenItem.balance;
        }
        return selectableTokenItem.copy(selectableToken, selectableTokenBalance);
    }

    public final SelectableToken component1() {
        return this.token;
    }

    public final SelectableTokenBalance component2() {
        return this.balance;
    }

    public final SelectableTokenItem copy(SelectableToken token, SelectableTokenBalance selectableTokenBalance) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new SelectableTokenItem(token, selectableTokenBalance);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SelectableTokenItem) {
            SelectableTokenItem selectableTokenItem = (SelectableTokenItem) obj;
            return Intrinsics.areEqual(this.token, selectableTokenItem.token) && Intrinsics.areEqual(this.balance, selectableTokenItem.balance);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.token.hashCode() * 31;
        SelectableTokenBalance selectableTokenBalance = this.balance;
        return hashCode + (selectableTokenBalance == null ? 0 : selectableTokenBalance.hashCode());
    }

    public String toString() {
        return "SelectableTokenItem(token=" + this.token + ", balance=" + this.balance + ')';
    }

    public SelectableTokenItem(SelectableToken token, SelectableTokenBalance selectableTokenBalance) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
        this.balance = selectableTokenBalance;
    }

    public /* synthetic */ SelectableTokenItem(SelectableToken selectableToken, SelectableTokenBalance selectableTokenBalance, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(selectableToken, (i & 2) != 0 ? null : selectableTokenBalance);
    }

    public final SelectableToken getToken() {
        return this.token;
    }

    public final SelectableTokenBalance getBalance() {
        return this.balance;
    }

    public final boolean isWithBalance() {
        return this.balance != null;
    }
}
