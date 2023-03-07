package com.smedialink.p031ui.wallet.crypto.settings;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletAccountSettingsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class WalletAccountSettingsFragment$presenter$2 extends Lambda implements Function0<WalletAccountSettingsPresenter> {
    final /* synthetic */ WalletAccountSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAccountSettingsFragment$presenter$2(WalletAccountSettingsFragment walletAccountSettingsFragment) {
        super(0);
        this.this$0 = walletAccountSettingsFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletAccountSettingsPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C1961x9695a877(this.this$0, null, null));
        return (WalletAccountSettingsPresenter) lazy.getValue();
    }
}
