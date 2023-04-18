package com.iMe.p031ui.catalog.tabs;

import android.view.View;
import com.iMe.navigation.common.router.base.BaseNavigationRouter;
import com.iMe.navigation.common.router.base.NavigationRouter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3242R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.CatalogFragment$initPageTabs$2 */
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
        Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.iMe.navigation.common.router.base.BaseNavigationRouter<com.iMe.ui.catalog.tabs.CatalogTabFragment>");
        return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(C3242R.C3245id.catalog_categories);
    }
}
