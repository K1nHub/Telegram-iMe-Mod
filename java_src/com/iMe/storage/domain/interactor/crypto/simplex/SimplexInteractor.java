package com.iMe.storage.domain.interactor.crypto.simplex;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.billing.CryptoProduct;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuoteArgs;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import com.iMe.storage.domain.model.crypto.simplex.CustomPriceLimits;
import com.iMe.storage.domain.model.crypto.simplex.DigitalCurrency;
import com.iMe.storage.domain.model.crypto.simplex.FiatCurrency;
import com.iMe.storage.domain.repository.crypto.simplex.SimplexRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SimplexInteractor.kt */
/* loaded from: classes3.dex */
public final class SimplexInteractor {
    private final SchedulersProvider schedulersProvider;
    private final SimplexRepository simplexRepository;

    static {
        new Companion(null);
    }

    public SimplexInteractor(SimplexRepository simplexRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(simplexRepository, "simplexRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.simplexRepository = simplexRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final boolean isValidPurchaseAmount(CustomPriceLimits limits, float f, Currency currency) {
        Intrinsics.checkNotNullParameter(limits, "limits");
        Intrinsics.checkNotNullParameter(currency, "currency");
        if (currency instanceof FiatCurrency) {
            float minFiatAmount = limits.getMinFiatAmount();
            if (f <= limits.getMaxFiatAmount() && minFiatAmount <= f) {
                return true;
            }
        } else if (currency instanceof DigitalCurrency) {
            float minCryptoAmount = limits.getMinCryptoAmount();
            if (f <= limits.getMaxCryptoAmount() && minCryptoAmount <= f) {
                return true;
            }
        }
        return false;
    }

    public final CustomPriceLimits calculateCustomPriceLimits(BuyingCryptoQuote minCalcQuote) {
        Intrinsics.checkNotNullParameter(minCalcQuote, "minCalcQuote");
        return new CustomPriceLimits(50.0f, (minCalcQuote.getCryptoMoneyAmount() * 50.0f) / minCalcQuote.getFiatMoneyAmount(), 20000.0f, (minCalcQuote.getCryptoMoneyAmount() * 20000.0f) / minCalcQuote.getFiatMoneyAmount());
    }

    public static /* synthetic */ Observable getAllAvailablePurchasesQuotes$default(SimplexInteractor simplexInteractor, FiatCurrency fiatCurrency, Currency currency, NetworkType networkType, int i, Object obj) {
        if ((i & 1) != 0) {
            fiatCurrency = FiatCurrency.USD;
        }
        return simplexInteractor.getAllAvailablePurchasesQuotes(fiatCurrency, currency, networkType);
    }

    public final Observable<Result<List<BuyingCryptoQuote>>> getAllAvailablePurchasesQuotes(FiatCurrency fiatCurrency, Currency digitalCurrency, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<R> map = this.simplexRepository.getBuyingCryptoQuote(formatQuotesArgs(fiatCurrency, digitalCurrency, networkType)).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1976xd12431bd(this)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<List<BuyingCryptoQuote>>> startWith = map.subscribeOn(this.schedulersProvider.mo699io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "simplexRepository\n      …artWith(Result.loading())");
        return startWith;
    }

    public static /* synthetic */ Observable purchase$default(SimplexInteractor simplexInteractor, FiatCurrency fiatCurrency, DigitalCurrency digitalCurrency, float f, Currency currency, NetworkType networkType, int i, Object obj) {
        if ((i & 1) != 0) {
            fiatCurrency = FiatCurrency.USD;
        }
        return simplexInteractor.purchase(fiatCurrency, digitalCurrency, f, currency, networkType);
    }

    public final Observable<Result<BuyingCryptoPayment>> purchase(FiatCurrency fiatCurrency, DigitalCurrency digitalCurrency, float f, Currency requestedCurrency, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(requestedCurrency, "requestedCurrency");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<R> flatMap = getBuyingCryptoQuote(digitalCurrency, requestedCurrency, f, networkType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new SimplexInteractor$purchase$$inlined$flatMapSuccess$1(this, fiatCurrency, digitalCurrency, networkType)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<BuyingCryptoPayment>> startWith = flatMap.subscribeOn(this.schedulersProvider.mo699io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "getBuyingCryptoQuote(dig…artWith(Result.loading())");
        return startWith;
    }

    public static /* synthetic */ Observable purchase$default(SimplexInteractor simplexInteractor, FiatCurrency fiatCurrency, Currency currency, float f, int i, String str, NetworkType networkType, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            fiatCurrency = FiatCurrency.USD;
        }
        return simplexInteractor.purchase(fiatCurrency, currency, f, i, str, networkType);
    }

    public final Observable<Result<BuyingCryptoPayment>> purchase(FiatCurrency fiatCurrency, Currency digitalCurrency, float f, int i, String quoteId, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<R> flatMap = this.simplexRepository.createBuyingCryptoPayment(digitalCurrency, fiatCurrency, f, i, quoteId, networkType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new SimplexInteractor$purchase$$inlined$flatMapError$1(new IErrorStatus[]{FirebaseFunctionsErrorHandler.CryptoErrorStatus.SIMPLEX_QUOTE_ALREADY_USED}, this, digitalCurrency, i, networkType, fiatCurrency)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "vararg errorStatus: IErr…e.empty()\n        }\n    }");
        Observable<Result<BuyingCryptoPayment>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "simplexRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<BuyingCryptoQuote>> getBuyingCryptoQuote(Currency digitalCurrency, Currency requestedCurrency, float f, NetworkType networkType) {
        List<BuyingCryptoQuoteArgs> mutableListOf;
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(requestedCurrency, "requestedCurrency");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        SimplexRepository simplexRepository = this.simplexRepository;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new BuyingCryptoQuoteArgs(digitalCurrency, FiatCurrency.USD, requestedCurrency, f, networkType));
        Observable<R> map = simplexRepository.getBuyingCryptoQuote(mutableListOf).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new SimplexInteractor$getBuyingCryptoQuote$$inlined$mapSuccess$1()));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<BuyingCryptoQuote>> startWith = map.subscribeOn(this.schedulersProvider.mo699io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "simplexRepository\n      …artWith(Result.loading())");
        return startWith;
    }

    private final List<BuyingCryptoQuoteArgs> formatQuotesArgs(FiatCurrency fiatCurrency, Currency currency, NetworkType networkType) {
        int collectionSizeOrDefault;
        List<CryptoProduct> allAvailableProducts = CryptoProduct.Companion.getAllAvailableProducts();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(allAvailableProducts, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CryptoProduct cryptoProduct : allAvailableProducts) {
            arrayList.add(new BuyingCryptoQuoteArgs(currency, fiatCurrency, fiatCurrency, cryptoProduct.getPriceInDollars(), networkType));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BuyingCryptoQuote> withDefaultCustomQuote(List<BuyingCryptoQuote> list) {
        List<BuyingCryptoQuote> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        mutableList.add(BuyingCryptoQuote.Companion.getCUSTOM_QUOTE());
        return mutableList;
    }

    /* compiled from: SimplexInteractor.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
