package com.smedialink.p031ui.catalog.tabs;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: CatalogView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.catalog.tabs.CatalogView */
/* loaded from: classes3.dex */
public interface CatalogView extends BaseView {
    void onSetupNavigationRouter();

    void onTabSelected(int i);
}
