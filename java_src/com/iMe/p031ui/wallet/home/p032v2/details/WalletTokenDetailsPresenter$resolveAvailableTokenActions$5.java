package com.iMe.p031ui.wallet.home.p032v2.details;

import com.iMe.model.wallet.details.TokenDetailsArgs;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$resolveAvailableTokenActions$5 */
/* loaded from: classes4.dex */
public final class WalletTokenDetailsPresenter$resolveAvailableTokenActions$5 extends Lambda implements Function0<Unit> {
    final /* synthetic */ TokenDetailsArgs $args;
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsPresenter$resolveAvailableTokenActions$5(WalletTokenDetailsPresenter walletTokenDetailsPresenter, TokenDetailsArgs tokenDetailsArgs) {
        super(0);
        this.this$0 = walletTokenDetailsPresenter;
        this.$args = tokenDetailsArgs;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.startBuyScreen(((TokenDetailsArgs.Crypto) this.$args).getToken().getBalance().getNetworkType());
    }
}
