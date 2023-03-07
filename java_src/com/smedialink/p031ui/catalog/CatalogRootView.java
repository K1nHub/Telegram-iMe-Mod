package com.smedialink.p031ui.catalog;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.messenger.LocaleController;
/* compiled from: CatalogRootView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.catalog.CatalogRootView */
/* loaded from: classes3.dex */
public interface CatalogRootView extends BaseView {
    void onSelectedLanguageChanged();

    void onTabSelected(int i);

    @OneExecution
    void openSelectLanguageScreen(int i, List<? extends LocaleController.LocaleInfo> list);
}
