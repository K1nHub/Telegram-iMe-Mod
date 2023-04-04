package com.iMe.p032ui.wallet.swap;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletSwapProtocolsBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProtocolsFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsFragment$binding$2 */
/* loaded from: classes4.dex */
public final class WalletSwapProtocolsFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletSwapProtocolsBinding> {
    final /* synthetic */ WalletSwapProtocolsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProtocolsFragment$binding$2(WalletSwapProtocolsFragment walletSwapProtocolsFragment) {
        super(0);
        this.this$0 = walletSwapProtocolsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletSwapProtocolsBinding invoke() {
        return ForkFragmentWalletSwapProtocolsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
