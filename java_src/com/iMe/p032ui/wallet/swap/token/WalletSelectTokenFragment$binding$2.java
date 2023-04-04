package com.iMe.p032ui.wallet.swap.token;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletSelectTokenBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$binding$2 */
/* loaded from: classes4.dex */
public final class WalletSelectTokenFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletSelectTokenBinding> {
    final /* synthetic */ WalletSelectTokenFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenFragment$binding$2(WalletSelectTokenFragment walletSelectTokenFragment) {
        super(0);
        this.this$0 = walletSelectTokenFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletSelectTokenBinding invoke() {
        return ForkFragmentWalletSelectTokenBinding.inflate(LayoutInflater.from(this.this$0.getParentActivity()));
    }
}
