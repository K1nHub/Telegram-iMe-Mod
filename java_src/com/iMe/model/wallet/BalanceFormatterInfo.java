package com.iMe.model.wallet;

import java.text.NumberFormat;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BalanceFormatterInfo.kt */
/* loaded from: classes3.dex */
public final class BalanceFormatterInfo {
    private final char decimalSeparator;
    private final NumberFormat numberFormat;

    public static /* synthetic */ BalanceFormatterInfo copy$default(BalanceFormatterInfo balanceFormatterInfo, NumberFormat numberFormat, char c, int i, Object obj) {
        if ((i & 1) != 0) {
            numberFormat = balanceFormatterInfo.numberFormat;
        }
        if ((i & 2) != 0) {
            c = balanceFormatterInfo.decimalSeparator;
        }
        return balanceFormatterInfo.copy(numberFormat, c);
    }

    public final NumberFormat component1() {
        return this.numberFormat;
    }

    public final char component2() {
        return this.decimalSeparator;
    }

    public final BalanceFormatterInfo copy(NumberFormat numberFormat, char c) {
        Intrinsics.checkNotNullParameter(numberFormat, "numberFormat");
        return new BalanceFormatterInfo(numberFormat, c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BalanceFormatterInfo) {
            BalanceFormatterInfo balanceFormatterInfo = (BalanceFormatterInfo) obj;
            return Intrinsics.areEqual(this.numberFormat, balanceFormatterInfo.numberFormat) && this.decimalSeparator == balanceFormatterInfo.decimalSeparator;
        }
        return false;
    }

    public int hashCode() {
        return (this.numberFormat.hashCode() * 31) + this.decimalSeparator;
    }

    public String toString() {
        return "BalanceFormatterInfo(numberFormat=" + this.numberFormat + ", decimalSeparator=" + this.decimalSeparator + ')';
    }

    public BalanceFormatterInfo(NumberFormat numberFormat, char c) {
        Intrinsics.checkNotNullParameter(numberFormat, "numberFormat");
        this.numberFormat = numberFormat;
        this.decimalSeparator = c;
    }

    public final NumberFormat getNumberFormat() {
        return this.numberFormat;
    }

    public final char getDecimalSeparator() {
        return this.decimalSeparator;
    }
}
