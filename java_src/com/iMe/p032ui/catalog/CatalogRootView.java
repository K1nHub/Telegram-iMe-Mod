package com.iMe.p032ui.catalog;

import com.iMe.p032ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.messenger.LocaleController;
/* compiled from: CatalogRootView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.catalog.CatalogRootView */
/* loaded from: classes3.dex */
public interface CatalogRootView extends BaseView {
    void onSelectedLanguageChanged();

    void onTabSelected(int i);

    @OneExecution
    void openSelectLanguageScreen(int i, List<? extends LocaleController.LocaleInfo> list);
}
