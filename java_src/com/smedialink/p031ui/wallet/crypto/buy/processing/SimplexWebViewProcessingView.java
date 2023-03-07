package com.smedialink.p031ui.wallet.crypto.buy.processing;

import com.smedialink.model.wallet.crypto.simplex.PaymentResult;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: SimplexWebViewProcessingView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingView */
/* loaded from: classes3.dex */
public interface SimplexWebViewProcessingView extends BaseView {
    void redirectAndShowResult(PaymentResult paymentResult);
}
