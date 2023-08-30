package com.iMe.model.cryptobox;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxesListHeaderItem.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxesListHeaderItem extends NoChildNode {
    private final String title;

    public static /* synthetic */ CryptoBoxesListHeaderItem copy$default(CryptoBoxesListHeaderItem cryptoBoxesListHeaderItem, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoBoxesListHeaderItem.title;
        }
        return cryptoBoxesListHeaderItem.copy(str);
    }

    public final String component1() {
        return this.title;
    }

    public final CryptoBoxesListHeaderItem copy(String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new CryptoBoxesListHeaderItem(title);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CryptoBoxesListHeaderItem) && Intrinsics.areEqual(this.title, ((CryptoBoxesListHeaderItem) obj).title);
    }

    public int hashCode() {
        return this.title.hashCode();
    }

    public String toString() {
        return "CryptoBoxesListHeaderItem(title=" + this.title + ')';
    }

    public final String getTitle() {
        return this.title;
    }

    public CryptoBoxesListHeaderItem(String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
    }
}
