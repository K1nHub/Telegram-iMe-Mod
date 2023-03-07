package com.smedialink.storage.domain.model.wallet.token;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FiatCode.kt */
/* loaded from: classes3.dex */
public final class FiatCode {
    private final int decimals;
    private final String shortName;

    public static /* synthetic */ FiatCode copy$default(FiatCode fiatCode, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = fiatCode.shortName;
        }
        if ((i2 & 2) != 0) {
            i = fiatCode.decimals;
        }
        return fiatCode.copy(str, i);
    }

    public final String component1() {
        return this.shortName;
    }

    public final int component2() {
        return this.decimals;
    }

    public final FiatCode copy(String shortName, int i) {
        Intrinsics.checkNotNullParameter(shortName, "shortName");
        return new FiatCode(shortName, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FiatCode) {
            FiatCode fiatCode = (FiatCode) obj;
            return Intrinsics.areEqual(this.shortName, fiatCode.shortName) && this.decimals == fiatCode.decimals;
        }
        return false;
    }

    public int hashCode() {
        return (this.shortName.hashCode() * 31) + this.decimals;
    }

    public String toString() {
        return "FiatCode(shortName=" + this.shortName + ", decimals=" + this.decimals + ')';
    }

    public FiatCode(String shortName, int i) {
        Intrinsics.checkNotNullParameter(shortName, "shortName");
        this.shortName = shortName;
        this.decimals = i;
    }

    public /* synthetic */ FiatCode(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? 2 : i);
    }

    public final String getShortName() {
        return this.shortName;
    }

    public final int getDecimals() {
        return this.decimals;
    }
}
