package com.iMe.p031ui.wallet.crypto.enter.pin;

import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: EnterWalletPinView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView */
/* loaded from: classes3.dex */
public interface EnterWalletPinView extends BaseView {
    void onPinCodeErrorShake();

    void onSuccessEnterPinCode(String str, String str2);

    void redirectScreenToPasswordEnter();
}
