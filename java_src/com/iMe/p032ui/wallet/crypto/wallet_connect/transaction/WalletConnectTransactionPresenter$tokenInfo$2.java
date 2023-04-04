package com.iMe.p032ui.wallet.crypto.wallet_connect.transaction;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectTransactionPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter$tokenInfo$2 */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionPresenter$tokenInfo$2 extends Lambda implements Function0<TokenInfo> {
    final /* synthetic */ WalletConnectTransactionPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectTransactionPresenter$tokenInfo$2(WalletConnectTransactionPresenter walletConnectTransactionPresenter) {
        super(0);
        this.this$0 = walletConnectTransactionPresenter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TokenInfo invoke() {
        WalletConnectTransactionScreenType walletConnectTransactionScreenType;
        TokenInfo.Companion companion = TokenInfo.Companion;
        walletConnectTransactionScreenType = this.this$0.screenType;
        return companion.map(walletConnectTransactionScreenType.getTransaction().getFeeTokenCode());
    }
}
