package com.iMe.p030ui.wallet.crypto.buy.customPrice;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import com.iMe.storage.domain.model.crypto.simplex.DigitalCurrency;
import com.iMe.storage.domain.model.crypto.simplex.FiatCurrency;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.validator.wallet.CustomPriceValidator;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: CryptoBuyCustomPricePresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPricePresenter */
/* loaded from: classes3.dex */
public final class CryptoBuyCustomPricePresenter extends BasePresenter<CryptoBuyCustomPriceView> {
    private Currency fromCurrency;
    private final CryptoBuyItem minItem;
    private final ResourceManager resourceManager;
    private final SimplexInteractor simplexInteractor;
    private Currency toCurrency;

    public CryptoBuyCustomPricePresenter(CryptoBuyItem minItem, SimplexInteractor simplexInteractor, ResourceManager resourceManager, CustomPriceValidator customPriceValidator) {
        Intrinsics.checkNotNullParameter(minItem, "minItem");
        Intrinsics.checkNotNullParameter(simplexInteractor, "simplexInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(customPriceValidator, "customPriceValidator");
        this.minItem = minItem;
        this.simplexInteractor = simplexInteractor;
        this.resourceManager = resourceManager;
        BuyingCryptoQuote quote = minItem.getQuote();
        Intrinsics.checkNotNull(quote);
        simplexInteractor.calculateCustomPriceLimits(quote);
        this.fromCurrency = FiatCurrency.USD;
        DigitalCurrency.Companion companion = DigitalCurrency.Companion;
        TokenDetailed token = minItem.getToken();
        String ticker = token != null ? token.getTicker() : null;
        this.toCurrency = companion.map(ticker == null ? "" : ticker);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((CryptoBuyCustomPriceView) getViewState()).configureExchangeState(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.fromCurrency, this.toCurrency);
    }
}
