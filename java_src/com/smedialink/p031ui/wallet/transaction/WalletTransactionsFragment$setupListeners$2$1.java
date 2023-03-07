package com.smedialink.p031ui.wallet.transaction;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTransactionsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsFragment$setupListeners$2$1 */
/* loaded from: classes3.dex */
public final class WalletTransactionsFragment$setupListeners$2$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletTransactionsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionsFragment$setupListeners$2$1(WalletTransactionsFragment walletTransactionsFragment) {
        super(0);
        this.this$0 = walletTransactionsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletTransactionsPresenter presenter;
        presenter = this.this$0.getPresenter();
        WalletTransactionsPresenter.load$default(presenter, false, false, null, 7, null);
    }
}
