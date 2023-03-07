package com.smedialink.p031ui.catalog.tabs;

import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentCatalogTabsBinding;
/* compiled from: CatalogFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.CatalogFragment$binding$2 */
/* loaded from: classes3.dex */
final class CatalogFragment$binding$2 extends Lambda implements Function0<ForkFragmentCatalogTabsBinding> {
    final /* synthetic */ CatalogFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogFragment$binding$2(CatalogFragment catalogFragment) {
        super(0);
        this.this$0 = catalogFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentCatalogTabsBinding invoke() {
        return ForkFragmentCatalogTabsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
