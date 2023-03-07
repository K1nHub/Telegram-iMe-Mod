package com.smedialink.model.catalog;

import com.smedialink.model.common.NavigationTab;
import com.smedialink.p031ui.catalog.tabs.CatalogTabFragment;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.TabbedFragmentPage;
/* compiled from: CatalogNavigationTab.kt */
/* loaded from: classes3.dex */
public final class CatalogNavigationTab extends NavigationTab<CatalogTabFragment> {

    /* renamed from: id */
    private final int f263id;
    private final TabbedFragmentPage<CatalogTabFragment> page;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CatalogNavigationTab copy$default(CatalogNavigationTab catalogNavigationTab, int i, TabbedFragmentPage tabbedFragmentPage, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = catalogNavigationTab.getId();
        }
        if ((i2 & 2) != 0) {
            tabbedFragmentPage = catalogNavigationTab.page;
        }
        return catalogNavigationTab.copy(i, tabbedFragmentPage);
    }

    public final int component1() {
        return getId();
    }

    public final TabbedFragmentPage<CatalogTabFragment> component2() {
        return this.page;
    }

    public final CatalogNavigationTab copy(int i, TabbedFragmentPage<CatalogTabFragment> page) {
        Intrinsics.checkNotNullParameter(page, "page");
        return new CatalogNavigationTab(i, page);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CatalogNavigationTab) {
            CatalogNavigationTab catalogNavigationTab = (CatalogNavigationTab) obj;
            return getId() == catalogNavigationTab.getId() && Intrinsics.areEqual(this.page, catalogNavigationTab.page);
        }
        return false;
    }

    public int hashCode() {
        return (getId() * 31) + this.page.hashCode();
    }

    public String toString() {
        return "CatalogNavigationTab(id=" + getId() + ", page=" + this.page + ')';
    }

    @Override // com.smedialink.model.common.NavigationTab
    public int getId() {
        return this.f263id;
    }

    public final TabbedFragmentPage<CatalogTabFragment> getPage() {
        return this.page;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogNavigationTab(int i, TabbedFragmentPage<CatalogTabFragment> page) {
        super(i, page.getFragment());
        Intrinsics.checkNotNullParameter(page, "page");
        this.f263id = i;
        this.page = page;
    }
}
