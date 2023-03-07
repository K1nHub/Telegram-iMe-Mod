package com.smedialink.p031ui.catalog;

import com.smedialink.model.common.NavigationTab;
import com.smedialink.p031ui.catalog.tabs.CatalogFragment;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogRootFragment.kt */
/* renamed from: com.smedialink.ui.catalog.CatalogRootFragment$tabs$2 */
/* loaded from: classes3.dex */
public final class CatalogRootFragment$tabs$2 extends Lambda implements Function0<List<NavigationTab<CatalogFragment>>> {
    final /* synthetic */ CatalogRootFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRootFragment$tabs$2(CatalogRootFragment catalogRootFragment) {
        super(0);
        this.this$0 = catalogRootFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<NavigationTab<CatalogFragment>> invoke() {
        List<NavigationTab<CatalogFragment>> initTabs;
        initTabs = this.this$0.initTabs();
        return initTabs;
    }
}
