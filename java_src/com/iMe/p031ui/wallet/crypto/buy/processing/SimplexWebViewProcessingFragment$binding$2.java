package com.iMe.p031ui.wallet.crypto.buy.processing;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkWebScreenBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SimplexWebViewProcessingFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment$binding$2 */
/* loaded from: classes3.dex */
public final class SimplexWebViewProcessingFragment$binding$2 extends Lambda implements Function0<ForkWebScreenBinding> {
    final /* synthetic */ SimplexWebViewProcessingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimplexWebViewProcessingFragment$binding$2(SimplexWebViewProcessingFragment simplexWebViewProcessingFragment) {
        super(0);
        this.this$0 = simplexWebViewProcessingFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkWebScreenBinding invoke() {
        return ForkWebScreenBinding.inflate(LayoutInflater.from(this.this$0.getParentActivity()));
    }
}
