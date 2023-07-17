package com.iMe.p031ui.catalog.tabs.categories;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentCatalogCategoriesBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogCategoriesFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$binding$2 */
/* loaded from: classes3.dex */
public final class CatalogCategoriesFragment$binding$2 extends Lambda implements Function0<ForkFragmentCatalogCategoriesBinding> {
    final /* synthetic */ CatalogCategoriesFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogCategoriesFragment$binding$2(CatalogCategoriesFragment catalogCategoriesFragment) {
        super(0);
        this.this$0 = catalogCategoriesFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentCatalogCategoriesBinding invoke() {
        return ForkFragmentCatalogCategoriesBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
