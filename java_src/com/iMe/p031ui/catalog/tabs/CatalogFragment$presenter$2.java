package com.iMe.p031ui.catalog.tabs;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: CatalogFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.CatalogFragment$presenter$2 */
/* loaded from: classes3.dex */
final class CatalogFragment$presenter$2 extends Lambda implements Function0<CatalogPresenter> {
    final /* synthetic */ CatalogFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogFragment$presenter$2(CatalogFragment catalogFragment) {
        super(0);
        this.this$0 = catalogFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CatalogPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new CatalogFragment$presenter$2$invoke$$inlined$inject$default$1(this.this$0, null, null));
        return (CatalogPresenter) lazy.getValue();
    }
}
