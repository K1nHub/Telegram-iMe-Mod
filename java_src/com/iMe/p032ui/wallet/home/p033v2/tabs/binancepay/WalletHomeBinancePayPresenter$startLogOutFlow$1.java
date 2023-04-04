package com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeBinancePayPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayPresenter$startLogOutFlow$1 */
/* loaded from: classes3.dex */
public final class WalletHomeBinancePayPresenter$startLogOutFlow$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletHomeBinancePayPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeBinancePayPresenter$startLogOutFlow$1(WalletHomeBinancePayPresenter walletHomeBinancePayPresenter) {
        super(0);
        this.this$0 = walletHomeBinancePayPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.logout();
    }
}
