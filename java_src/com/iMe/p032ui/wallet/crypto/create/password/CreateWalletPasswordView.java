package com.iMe.p032ui.wallet.crypto.create.password;

import com.iMe.p032ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CreateWalletPasswordView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.create.password.CreateWalletPasswordView */
/* loaded from: classes3.dex */
public interface CreateWalletPasswordView extends BaseView {
    void onCodeErrorShake();

    void onPasswordMatch(String str);
}
