package com.smedialink.p031ui.wallet.crypto.enter.password;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: EnterWalletPasswordView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.crypto.enter.password.EnterWalletPasswordView */
/* loaded from: classes3.dex */
public interface EnterWalletPasswordView extends BaseView {
    void onCodeErrorShake();

    void onSuccessDeleteWallet();

    void onSuccessUnlockWallet(String str, String str2);

    void showDeleteWalletDialog(DialogModel dialogModel);

    void showRestoreWalletScreen(String str);
}
