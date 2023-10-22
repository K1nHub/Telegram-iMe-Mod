package com.iMe.p030ui.catalog.tabs;

import com.iMe.p030ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: CatalogView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.catalog.tabs.CatalogView */
/* loaded from: classes3.dex */
public interface CatalogView extends BaseView {
    void onSetupNavigationRouter();

    void onTabSelected(int i);
}
