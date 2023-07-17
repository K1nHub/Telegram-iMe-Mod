package com.iMe.p031ui.wallet.home;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletHomeBinding;
/* compiled from: WalletHomeFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.WalletHomeFragment$binding$2 */
/* loaded from: classes4.dex */
final class WalletHomeFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletHomeBinding> {
    final /* synthetic */ WalletHomeFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeFragment$binding$2(WalletHomeFragment walletHomeFragment) {
        super(0);
        this.this$0 = walletHomeFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletHomeBinding invoke() {
        return ForkFragmentWalletHomeBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
