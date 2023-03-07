package com.smedialink.storage.domain.interactor.crypto.simplex;

import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.billing.CryptoProduct;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuoteArgs;
import com.smedialink.storage.domain.model.crypto.simplex.Currency;
import com.smedialink.storage.domain.model.crypto.simplex.CustomPriceLimits;
import com.smedialink.storage.domain.model.crypto.simplex.DigitalCurrency;
import com.smedialink.storage.domain.model.crypto.simplex.FiatCurrency;
import com.smedialink.storage.domain.repository.crypto.simplex.SimplexRepository;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
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
        Observable<R> map = this.simplexRepository.getBuyingCryptoQuote(formatQuotesArgs(fiatCurrency, digitalCurrency, networkType)).map(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.simplex.SimplexInteractor$getAllAvailablePurchasesQuotes$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
                List withDefaultCustomQuote;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                    }
                    if (result instanceof Object) {
                        return result;
                    }
                    return null;
                }
                SimplexInteractor simplexInteractor = SimplexInteractor.this;
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                withDefaultCustomQuote = simplexInteractor.withDefaultCustomQuote((List) data);
                return Result.Companion.success(withDefaultCustomQuote);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<List<BuyingCryptoQuote>>> startWith = map.subscribeOn(this.schedulersProvider.mo708io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "simplexRepository\n      …artWith(Result.loading())");
        return startWith;
    }

    public static /* synthetic */ Observable purchase$default(SimplexInteractor simplexInteractor, FiatCurrency fiatCurrency, DigitalCurrency digitalCurrency, float f, Currency currency, NetworkType networkType, int i, Object obj) {
        if ((i & 1) != 0) {
            fiatCurrency = FiatCurrency.USD;
        }
        return simplexInteractor.purchase(fiatCurrency, digitalCurrency, f, currency, networkType);
    }

    public final Observable<Result<BuyingCryptoPayment>> purchase(final FiatCurrency fiatCurrency, final DigitalCurrency digitalCurrency, float f, Currency requestedCurrency, final NetworkType networkType) {
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(requestedCurrency, "requestedCurrency");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<R> flatMap = getBuyingCryptoQuote(digitalCurrency, requestedCurrency, f, networkType).flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.simplex.SimplexInteractor$purchase$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                BuyingCryptoQuote buyingCryptoQuote = (BuyingCryptoQuote) data;
                return SimplexInteractor.this.purchase(fiatCurrency, digitalCurrency, buyingCryptoQuote.getCryptoMoneyAmount(), (int) buyingCryptoQuote.getFiatMoneyAmount(), buyingCryptoQuote.getQuoteId(), networkType);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<BuyingCryptoPayment>> startWith = flatMap.subscribeOn(this.schedulersProvider.mo708io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "getBuyingCryptoQuote(dig…artWith(Result.loading())");
        return startWith;
    }

    public static /* synthetic */ Observable purchase$default(SimplexInteractor simplexInteractor, FiatCurrency fiatCurrency, Currency currency, float f, int i, String str, NetworkType networkType, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            fiatCurrency = FiatCurrency.USD;
        }
        return simplexInteractor.purchase(fiatCurrency, currency, f, i, str, networkType);
    }

    public final Observable<Result<BuyingCryptoPayment>> purchase(final FiatCurrency fiatCurrency, final Currency digitalCurrency, float f, final int i, String quoteId, final NetworkType networkType) {
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<Result<BuyingCryptoPayment>> createBuyingCryptoPayment = this.simplexRepository.createBuyingCryptoPayment(digitalCurrency, fiatCurrency, f, i, quoteId, networkType);
        final IErrorStatus[] iErrorStatusArr = {FirebaseFunctionsErrorHandler.CryptoErrorStatus.SIMPLEX_QUOTE_ALREADY_USED};
        Observable<R> flatMap = createBuyingCryptoPayment.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.simplex.SimplexInteractor$purchase$$inlined$flatMapError$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                boolean contains;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    return Observable.just(result);
                }
                if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    contains = ArraysKt___ArraysKt.contains(iErrorStatusArr, error.getError().getStatus());
                    if (!contains) {
                        Observable just = Observable.just(Result.Companion.error$default(Result.Companion, error.getError(), null, 2, null));
                        Intrinsics.checkNotNullExpressionValue(just, "just(Result.error<R>(result.error) as R)");
                        return just;
                    }
                    error.getError();
                    Observable<Result<BuyingCryptoQuote>> buyingCryptoQuote = this.getBuyingCryptoQuote(digitalCurrency, FiatCurrency.USD, i, networkType);
                    final SimplexInteractor simplexInteractor = this;
                    final FiatCurrency fiatCurrency2 = fiatCurrency;
                    final Currency currency = digitalCurrency;
                    final NetworkType networkType2 = networkType;
                    Observable<R> flatMap2 = buyingCryptoQuote.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.simplex.SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1
                        /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
                        @Override // io.reactivex.functions.Function
                        public final ObservableSource apply(Result result2) {
                            Intrinsics.checkNotNullParameter(result2, "result");
                            if (!(result2 instanceof Result.Success)) {
                                return result2 instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null)) : Observable.empty();
                            }
                            SimplexInteractor simplexInteractor2 = SimplexInteractor.this;
                            FiatCurrency fiatCurrency3 = fiatCurrency2;
                            Currency currency2 = currency;
                            Object data = result2.getData();
                            Intrinsics.checkNotNull(data);
                            float cryptoMoneyAmount = ((BuyingCryptoQuote) data).getCryptoMoneyAmount();
                            Object data2 = result2.getData();
                            Intrinsics.checkNotNull(data2);
                            Object data3 = result2.getData();
                            Intrinsics.checkNotNull(data3);
                            return simplexInteractor2.purchase(fiatCurrency3, currency2, cryptoMoneyAmount, (int) ((BuyingCryptoQuote) data2).getFiatMoneyAmount(), ((BuyingCryptoQuote) data3).getQuoteId(), networkType2);
                        }
                    });
                    Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                    return flatMap2;
                }
                return Observable.empty();
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "vararg errorStatus: IErr…e.empty()\n        }\n    }");
        Observable<Result<BuyingCryptoPayment>> subscribeOn = flatMap.subscribeOn(this.schedulersProvider.mo708io());
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
        Observable<R> map = simplexRepository.getBuyingCryptoQuote(mutableListOf).map(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.simplex.SimplexInteractor$getBuyingCryptoQuote$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.reactivex.functions.Function
            public final Object apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                    }
                    if (result instanceof Object) {
                        return result;
                    }
                    return null;
                }
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                return Result.Companion.success(CollectionsKt.first((List<? extends Object>) data));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<BuyingCryptoQuote>> startWith = map.subscribeOn(this.schedulersProvider.mo708io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
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
