package com.iMe.p030ui.wallet.cryptobox.suspension;

import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.p030ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CryptoBoxSuspensionView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView */
/* loaded from: classes3.dex */
public interface CryptoBoxSuspensionView extends BaseView {
    @AddToEndSingle
    void renderButtonLoading(boolean z);

    @AddToEndSingle
    void showFee(FeeType feeType);

    void showTransactionError(String str);

    void showTransactionSuccess();
}
