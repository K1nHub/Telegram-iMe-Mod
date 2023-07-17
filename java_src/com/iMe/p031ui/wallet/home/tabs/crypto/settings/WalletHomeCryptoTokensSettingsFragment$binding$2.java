package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletHomeCryptoTokensBinding;
/* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$binding$2 */
/* loaded from: classes4.dex */
final class WalletHomeCryptoTokensSettingsFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletHomeCryptoTokensBinding> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoTokensSettingsFragment$binding$2(WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment) {
        super(0);
        this.this$0 = walletHomeCryptoTokensSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletHomeCryptoTokensBinding invoke() {
        return ForkFragmentWalletHomeCryptoTokensBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
