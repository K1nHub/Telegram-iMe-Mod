package com.iMe.p032ui.wallet.swap.process;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletSwapProcessBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSwapProcessFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$binding$2 */
/* loaded from: classes4.dex */
public final class WalletSwapProcessFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletSwapProcessBinding> {
    final /* synthetic */ WalletSwapProcessFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessFragment$binding$2(WalletSwapProcessFragment walletSwapProcessFragment) {
        super(0);
        this.this$0 = walletSwapProcessFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletSwapProcessBinding invoke() {
        return ForkFragmentWalletSwapProcessBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
