package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$setupListeners$1$1$1 */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoTokensSettingsFragment$setupListeners$1$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoTokensSettingsFragment$setupListeners$1$1$1(WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment) {
        super(0);
        this.this$0 = walletHomeCryptoTokensSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletHomeCryptoTokensSettingsPresenter.reloadSearchResults$default(this.this$0.getPresenter(), false, 1, null);
    }
}
