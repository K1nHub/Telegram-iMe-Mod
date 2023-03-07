package com.smedialink.p031ui.catalog.tabs.all;

import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentCatalogAllBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogAllFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllFragment$binding$2 */
/* loaded from: classes3.dex */
public final class CatalogAllFragment$binding$2 extends Lambda implements Function0<ForkFragmentCatalogAllBinding> {
    final /* synthetic */ CatalogAllFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogAllFragment$binding$2(CatalogAllFragment catalogAllFragment) {
        super(0);
        this.this$0 = catalogAllFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentCatalogAllBinding invoke() {
        return ForkFragmentCatalogAllBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
