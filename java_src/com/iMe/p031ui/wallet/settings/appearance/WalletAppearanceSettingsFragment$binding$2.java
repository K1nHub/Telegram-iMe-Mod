package com.iMe.p031ui.wallet.settings.appearance;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletInterfaceSettingsBinding;
/* compiled from: WalletAppearanceSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$binding$2 */
/* loaded from: classes4.dex */
final class WalletAppearanceSettingsFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletInterfaceSettingsBinding> {
    final /* synthetic */ WalletAppearanceSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAppearanceSettingsFragment$binding$2(WalletAppearanceSettingsFragment walletAppearanceSettingsFragment) {
        super(0);
        this.this$0 = walletAppearanceSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletInterfaceSettingsBinding invoke() {
        return ForkFragmentWalletInterfaceSettingsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
