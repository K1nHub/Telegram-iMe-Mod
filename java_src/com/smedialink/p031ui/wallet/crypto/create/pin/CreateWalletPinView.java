package com.smedialink.p031ui.wallet.crypto.create.pin;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CreateWalletPinView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.crypto.create.pin.CreateWalletPinView */
/* loaded from: classes3.dex */
public interface CreateWalletPinView extends BaseView {
    void goToBackUpTutorial(String str, String str2, String str3);

    void onCodeErrorShake();

    void onSuccessCreateWallet();
}
