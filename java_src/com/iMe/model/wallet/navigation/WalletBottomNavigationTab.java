package com.iMe.model.wallet.navigation;

import com.iMe.model.common.NavigationTab;
import com.iMe.p031ui.wallet.common.WalletTabFragment;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletBottomNavigationTab.kt */
/* loaded from: classes3.dex */
public final class WalletBottomNavigationTab extends NavigationTab<WalletTabFragment> {
    private final WalletTabFragment fragment;

    /* renamed from: id */
    private final int f281id;
    private final String title;

    public static /* synthetic */ WalletBottomNavigationTab copy$default(WalletBottomNavigationTab walletBottomNavigationTab, int i, WalletTabFragment walletTabFragment, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = walletBottomNavigationTab.getId();
        }
        if ((i2 & 2) != 0) {
            walletTabFragment = walletBottomNavigationTab.getFragment();
        }
        if ((i2 & 4) != 0) {
            str = walletBottomNavigationTab.title;
        }
        return walletBottomNavigationTab.copy(i, walletTabFragment, str);
    }

    public final int component1() {
        return getId();
    }

    public final WalletTabFragment component2() {
        return getFragment();
    }

    public final String component3() {
        return this.title;
    }

    public final WalletBottomNavigationTab copy(int i, WalletTabFragment fragment, String title) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(title, "title");
        return new WalletBottomNavigationTab(i, fragment, title);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletBottomNavigationTab) {
            WalletBottomNavigationTab walletBottomNavigationTab = (WalletBottomNavigationTab) obj;
            return getId() == walletBottomNavigationTab.getId() && Intrinsics.areEqual(getFragment(), walletBottomNavigationTab.getFragment()) && Intrinsics.areEqual(this.title, walletBottomNavigationTab.title);
        }
        return false;
    }

    public int hashCode() {
        return (((getId() * 31) + getFragment().hashCode()) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "WalletBottomNavigationTab(id=" + getId() + ", fragment=" + getFragment() + ", title=" + this.title + ')';
    }

    public /* synthetic */ WalletBottomNavigationTab(int i, WalletTabFragment walletTabFragment, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, walletTabFragment, (i2 & 4) != 0 ? "" : str);
    }

    @Override // com.iMe.model.common.NavigationTab
    public int getId() {
        return this.f281id;
    }

    @Override // com.iMe.model.common.NavigationTab
    public WalletTabFragment getFragment() {
        return this.fragment;
    }

    public final String getTitle() {
        return this.title;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletBottomNavigationTab(int i, WalletTabFragment fragment, String title) {
        super(i, fragment);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(title, "title");
        this.f281id = i;
        this.fragment = fragment;
        this.title = title;
    }
}
