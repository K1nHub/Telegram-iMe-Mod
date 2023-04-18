package com.iMe.p031ui.wallet.crypto.create.password;

import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CreateWalletPasswordView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.create.password.CreateWalletPasswordView */
/* loaded from: classes3.dex */
public interface CreateWalletPasswordView extends BaseView {
    void onCodeErrorShake();

    void onPasswordMatch(String str);
}
