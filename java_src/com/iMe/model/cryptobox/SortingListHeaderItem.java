package com.iMe.model.cryptobox;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SortingListHeaderItem.kt */
/* loaded from: classes3.dex */
public final class SortingListHeaderItem extends NoChildNode {
    private final boolean isSortingVisible;
    private final String titleText;

    public static /* synthetic */ SortingListHeaderItem copy$default(SortingListHeaderItem sortingListHeaderItem, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sortingListHeaderItem.titleText;
        }
        if ((i & 2) != 0) {
            z = sortingListHeaderItem.isSortingVisible;
        }
        return sortingListHeaderItem.copy(str, z);
    }

    public final String component1() {
        return this.titleText;
    }

    public final boolean component2() {
        return this.isSortingVisible;
    }

    public final SortingListHeaderItem copy(String titleText, boolean z) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        return new SortingListHeaderItem(titleText, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SortingListHeaderItem) {
            SortingListHeaderItem sortingListHeaderItem = (SortingListHeaderItem) obj;
            return Intrinsics.areEqual(this.titleText, sortingListHeaderItem.titleText) && this.isSortingVisible == sortingListHeaderItem.isSortingVisible;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.titleText.hashCode() * 31;
        boolean z = this.isSortingVisible;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "SortingListHeaderItem(titleText=" + this.titleText + ", isSortingVisible=" + this.isSortingVisible + ')';
    }

    public final String getTitleText() {
        return this.titleText;
    }

    public final boolean isSortingVisible() {
        return this.isSortingVisible;
    }

    public SortingListHeaderItem(String titleText, boolean z) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        this.titleText = titleText;
        this.isSortingVisible = z;
    }
}
