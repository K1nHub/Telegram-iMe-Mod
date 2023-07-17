package com.iMe.p031ui.wallet.crypto.create.pin;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Wallet;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CreateWalletPinView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView */
/* loaded from: classes4.dex */
public interface CreateWalletPinView extends BaseView {
    void onWalletCreateSuccess(String str, String str2, Wallet wallet2);

    void onWalletImportSuccess();

    void onWalletPinCodeChangeSuccess();

    void onWalletPinCodeError();
}
