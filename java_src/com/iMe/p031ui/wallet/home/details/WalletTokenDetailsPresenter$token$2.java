package com.iMe.p031ui.wallet.home.details;

import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$token$2 */
/* loaded from: classes4.dex */
public final class WalletTokenDetailsPresenter$token$2 extends Lambda implements Function0<TokenDetailed> {
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsPresenter$token$2(WalletTokenDetailsPresenter walletTokenDetailsPresenter) {
        super(0);
        this.this$0 = walletTokenDetailsPresenter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TokenDetailed invoke() {
        TokenDetailsArgs tokenDetailsArgs;
        TokenDetailed resolveToken;
        WalletTokenDetailsPresenter walletTokenDetailsPresenter = this.this$0;
        tokenDetailsArgs = walletTokenDetailsPresenter.args;
        resolveToken = walletTokenDetailsPresenter.resolveToken(tokenDetailsArgs);
        return resolveToken;
    }
}
