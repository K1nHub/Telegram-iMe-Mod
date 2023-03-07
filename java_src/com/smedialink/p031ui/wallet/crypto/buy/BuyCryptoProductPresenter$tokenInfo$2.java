package com.smedialink.p031ui.wallet.crypto.buy;

import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BuyCryptoProductPresenter.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductPresenter$tokenInfo$2 */
/* loaded from: classes3.dex */
public final class BuyCryptoProductPresenter$tokenInfo$2 extends Lambda implements Function0<TokenInfo> {
    final /* synthetic */ BuyCryptoProductPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuyCryptoProductPresenter$tokenInfo$2(BuyCryptoProductPresenter buyCryptoProductPresenter) {
        super(0);
        this.this$0 = buyCryptoProductPresenter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TokenInfo invoke() {
        TokenCode tokenCode;
        TokenInfo.Companion companion = TokenInfo.Companion;
        tokenCode = this.this$0.getTokenCode();
        return companion.map(tokenCode);
    }
}
