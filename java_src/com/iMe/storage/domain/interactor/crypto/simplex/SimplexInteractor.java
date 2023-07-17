package com.iMe.storage.domain.interactor.crypto.simplex;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.billing.CryptoProduct;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuoteArgs;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import com.iMe.storage.domain.model.crypto.simplex.CustomPriceLimits;
import com.iMe.storage.domain.model.crypto.simplex.FiatCurrency;
import com.iMe.storage.domain.repository.crypto.simplex.SimplexRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
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

    public final CustomPriceLimits calculateCustomPriceLimits(BuyingCryptoQuote minCalcQuote) {
        Intrinsics.checkNotNullParameter(minCalcQuote, "minCalcQuote");
        return new CustomPriceLimits(50.0f, (minCalcQuote.getCryptoMoneyAmount() * 50.0f) / minCalcQuote.getFiatMoneyAmount(), 20000.0f, (minCalcQuote.getCryptoMoneyAmount() * 20000.0f) / minCalcQuote.getFiatMoneyAmount());
    }

    public static /* synthetic */ Observable getAllAvailablePurchasesQuotes$default(SimplexInteractor simplexInteractor, FiatCurrency fiatCurrency, Currency currency, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            fiatCurrency = FiatCurrency.USD;
        }
        return simplexInteractor.getAllAvailablePurchasesQuotes(fiatCurrency, currency, str);
    }

    public final Observable<Result<List<BuyingCryptoQuote>>> getAllAvailablePurchasesQuotes(FiatCurrency fiatCurrency, Currency digitalCurrency, String networkId) {
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<R> map = this.simplexRepository.getBuyingCryptoQuote(formatQuotesArgs(fiatCurrency, digitalCurrency, networkId)).map(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1981xd12431bd(this)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        Observable<Result<List<BuyingCryptoQuote>>> startWith = map.subscribeOn(this.schedulersProvider.mo699io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "simplexRepository\n      …artWith(Result.loading())");
        return startWith;
    }

    private final List<BuyingCryptoQuoteArgs> formatQuotesArgs(FiatCurrency fiatCurrency, Currency currency, String str) {
        int collectionSizeOrDefault;
        List<CryptoProduct> allAvailableProducts = CryptoProduct.Companion.getAllAvailableProducts();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(allAvailableProducts, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CryptoProduct cryptoProduct : allAvailableProducts) {
            arrayList.add(new BuyingCryptoQuoteArgs(currency, fiatCurrency, fiatCurrency, cryptoProduct.getPriceInDollars(), str));
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
