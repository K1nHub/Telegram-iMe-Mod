package com.smedialink.p031ui.wallet.swap.fee;

import android.app.Activity;
import com.smedialink.p031ui.wallet.swap.fee.WalletSwapFeeFragment;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletSwapFeeFragment.kt */
/* renamed from: com.smedialink.ui.wallet.swap.fee.WalletSwapFeeFragment$listAdapter$2 */
/* loaded from: classes3.dex */
final class WalletSwapFeeFragment$listAdapter$2 extends Lambda implements Function0<WalletSwapFeeFragment.ListAdapter> {
    final /* synthetic */ WalletSwapFeeFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapFeeFragment$listAdapter$2(WalletSwapFeeFragment walletSwapFeeFragment) {
        super(0);
        this.this$0 = walletSwapFeeFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletSwapFeeFragment.ListAdapter invoke() {
        WalletSwapFeeFragment walletSwapFeeFragment = this.this$0;
        Activity parentActivity = walletSwapFeeFragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return new WalletSwapFeeFragment.ListAdapter(walletSwapFeeFragment, parentActivity);
    }
}
