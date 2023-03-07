package com.smedialink.p031ui.wallet.home.p032v2.details;

import com.smedialink.model.wallet.details.TokenDetailsArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$tokenCode$2 */
/* loaded from: classes3.dex */
public final class WalletTokenDetailsPresenter$tokenCode$2 extends Lambda implements Function0<TokenCode> {
    final /* synthetic */ WalletTokenDetailsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsPresenter$tokenCode$2(WalletTokenDetailsPresenter walletTokenDetailsPresenter) {
        super(0);
        this.this$0 = walletTokenDetailsPresenter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TokenCode invoke() {
        TokenDetailsArgs tokenDetailsArgs;
        TokenCode resolveTokenCode;
        WalletTokenDetailsPresenter walletTokenDetailsPresenter = this.this$0;
        tokenDetailsArgs = walletTokenDetailsPresenter.args;
        resolveTokenCode = walletTokenDetailsPresenter.resolveTokenCode(tokenDetailsArgs);
        return resolveTokenCode;
    }
}
