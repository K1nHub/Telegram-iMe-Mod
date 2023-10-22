package com.iMe.p030ui.wallet.home.tabs.crypto.settings;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$setupListeners$1$1$2 */
/* loaded from: classes4.dex */
public /* synthetic */ class WalletHomeCryptoTokensSettingsFragment$setupListeners$1$1$2 extends FunctionReferenceImpl implements Function0<Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public WalletHomeCryptoTokensSettingsFragment$setupListeners$1$1$2(Object obj) {
        super(0, obj, WalletHomeCryptoTokensSettingsFragment.class, "openAddTokenScreen", "openAddTokenScreen()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((WalletHomeCryptoTokensSettingsFragment) this.receiver).openAddTokenScreen();
    }
}
