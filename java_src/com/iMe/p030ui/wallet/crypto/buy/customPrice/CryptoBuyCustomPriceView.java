package com.iMe.p030ui.wallet.crypto.buy.customPrice;

import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: CryptoBuyCustomPriceView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView */
/* loaded from: classes3.dex */
public interface CryptoBuyCustomPriceView extends BaseView {
    void configureExchangeState(float f, float f2, Currency currency, Currency currency2);
}
