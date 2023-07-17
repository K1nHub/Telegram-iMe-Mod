package com.iMe.p031ui.wallet.home.tabs.crypto;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$setupListeners$1$3 */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoFragment$setupListeners$1$3 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletHomeCryptoFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoFragment$setupListeners$1$3(WalletHomeCryptoFragment walletHomeCryptoFragment) {
        super(0);
        this.this$0 = walletHomeCryptoFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletHomeCryptoPresenter presenter;
        presenter = this.this$0.getPresenter();
        WalletHomeCryptoPresenter.loadScreenInfo$default(presenter, true, false, 0L, 6, null);
    }
}
