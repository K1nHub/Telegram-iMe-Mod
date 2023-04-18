package com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.history;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletBinancePayHistoryFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryFragment$setupListeners$1$1 */
/* loaded from: classes3.dex */
public final class WalletBinancePayHistoryFragment$setupListeners$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletBinancePayHistoryFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletBinancePayHistoryFragment$setupListeners$1$1(WalletBinancePayHistoryFragment walletBinancePayHistoryFragment) {
        super(0);
        this.this$0 = walletBinancePayHistoryFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletBinancePayHistoryPresenter presenter;
        presenter = this.this$0.getPresenter();
        WalletBinancePayHistoryPresenter.loadTransactions$default(presenter, false, null, 2, null);
    }
}
