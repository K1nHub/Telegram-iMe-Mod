package com.iMe.p030ui.catalog.tabs;

import com.iMe.p030ui.base.mvp.base.BasePresenter;
import moxy.InjectViewState;
/* compiled from: CatalogPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.catalog.tabs.CatalogPresenter */
/* loaded from: classes3.dex */
public final class CatalogPresenter extends BasePresenter<CatalogView> {
    public final void setupNavigationRouter() {
        ((CatalogView) getViewState()).onSetupNavigationRouter();
    }

    public final void selectTab(int i) {
        ((CatalogView) getViewState()).onTabSelected(i);
    }
}
