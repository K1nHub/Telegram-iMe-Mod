package com.iMe.model.wallet.home.navigation;

import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.model.common.NavigationTab;
import com.iMe.p031ui.wallet.home.tabs.WalletHomeTabFragment;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletHomeNavigationTab.kt */
/* loaded from: classes3.dex */
public final class WalletHomeNavigationTab extends NavigationTab<WalletHomeTabFragment> {

    /* renamed from: id */
    private final int f365id;
    private final TabbedFragmentPage<WalletHomeTabFragment> page;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WalletHomeNavigationTab copy$default(WalletHomeNavigationTab walletHomeNavigationTab, int i, TabbedFragmentPage tabbedFragmentPage, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = walletHomeNavigationTab.getId();
        }
        if ((i2 & 2) != 0) {
            tabbedFragmentPage = walletHomeNavigationTab.page;
        }
        return walletHomeNavigationTab.copy(i, tabbedFragmentPage);
    }

    public final int component1() {
        return getId();
    }

    public final TabbedFragmentPage<WalletHomeTabFragment> component2() {
        return this.page;
    }

    public final WalletHomeNavigationTab copy(int i, TabbedFragmentPage<WalletHomeTabFragment> page) {
        Intrinsics.checkNotNullParameter(page, "page");
        return new WalletHomeNavigationTab(i, page);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletHomeNavigationTab) {
            WalletHomeNavigationTab walletHomeNavigationTab = (WalletHomeNavigationTab) obj;
            return getId() == walletHomeNavigationTab.getId() && Intrinsics.areEqual(this.page, walletHomeNavigationTab.page);
        }
        return false;
    }

    public int hashCode() {
        return (getId() * 31) + this.page.hashCode();
    }

    public String toString() {
        return "WalletHomeNavigationTab(id=" + getId() + ", page=" + this.page + ')';
    }

    @Override // com.iMe.model.common.NavigationTab
    public int getId() {
        return this.f365id;
    }

    public final TabbedFragmentPage<WalletHomeTabFragment> getPage() {
        return this.page;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeNavigationTab(int i, TabbedFragmentPage<WalletHomeTabFragment> page) {
        super(i, page.getFragment());
        Intrinsics.checkNotNullParameter(page, "page");
        this.f365id = i;
        this.page = page;
    }
}
