package com.iMe.model.wallet.home;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HeaderItem.kt */
/* loaded from: classes3.dex */
public final class HeaderItem extends NoChildNode {
    private String title;

    public static /* synthetic */ HeaderItem copy$default(HeaderItem headerItem, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = headerItem.title;
        }
        return headerItem.copy(str);
    }

    public final String component1() {
        return this.title;
    }

    public final HeaderItem copy(String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new HeaderItem(title);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof HeaderItem) && Intrinsics.areEqual(this.title, ((HeaderItem) obj).title);
    }

    public int hashCode() {
        return this.title.hashCode();
    }

    public String toString() {
        return "HeaderItem(title=" + this.title + ')';
    }

    public HeaderItem(String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }
}
