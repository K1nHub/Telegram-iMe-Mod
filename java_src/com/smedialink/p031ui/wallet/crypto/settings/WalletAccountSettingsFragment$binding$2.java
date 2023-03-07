package com.smedialink.p031ui.wallet.crypto.settings;

import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletEthSettingsBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletAccountSettingsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsFragment$binding$2 */
/* loaded from: classes3.dex */
public final class WalletAccountSettingsFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletEthSettingsBinding> {
    final /* synthetic */ WalletAccountSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAccountSettingsFragment$binding$2(WalletAccountSettingsFragment walletAccountSettingsFragment) {
        super(0);
        this.this$0 = walletAccountSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletEthSettingsBinding invoke() {
        return ForkFragmentWalletEthSettingsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
