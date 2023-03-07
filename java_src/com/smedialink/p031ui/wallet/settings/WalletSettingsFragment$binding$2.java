package com.smedialink.p031ui.wallet.settings;

import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletSettingsBinding;
/* compiled from: WalletSettingsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsFragment$binding$2 */
/* loaded from: classes3.dex */
final class WalletSettingsFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletSettingsBinding> {
    final /* synthetic */ WalletSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSettingsFragment$binding$2(WalletSettingsFragment walletSettingsFragment) {
        super(0);
        this.this$0 = walletSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletSettingsBinding invoke() {
        return ForkFragmentWalletSettingsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
