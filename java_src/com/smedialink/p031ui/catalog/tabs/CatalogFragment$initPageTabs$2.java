package com.smedialink.p031ui.catalog.tabs;

import android.view.View;
import com.smedialink.navigation.common.router.base.BaseNavigationRouter;
import com.smedialink.navigation.common.router.base.NavigationRouter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3158R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.CatalogFragment$initPageTabs$2 */
/* loaded from: classes3.dex */
public final class CatalogFragment$initPageTabs$2 extends Lambda implements Function0<View> {
    final /* synthetic */ CatalogFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogFragment$initPageTabs$2(CatalogFragment catalogFragment) {
        super(0);
        this.this$0 = catalogFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        NavigationRouter navigationRouter;
        navigationRouter = this.this$0.getNavigationRouter();
        return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(C3158R.C3161id.catalog_categories);
    }
}
