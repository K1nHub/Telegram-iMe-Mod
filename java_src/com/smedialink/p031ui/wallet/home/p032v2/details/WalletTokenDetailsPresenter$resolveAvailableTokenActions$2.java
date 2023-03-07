package com.smedialink.p031ui.wallet.home.p032v2.details;

import com.smedialink.model.wallet.details.TokenDetailsArgs;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$resolveAvailableTokenActions$2 */
/* loaded from: classes3.dex */
public final class WalletTokenDetailsPresenter$resolveAvailableTokenActions$2 extends Lambda implements Function0<Unit> {
    final /* synthetic */ TokenDetailsArgs $args;
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsPresenter$resolveAvailableTokenActions$2(WalletTokenDetailsPresenter walletTokenDetailsPresenter, TokenDetailsArgs tokenDetailsArgs) {
        super(0);
        this.this$0 = walletTokenDetailsPresenter;
        this.$args = tokenDetailsArgs;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.startBinanceReplenishScreen(((TokenDetailsArgs.Binance) this.$args).getToken());
    }
}
