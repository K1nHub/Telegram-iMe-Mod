package com.smedialink.manager.crypto.pay;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
import org.fork.utils.Callbacks$Callback;
/* compiled from: BinancePayProcessView.kt */
@OneExecution
/* loaded from: classes3.dex */
public interface BinancePayProcessView extends BaseView {
    void showConfirmPaymentDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showSuccessPaymentProcessedDialog(String str, String str2, String str3);
}
