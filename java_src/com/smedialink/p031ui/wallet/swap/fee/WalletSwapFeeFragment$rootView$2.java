package com.smedialink.p031ui.wallet.swap.fee;

import android.widget.FrameLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapFeeFragment.kt */
/* renamed from: com.smedialink.ui.wallet.swap.fee.WalletSwapFeeFragment$rootView$2 */
/* loaded from: classes3.dex */
public final class WalletSwapFeeFragment$rootView$2 extends Lambda implements Function0<FrameLayout> {
    final /* synthetic */ WalletSwapFeeFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapFeeFragment$rootView$2(WalletSwapFeeFragment walletSwapFeeFragment) {
        super(0);
        this.this$0 = walletSwapFeeFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final FrameLayout invoke() {
        FrameLayout createRootView;
        createRootView = this.this$0.createRootView();
        return createRootView;
    }
}
