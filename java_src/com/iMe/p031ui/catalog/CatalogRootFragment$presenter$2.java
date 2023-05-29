package com.iMe.p031ui.catalog;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p043mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogRootFragment.kt */
/* renamed from: com.iMe.ui.catalog.CatalogRootFragment$presenter$2 */
/* loaded from: classes.dex */
public final class CatalogRootFragment$presenter$2 extends Lambda implements Function0<CatalogRootPresenter> {
    final /* synthetic */ CatalogRootFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRootFragment$presenter$2(CatalogRootFragment catalogRootFragment) {
        super(0);
        this.this$0 = catalogRootFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CatalogRootPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new CatalogRootFragment$presenter$2$invoke$$inlined$inject$default$1(this.this$0, null, null));
        return (CatalogRootPresenter) lazy.getValue();
    }
}
