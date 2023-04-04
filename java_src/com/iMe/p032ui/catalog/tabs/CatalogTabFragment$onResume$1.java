package com.iMe.p032ui.catalog.tabs;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: CatalogTabFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.CatalogTabFragment$onResume$1 */
/* loaded from: classes3.dex */
final class CatalogTabFragment$onResume$1 extends Lambda implements Function1<Integer, Unit> {
    final /* synthetic */ CatalogTabFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogTabFragment$onResume$1(CatalogTabFragment catalogTabFragment) {
        super(1);
        this.this$0 = catalogTabFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
        invoke(num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(int i) {
        this.this$0.handleBottomPadding(i);
    }
}
