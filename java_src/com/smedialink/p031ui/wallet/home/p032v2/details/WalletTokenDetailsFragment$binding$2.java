package com.smedialink.p031ui.wallet.home.p032v2.details;

import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletTokenDetailsBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$binding$2 */
/* loaded from: classes3.dex */
public final class WalletTokenDetailsFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletTokenDetailsBinding> {
    final /* synthetic */ WalletTokenDetailsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsFragment$binding$2(WalletTokenDetailsFragment walletTokenDetailsFragment) {
        super(0);
        this.this$0 = walletTokenDetailsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletTokenDetailsBinding invoke() {
        return ForkFragmentWalletTokenDetailsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
