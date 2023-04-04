package com.iMe.p032ui.wallet.crypto.create.pin;

import com.iMe.p032ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CreateWalletPinView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView */
/* loaded from: classes3.dex */
public interface CreateWalletPinView extends BaseView {
    void goToBackUpTutorial(String str, String str2, String str3);

    void onCodeErrorShake();

    void onSuccessCreateWallet();
}
