package com.iMe.p031ui.wallet.crypto.enter.password;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: EnterWalletPasswordView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordView */
/* loaded from: classes3.dex */
public interface EnterWalletPasswordView extends BaseView {
    void onCodeErrorShake();

    void onSuccessDeleteWallet();

    void onSuccessUnlockWallet(String str, String str2);

    void showDeleteWalletDialog(DialogModel dialogModel);

    void showRestoreWalletScreen(String str);
}
