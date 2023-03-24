package com.smedialink.p031ui.wallet.crypto.buy.processing;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SimplexWebViewProcessingFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class SimplexWebViewProcessingFragment$presenter$2 extends Lambda implements Function0<SimplexWebViewProcessingPresenter> {
    final /* synthetic */ SimplexWebViewProcessingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimplexWebViewProcessingFragment$presenter$2(SimplexWebViewProcessingFragment simplexWebViewProcessingFragment) {
        super(0);
        this.this$0 = simplexWebViewProcessingFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SimplexWebViewProcessingPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2051xd821ec28(this.this$0, null, null));
        return (SimplexWebViewProcessingPresenter) lazy.getValue();
    }
}
