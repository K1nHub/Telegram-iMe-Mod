package com.iMe.p031ui.catalog.tabs;

import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: CatalogView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.catalog.tabs.CatalogView */
/* loaded from: classes4.dex */
public interface CatalogView extends BaseView {
    void onSetupNavigationRouter();

    void onTabSelected(int i);
}
