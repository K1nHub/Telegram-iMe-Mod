package com.iMe.manager.crypto.pay;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: BinancePayProcessView.kt */
@OneExecution
/* loaded from: classes3.dex */
public interface BinancePayProcessView extends BaseView {
    void showConfirmPaymentDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showSuccessPaymentProcessedDialog(String str, String str2, String str3);
}
