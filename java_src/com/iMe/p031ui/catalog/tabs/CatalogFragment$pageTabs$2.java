package com.iMe.p031ui.catalog.tabs;

import com.iMe.model.catalog.CatalogNavigationTab;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.CatalogFragment$pageTabs$2 */
/* loaded from: classes3.dex */
public final class CatalogFragment$pageTabs$2 extends Lambda implements Function0<List<? extends CatalogNavigationTab>> {
    final /* synthetic */ CatalogFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogFragment$pageTabs$2(CatalogFragment catalogFragment) {
        super(0);
        this.this$0 = catalogFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends CatalogNavigationTab> invoke() {
        List<? extends CatalogNavigationTab> initPageTabs;
        initPageTabs = this.this$0.initPageTabs();
        return initPageTabs;
    }
}
