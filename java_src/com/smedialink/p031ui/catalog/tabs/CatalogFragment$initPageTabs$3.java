package com.smedialink.p031ui.catalog.tabs;

import android.view.View;
import com.smedialink.navigation.common.router.base.BaseNavigationRouter;
import com.smedialink.navigation.common.router.base.NavigationRouter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3286R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.CatalogFragment$initPageTabs$3 */
/* loaded from: classes3.dex */
public final class CatalogFragment$initPageTabs$3 extends Lambda implements Function0<View> {
    final /* synthetic */ CatalogFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogFragment$initPageTabs$3(CatalogFragment catalogFragment) {
        super(0);
        this.this$0 = catalogFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        NavigationRouter navigationRouter;
        navigationRouter = this.this$0.getNavigationRouter();
        Intrinsics.checkNotNull(navigationRouter, "null cannot be cast to non-null type com.smedialink.navigation.common.router.base.BaseNavigationRouter<com.smedialink.ui.catalog.tabs.CatalogTabFragment>");
        return ((BaseNavigationRouter) navigationRouter).getViewByFragmentId(C3286R.C3289id.catalog_user_channels);
    }
}
