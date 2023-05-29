package com.iMe.p031ui.wallet.settings.appearance;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p043mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletAppearanceSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletAppearanceSettingsFragment$presenter$2 extends Lambda implements Function0<WalletAppearanceSettingsPresenter> {
    final /* synthetic */ WalletAppearanceSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAppearanceSettingsFragment$presenter$2(WalletAppearanceSettingsFragment walletAppearanceSettingsFragment) {
        super(0);
        this.this$0 = walletAppearanceSettingsFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletAppearanceSettingsPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2330x379ffb8e(this.this$0, null, null));
        return (WalletAppearanceSettingsPresenter) lazy.getValue();
    }
}
