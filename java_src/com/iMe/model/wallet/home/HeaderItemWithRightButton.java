package com.iMe.model.wallet.home;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HeaderItemWithRightButton.kt */
/* loaded from: classes3.dex */
public final class HeaderItemWithRightButton extends NoChildNode {
    private final int iconRes;
    private String title;

    public static /* synthetic */ HeaderItemWithRightButton copy$default(HeaderItemWithRightButton headerItemWithRightButton, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = headerItemWithRightButton.title;
        }
        if ((i2 & 2) != 0) {
            i = headerItemWithRightButton.iconRes;
        }
        return headerItemWithRightButton.copy(str, i);
    }

    public final String component1() {
        return this.title;
    }

    public final int component2() {
        return this.iconRes;
    }

    public final HeaderItemWithRightButton copy(String title, int i) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new HeaderItemWithRightButton(title, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HeaderItemWithRightButton) {
            HeaderItemWithRightButton headerItemWithRightButton = (HeaderItemWithRightButton) obj;
            return Intrinsics.areEqual(this.title, headerItemWithRightButton.title) && this.iconRes == headerItemWithRightButton.iconRes;
        }
        return false;
    }

    public int hashCode() {
        return (this.title.hashCode() * 31) + this.iconRes;
    }

    public String toString() {
        return "HeaderItemWithRightButton(title=" + this.title + ", iconRes=" + this.iconRes + ')';
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final int getIconRes() {
        return this.iconRes;
    }

    public HeaderItemWithRightButton(String title, int i) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.iconRes = i;
    }
}
