package com.iMe.p032ui.wallet.swap.process;

import com.iMe.p032ui.custom.NetworkTypeView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProcessFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$networkTypeView$2 */
/* loaded from: classes4.dex */
public final class WalletSwapProcessFragment$networkTypeView$2 extends Lambda implements Function0<NetworkTypeView> {
    final /* synthetic */ WalletSwapProcessFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessFragment$networkTypeView$2(WalletSwapProcessFragment walletSwapProcessFragment) {
        super(0);
        this.this$0 = walletSwapProcessFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final NetworkTypeView invoke() {
        NetworkTypeView initGlobalNetworkView;
        initGlobalNetworkView = this.this$0.initGlobalNetworkView();
        return initGlobalNetworkView;
    }
}
