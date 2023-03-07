package com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletHomeCryptoPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoPresenter$resolveActions$1 */
/* loaded from: classes3.dex */
final class WalletHomeCryptoPresenter$resolveActions$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoPresenter$resolveActions$1(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(0);
        this.this$0 = walletHomeCryptoPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((WalletHomeCryptoView) this.this$0.getViewState()).openSendScreen();
    }
}
