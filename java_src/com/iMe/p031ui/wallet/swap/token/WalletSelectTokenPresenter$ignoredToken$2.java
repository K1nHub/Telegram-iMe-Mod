package com.iMe.p031ui.wallet.swap.token;

import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenPresenter.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$ignoredToken$2 */
/* loaded from: classes4.dex */
public final class WalletSelectTokenPresenter$ignoredToken$2 extends Lambda implements Function0<TokenDetailed> {
    final /* synthetic */ WalletSelectTokenPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenPresenter$ignoredToken$2(WalletSelectTokenPresenter walletSelectTokenPresenter) {
        super(0);
        this.this$0 = walletSelectTokenPresenter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TokenDetailed invoke() {
        WalletSelectTokenFragment.ScreenType screenType;
        screenType = this.this$0.screenType;
        WalletSelectTokenFragment.ScreenType.Swap swap = screenType instanceof WalletSelectTokenFragment.ScreenType.Swap ? (WalletSelectTokenFragment.ScreenType.Swap) screenType : null;
        if (swap != null) {
            return swap.getIgnoredToken();
        }
        return null;
    }
}
