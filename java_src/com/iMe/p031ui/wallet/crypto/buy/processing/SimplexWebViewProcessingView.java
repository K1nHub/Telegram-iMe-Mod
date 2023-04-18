package com.iMe.p031ui.wallet.crypto.buy.processing;

import com.iMe.model.wallet.crypto.simplex.PaymentResult;
import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: SimplexWebViewProcessingView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingView */
/* loaded from: classes3.dex */
public interface SimplexWebViewProcessingView extends BaseView {
    void redirectAndShowResult(PaymentResult paymentResult);
}