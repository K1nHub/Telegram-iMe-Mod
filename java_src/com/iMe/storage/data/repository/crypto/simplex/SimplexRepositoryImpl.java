package com.iMe.storage.data.repository.crypto.simplex;

import com.iMe.storage.data.mapper.crypto.SimplexMappingKt;
import com.iMe.storage.data.network.api.own.SimplexApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.simplex.CreateBuyingCryptoPaymentRequest;
import com.iMe.storage.data.network.model.request.crypto.simplex.GetBuyingCryptoQuoteRequestList;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuoteArgs;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import com.iMe.storage.domain.repository.crypto.simplex.SimplexRepository;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SimplexRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class SimplexRepositoryImpl implements SimplexRepository {
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final SimplexApi simplexApi;

    public SimplexRepositoryImpl(SimplexApi simplexApi, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(simplexApi, "simplexApi");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.simplexApi = simplexApi;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.crypto.simplex.SimplexRepository
    public Observable<Result<BuyingCryptoPayment>> createBuyingCryptoPayment(Currency digitalCurrency, Currency fiatCurrency, float f, int i, String quoteId, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        String value = digitalCurrency.getValue();
        CreateBuyingCryptoPaymentRequest createBuyingCryptoPaymentRequest = new CreateBuyingCryptoPaymentRequest(quoteId, CryptoExtKt.generateUuid(), fiatCurrency.getValue(), i, value, f, networkType.name());
        Observable<R> map = this.simplexApi.createBuyingCryptoPaymentRequest(createBuyingCryptoPaymentRequest).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1819xab3d1946(this.firebaseErrorHandler, createBuyingCryptoPaymentRequest)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BuyingCryptoPayment>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1818x9f6dc81b(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.simplex.SimplexRepository
    public Observable<Result<List<BuyingCryptoQuote>>> getBuyingCryptoQuote(List<BuyingCryptoQuoteArgs> quoteRequests) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(quoteRequests, "quoteRequests");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(quoteRequests, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BuyingCryptoQuoteArgs buyingCryptoQuoteArgs : quoteRequests) {
            arrayList.add(SimplexMappingKt.mapToRequest(buyingCryptoQuoteArgs));
        }
        Observable<R> map = this.simplexApi.getBuyingCryptoQuote(new GetBuyingCryptoQuoteRequestList(arrayList)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BuyingCryptoQuote>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1820xe982d2d7(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
