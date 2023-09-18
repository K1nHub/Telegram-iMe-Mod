package com.iMe.p031ui.pager;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: ViewPageData.kt */
/* renamed from: com.iMe.ui.pager.ViewPageData */
/* loaded from: classes4.dex */
public final class ViewPageData {
    private final int fabIconResId;
    private final RecyclerListView.SelectionAdapter listAdapter;
    private final String tabTitle;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ViewPageData) {
            ViewPageData viewPageData = (ViewPageData) obj;
            return Intrinsics.areEqual(this.tabTitle, viewPageData.tabTitle) && Intrinsics.areEqual(this.listAdapter, viewPageData.listAdapter) && this.fabIconResId == viewPageData.fabIconResId;
        }
        return false;
    }

    public int hashCode() {
        return (((this.tabTitle.hashCode() * 31) + this.listAdapter.hashCode()) * 31) + this.fabIconResId;
    }

    public String toString() {
        return "ViewPageData(tabTitle=" + this.tabTitle + ", listAdapter=" + this.listAdapter + ", fabIconResId=" + this.fabIconResId + ')';
    }

    public ViewPageData(String tabTitle, RecyclerListView.SelectionAdapter listAdapter, int i) {
        Intrinsics.checkNotNullParameter(tabTitle, "tabTitle");
        Intrinsics.checkNotNullParameter(listAdapter, "listAdapter");
        this.tabTitle = tabTitle;
        this.listAdapter = listAdapter;
        this.fabIconResId = i;
    }

    public final String getTabTitle() {
        return this.tabTitle;
    }

    public final RecyclerListView.SelectionAdapter getListAdapter() {
        return this.listAdapter;
    }

    public final int getFabIconResId() {
        return this.fabIconResId;
    }
}
