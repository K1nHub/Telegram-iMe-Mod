package com.iMe.p030ui.wallet.crypto.enter.pin;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: EnterWalletPinView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView */
/* loaded from: classes3.dex */
public interface EnterWalletPinView extends BaseView {
    void onDeleteWalletSuccess();

    void onPinCodeErrorShake();

    void onSuccessEnterPinCode(String str, String str2);

    void openPasswordEnterScreen();

    void openRestoreWalletScreen(String str);

    void showDeleteWalletDialog(DialogModel dialogModel);

    void showForgotPasswordOptionsDialog();

    void updateLoadingState(boolean z, boolean z2);
}
