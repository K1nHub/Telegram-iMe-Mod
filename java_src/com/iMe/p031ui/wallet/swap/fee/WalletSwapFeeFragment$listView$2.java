package com.iMe.p031ui.wallet.swap.fee;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapFeeFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$listView$2 */
/* loaded from: classes4.dex */
public final class WalletSwapFeeFragment$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ WalletSwapFeeFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapFeeFragment$listView$2(WalletSwapFeeFragment walletSwapFeeFragment) {
        super(0);
        this.this$0 = walletSwapFeeFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView createListView;
        createListView = this.this$0.createListView();
        return createListView;
    }
}
