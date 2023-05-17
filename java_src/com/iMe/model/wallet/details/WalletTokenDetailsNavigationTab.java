package com.iMe.model.wallet.details;

import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.model.common.NavigationTab;
import com.iMe.p031ui.base.mvp.MvpFragment;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTokenDetailsNavigationTab.kt */
/* loaded from: classes3.dex */
public final class WalletTokenDetailsNavigationTab extends NavigationTab<MvpFragment> {

    /* renamed from: id */
    private final int f279id;
    private final TabbedFragmentPage<MvpFragment> page;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WalletTokenDetailsNavigationTab copy$default(WalletTokenDetailsNavigationTab walletTokenDetailsNavigationTab, int i, TabbedFragmentPage tabbedFragmentPage, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = walletTokenDetailsNavigationTab.getId();
        }
        if ((i2 & 2) != 0) {
            tabbedFragmentPage = walletTokenDetailsNavigationTab.page;
        }
        return walletTokenDetailsNavigationTab.copy(i, tabbedFragmentPage);
    }

    public final int component1() {
        return getId();
    }

    public final TabbedFragmentPage<MvpFragment> component2() {
        return this.page;
    }

    public final WalletTokenDetailsNavigationTab copy(int i, TabbedFragmentPage<MvpFragment> page) {
        Intrinsics.checkNotNullParameter(page, "page");
        return new WalletTokenDetailsNavigationTab(i, page);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletTokenDetailsNavigationTab) {
            WalletTokenDetailsNavigationTab walletTokenDetailsNavigationTab = (WalletTokenDetailsNavigationTab) obj;
            return getId() == walletTokenDetailsNavigationTab.getId() && Intrinsics.areEqual(this.page, walletTokenDetailsNavigationTab.page);
        }
        return false;
    }

    public int hashCode() {
        return (getId() * 31) + this.page.hashCode();
    }

    public String toString() {
        return "WalletTokenDetailsNavigationTab(id=" + getId() + ", page=" + this.page + ')';
    }

    @Override // com.iMe.model.common.NavigationTab
    public int getId() {
        return this.f279id;
    }

    public final TabbedFragmentPage<MvpFragment> getPage() {
        return this.page;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsNavigationTab(int i, TabbedFragmentPage<MvpFragment> page) {
        super(i, page.getFragment());
        Intrinsics.checkNotNullParameter(page, "page");
        this.f279id = i;
        this.page = page;
    }
}
