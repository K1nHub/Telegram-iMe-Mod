package com.iMe.p031ui.wallet.common;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletGlobalBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletRootFragment.kt */
/* renamed from: com.iMe.ui.wallet.common.WalletRootFragment$binding$2 */
/* loaded from: classes3.dex */
public final class WalletRootFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletGlobalBinding> {
    final /* synthetic */ WalletRootFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRootFragment$binding$2(WalletRootFragment walletRootFragment) {
        super(0);
        this.this$0 = walletRootFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletGlobalBinding invoke() {
        return ForkFragmentWalletGlobalBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
