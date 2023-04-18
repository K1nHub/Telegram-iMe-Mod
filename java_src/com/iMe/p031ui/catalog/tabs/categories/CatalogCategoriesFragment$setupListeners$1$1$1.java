package com.iMe.p031ui.catalog.tabs.categories;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogCategoriesFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesFragment$setupListeners$1$1$1 */
/* loaded from: classes3.dex */
public final class CatalogCategoriesFragment$setupListeners$1$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CatalogCategoriesFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogCategoriesFragment$setupListeners$1$1$1(CatalogCategoriesFragment catalogCategoriesFragment) {
        super(0);
        this.this$0 = catalogCategoriesFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        CatalogCategoriesPresenter presenter;
        presenter = this.this$0.getPresenter();
        CatalogCategoriesPresenter.reloadAll$default(presenter, false, 1, null);
    }
}
