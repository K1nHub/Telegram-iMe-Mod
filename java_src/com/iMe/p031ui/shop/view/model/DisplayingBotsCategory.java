package com.iMe.p031ui.shop.view.model;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: DisplayingBotsCategory.kt */
/* renamed from: com.iMe.ui.shop.view.model.DisplayingBotsCategory */
/* loaded from: classes4.dex */
public final class DisplayingBotsCategory {
    private final String title;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DisplayingBotsCategory) && Intrinsics.areEqual(this.title, ((DisplayingBotsCategory) obj).title);
    }

    public int hashCode() {
        return this.title.hashCode();
    }

    public String toString() {
        return "DisplayingBotsCategory(title=" + this.title + ')';
    }

    public DisplayingBotsCategory(String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
    }

    public final String getTitle() {
        return this.title;
    }
}
