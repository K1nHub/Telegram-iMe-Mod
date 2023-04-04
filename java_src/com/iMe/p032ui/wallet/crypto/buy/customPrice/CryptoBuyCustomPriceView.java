package com.iMe.p032ui.wallet.crypto.buy.customPrice;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CryptoBuyCustomPriceView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView */
/* loaded from: classes3.dex */
public interface CryptoBuyCustomPriceView extends BaseView {
    void configureExchangeState(float f, float f2, Currency currency, Currency currency2);

    void resetInputError();

    @OneExecution
    void showConfirmDialog(float f, Currency currency, DialogModel dialogModel);

    void showExchangedValue(float f);

    @OneExecution
    void showInputError(String str);
}
