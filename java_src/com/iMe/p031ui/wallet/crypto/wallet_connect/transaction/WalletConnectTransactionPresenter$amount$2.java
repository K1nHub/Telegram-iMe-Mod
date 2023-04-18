package com.iMe.p031ui.wallet.crypto.wallet_connect.transaction;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType;
import com.iMe.storage.domain.utils.crypto.Convert;
import java.math.BigDecimal;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectTransactionPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter$amount$2 */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionPresenter$amount$2 extends Lambda implements Function0<BigDecimal> {
    final /* synthetic */ WalletConnectTransactionPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectTransactionPresenter$amount$2(WalletConnectTransactionPresenter walletConnectTransactionPresenter) {
        super(0);
        this.this$0 = walletConnectTransactionPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final BigDecimal invoke() {
        WalletConnectTransactionScreenType walletConnectTransactionScreenType;
        walletConnectTransactionScreenType = this.this$0.screenType;
        return Convert.fromWei(walletConnectTransactionScreenType.getTransaction().getValue(), Convert.Unit.ETHER);
    }
}
