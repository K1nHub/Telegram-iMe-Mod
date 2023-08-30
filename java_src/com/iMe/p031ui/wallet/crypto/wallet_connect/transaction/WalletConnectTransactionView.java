package com.iMe.p031ui.wallet.crypto.wallet_connect.transaction;

import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletConnectTransactionView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView */
/* loaded from: classes4.dex */
public interface WalletConnectTransactionView extends BaseView {
    @OneExecution
    void onTransactionSuccess();

    void setupScreenWithData(String str, String str2, String str3, String str4, String str5);

    void showFee(FeeType feeType);
}
