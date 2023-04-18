package com.iMe.p031ui.wallet.crypto.buy.customPrice;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.interactor.crypto.simplex.SimplexInteractor;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import com.iMe.storage.domain.model.crypto.simplex.CustomPriceLimits;
import com.iMe.storage.domain.model.crypto.simplex.DigitalCurrency;
import com.iMe.storage.domain.model.crypto.simplex.FiatCurrency;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.validator.wallet.CustomPriceValidator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3242R;
/* compiled from: CryptoBuyCustomPricePresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPricePresenter */
/* loaded from: classes3.dex */
public final class CryptoBuyCustomPricePresenter extends BasePresenter<CryptoBuyCustomPriceView> {
    private final CustomPriceValidator customPriceValidator;
    private Currency fromCurrency;
    private final CustomPriceLimits limits;
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
        this.customPriceValidator = customPriceValidator;
        BuyingCryptoQuote quote = minItem.getQuote();
        Intrinsics.checkNotNull(quote);
        this.limits = simplexInteractor.calculateCustomPriceLimits(quote);
        this.fromCurrency = FiatCurrency.USD;
        this.toCurrency = DigitalCurrency.Companion.map(minItem.getTokenInfo().getCode());
    }

    public final void validateExchange(String fromAmount, String toAmount) {
        Float floatOrNull;
        Float floatOrNull2;
        Intrinsics.checkNotNullParameter(fromAmount, "fromAmount");
        Intrinsics.checkNotNullParameter(toAmount, "toAmount");
        floatOrNull = StringsKt__StringNumberConversionsJVMKt.toFloatOrNull(fromAmount);
        float f = BitmapDescriptorFactory.HUE_RED;
        float floatValue = floatOrNull != null ? floatOrNull.floatValue() : 0.0f;
        floatOrNull2 = StringsKt__StringNumberConversionsJVMKt.toFloatOrNull(toAmount);
        if (floatOrNull2 != null) {
            f = floatOrNull2.floatValue();
        }
        if (this.simplexInteractor.isValidPurchaseAmount(this.limits, floatValue, this.fromCurrency)) {
            if (!(this.fromCurrency instanceof FiatCurrency)) {
                f = floatValue;
            }
            ((CryptoBuyCustomPriceView) getViewState()).showConfirmDialog(floatValue, this.fromCurrency, getConfirmationDialogModel(f));
        }
    }

    public final void calculateExchangeValues(String inputValue) {
        Float floatOrNull;
        float cryptoMoneyAmount;
        float fiatMoneyAmount;
        Intrinsics.checkNotNullParameter(inputValue, "inputValue");
        floatOrNull = StringsKt__StringNumberConversionsJVMKt.toFloatOrNull(inputValue);
        if (isValidInput(this.fromCurrency, floatOrNull)) {
            if (this.fromCurrency instanceof DigitalCurrency) {
                Intrinsics.checkNotNull(floatOrNull);
                float floatValue = floatOrNull.floatValue();
                BuyingCryptoQuote quote = this.minItem.getQuote();
                Intrinsics.checkNotNull(quote);
                cryptoMoneyAmount = floatValue * quote.getFiatMoneyAmount();
                fiatMoneyAmount = this.minItem.getQuote().getCryptoMoneyAmount();
            } else {
                Intrinsics.checkNotNull(floatOrNull);
                float floatValue2 = floatOrNull.floatValue();
                BuyingCryptoQuote quote2 = this.minItem.getQuote();
                Intrinsics.checkNotNull(quote2);
                cryptoMoneyAmount = floatValue2 * quote2.getCryptoMoneyAmount();
                fiatMoneyAmount = this.minItem.getQuote().getFiatMoneyAmount();
            }
            ((CryptoBuyCustomPriceView) getViewState()).showExchangedValue(cryptoMoneyAmount / fiatMoneyAmount);
        }
    }

    public final void changeExchangeCurrency(String from, String to) {
        Float floatOrNull;
        Float floatOrNull2;
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        floatOrNull = StringsKt__StringNumberConversionsJVMKt.toFloatOrNull(from);
        float f = BitmapDescriptorFactory.HUE_RED;
        float floatValue = floatOrNull != null ? floatOrNull.floatValue() : 0.0f;
        floatOrNull2 = StringsKt__StringNumberConversionsJVMKt.toFloatOrNull(to);
        if (floatOrNull2 != null) {
            f = floatOrNull2.floatValue();
        }
        Currency currency = this.toCurrency;
        this.toCurrency = this.fromCurrency;
        this.fromCurrency = currency;
        ((CryptoBuyCustomPriceView) getViewState()).configureExchangeState(f, floatValue, this.fromCurrency, this.toCurrency);
        calculateExchangeValues(String.valueOf(f));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((CryptoBuyCustomPriceView) getViewState()).configureExchangeState(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.fromCurrency, this.toCurrency);
    }

    private final DialogModel getConfirmationDialogModel(float f) {
        return new DialogModel(this.resourceManager.getString(C3242R.string.wallet_crypto_buy_confirm_dialog_title), this.resourceManager.getString(C3242R.string.wallet_crypto_buy_confirm_dialog_description, BalanceFormatter.formatBalance(Float.valueOf(f), this.minItem.getTokenInfo().getDecimals()), this.resourceManager.getString(this.minItem.getTokenInfo().getShortName())), this.resourceManager.getString(C3242R.string.common_cancel), this.resourceManager.getString(C3242R.string.wallet_crypto_buy_confirm_dialog_action_txt));
    }

    private final boolean isValidInput(Currency currency, Float f) {
        CustomPriceValidator.State validate = this.customPriceValidator.validate(f, new CustomPriceValidator.CustomPriceArgs(currency, this.limits));
        CustomPriceValidator.State.Valid valid = CustomPriceValidator.State.Valid.INSTANCE;
        if (Intrinsics.areEqual(validate, valid)) {
            ((CryptoBuyCustomPriceView) getViewState()).resetInputError();
        } else if (Intrinsics.areEqual(validate, CustomPriceValidator.State.Invalid.DefaultOrEmpty.INSTANCE)) {
            ((CryptoBuyCustomPriceView) getViewState()).showExchangedValue(BitmapDescriptorFactory.HUE_RED);
        } else if (validate instanceof CustomPriceValidator.State.Invalid.AmountLimit) {
            CustomPriceValidator.State.Invalid.AmountLimit amountLimit = (CustomPriceValidator.State.Invalid.AmountLimit) validate;
            ((CryptoBuyCustomPriceView) getViewState()).showExchangedValue(amountLimit.getAmount());
            ((CryptoBuyCustomPriceView) getViewState()).showInputError(amountLimit.getErrorText());
        }
        return Intrinsics.areEqual(validate, valid);
    }
}
