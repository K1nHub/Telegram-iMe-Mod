package com.iMe.p031ui.wallet.home.tabs.crypto;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletHomeCryptoPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$resolveActions$3 */
/* loaded from: classes4.dex */
final class WalletHomeCryptoPresenter$resolveActions$3 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletHomeCryptoPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoPresenter$resolveActions$3(WalletHomeCryptoPresenter walletHomeCryptoPresenter) {
        super(0);
        this.this$0 = walletHomeCryptoPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((WalletHomeCryptoView) this.this$0.getViewState()).openHistoryScreen();
    }
}
