package com.iMe.p031ui.wallet.home.tabs.binancepay.receive;

import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletReceiveBinancePayPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter$startSelectTokenFlow$1 */
/* loaded from: classes4.dex */
public final class WalletReceiveBinancePayPresenter$startSelectTokenFlow$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Callbacks$Callback1<TokenDetailed> $action;
    final /* synthetic */ WalletReceiveBinancePayPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletReceiveBinancePayPresenter$startSelectTokenFlow$1(WalletReceiveBinancePayPresenter walletReceiveBinancePayPresenter, Callbacks$Callback1<TokenDetailed> callbacks$Callback1) {
        super(0);
        this.this$0 = walletReceiveBinancePayPresenter;
        this.$action = callbacks$Callback1;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.processShowSelectTokenDialog(this.$action);
    }
}
