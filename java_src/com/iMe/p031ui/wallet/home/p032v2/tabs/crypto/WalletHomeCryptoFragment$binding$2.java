package com.iMe.p031ui.wallet.home.p032v2.tabs.crypto;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletHomeCryptoBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$binding$2 */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletHomeCryptoBinding> {
    final /* synthetic */ WalletHomeCryptoFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoFragment$binding$2(WalletHomeCryptoFragment walletHomeCryptoFragment) {
        super(0);
        this.this$0 = walletHomeCryptoFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletHomeCryptoBinding invoke() {
        return ForkFragmentWalletHomeCryptoBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
