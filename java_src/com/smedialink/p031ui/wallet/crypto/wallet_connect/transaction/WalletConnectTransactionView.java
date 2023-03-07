package com.smedialink.p031ui.wallet.crypto.wallet_connect.transaction;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.custom.FeeView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletConnectTransactionView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView */
/* loaded from: classes3.dex */
public interface WalletConnectTransactionView extends BaseView {
    @OneExecution
    void onTransactionSuccess();

    void setupScreenWithData(String str, String str2, String str3, String str4, String str5);

    void showFee(FeeView.ChooseFeeType chooseFeeType);
}
