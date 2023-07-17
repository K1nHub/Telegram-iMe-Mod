package com.iMe.p031ui.wallet.settings;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: WalletSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.settings.WalletSettingsFragment$presenter$2 */
/* loaded from: classes4.dex */
final class WalletSettingsFragment$presenter$2 extends Lambda implements Function0<WalletSettingsPresenter> {
    final /* synthetic */ WalletSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSettingsFragment$presenter$2(WalletSettingsFragment walletSettingsFragment) {
        super(0);
        this.this$0 = walletSettingsFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletSettingsPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2373xd32e4252(this.this$0, null, null));
        return (WalletSettingsPresenter) lazy.getValue();
    }
}
