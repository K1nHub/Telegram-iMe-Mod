package com.iMe.model.staking;

import com.iMe.fork.utils.TabbedFragmentPage;
import com.iMe.model.common.NavigationTab;
import com.iMe.p031ui.base.mvp.MvpFragment;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingNavigationTab.kt */
/* loaded from: classes3.dex */
public final class StakingNavigationTab extends NavigationTab<MvpFragment> {

    /* renamed from: id */
    private final int f358id;
    private final TabbedFragmentPage<MvpFragment> page;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StakingNavigationTab copy$default(StakingNavigationTab stakingNavigationTab, int i, TabbedFragmentPage tabbedFragmentPage, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = stakingNavigationTab.getId();
        }
        if ((i2 & 2) != 0) {
            tabbedFragmentPage = stakingNavigationTab.page;
        }
        return stakingNavigationTab.copy(i, tabbedFragmentPage);
    }

    public final int component1() {
        return getId();
    }

    public final TabbedFragmentPage<MvpFragment> component2() {
        return this.page;
    }

    public final StakingNavigationTab copy(int i, TabbedFragmentPage<MvpFragment> page) {
        Intrinsics.checkNotNullParameter(page, "page");
        return new StakingNavigationTab(i, page);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingNavigationTab) {
            StakingNavigationTab stakingNavigationTab = (StakingNavigationTab) obj;
            return getId() == stakingNavigationTab.getId() && Intrinsics.areEqual(this.page, stakingNavigationTab.page);
        }
        return false;
    }

    public int hashCode() {
        return (getId() * 31) + this.page.hashCode();
    }

    public String toString() {
        return "StakingNavigationTab(id=" + getId() + ", page=" + this.page + ')';
    }

    @Override // com.iMe.model.common.NavigationTab
    public int getId() {
        return this.f358id;
    }

    public final TabbedFragmentPage<MvpFragment> getPage() {
        return this.page;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingNavigationTab(int i, TabbedFragmentPage<MvpFragment> page) {
        super(i, page.getFragment());
        Intrinsics.checkNotNullParameter(page, "page");
        this.f358id = i;
        this.page = page;
    }
}
