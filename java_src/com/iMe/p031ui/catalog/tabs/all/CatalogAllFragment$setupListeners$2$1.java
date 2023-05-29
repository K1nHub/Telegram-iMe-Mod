package com.iMe.p031ui.catalog.tabs.all;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogAllFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllFragment$setupListeners$2$1 */
/* loaded from: classes.dex */
public final class CatalogAllFragment$setupListeners$2$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CatalogAllFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogAllFragment$setupListeners$2$1(CatalogAllFragment catalogAllFragment) {
        super(0);
        this.this$0 = catalogAllFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        CatalogAllPresenter presenter;
        presenter = this.this$0.getPresenter();
        presenter.loadCategoriesPreviews();
    }
}
