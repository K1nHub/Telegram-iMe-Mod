package com.iMe.p031ui.wallet.swap.token;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$setupListeners$1 */
/* loaded from: classes4.dex */
public final class WalletSelectTokenFragment$setupListeners$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ WalletSelectTokenFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenFragment$setupListeners$1(WalletSelectTokenFragment walletSelectTokenFragment) {
        super(0);
        this.this$0 = walletSelectTokenFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletSelectTokenPresenter presenter;
        presenter = this.this$0.getPresenter();
        presenter.reloadSearchResults();
    }
}
