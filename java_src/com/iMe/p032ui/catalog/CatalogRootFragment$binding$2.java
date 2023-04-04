package com.iMe.p032ui.catalog;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentCatalogGlobalBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogRootFragment.kt */
/* renamed from: com.iMe.ui.catalog.CatalogRootFragment$binding$2 */
/* loaded from: classes3.dex */
public final class CatalogRootFragment$binding$2 extends Lambda implements Function0<ForkFragmentCatalogGlobalBinding> {
    final /* synthetic */ CatalogRootFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRootFragment$binding$2(CatalogRootFragment catalogRootFragment) {
        super(0);
        this.this$0 = catalogRootFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentCatalogGlobalBinding invoke() {
        return ForkFragmentCatalogGlobalBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
