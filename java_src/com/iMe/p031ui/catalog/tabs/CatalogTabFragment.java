package com.iMe.p031ui.catalog.tabs;

import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.wallet.common.BottomNavigationDelegate;
/* compiled from: CatalogTabFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.CatalogTabFragment */
/* loaded from: classes3.dex */
public abstract class CatalogTabFragment extends MvpFragment {
    private BottomNavigationDelegate bottomNavigationDelegate;
    private boolean isCreated;

    public abstract void handleBottomPadding(int i);

    public abstract void onSelectedLanguageChanged();

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public final void setBottomNavigationDelegate(BottomNavigationDelegate bottomNavigationDelegate) {
        this.bottomNavigationDelegate = bottomNavigationDelegate;
    }

    public final boolean isCreated() {
        return this.isCreated;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onViewCreated() {
        super.onViewCreated();
        this.isCreated = true;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        BottomNavigationDelegate bottomNavigationDelegate = this.bottomNavigationDelegate;
        if (bottomNavigationDelegate != null) {
            bottomNavigationDelegate.getBottomNavigationPadding(new CatalogTabFragment$onResume$1(this));
        }
    }
}
