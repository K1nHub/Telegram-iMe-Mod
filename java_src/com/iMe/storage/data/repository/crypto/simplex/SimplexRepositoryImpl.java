package com.iMe.storage.data.repository.crypto.simplex;

import com.iMe.storage.data.mapper.crypto.SimplexMappingKt;
import com.iMe.storage.data.network.api.own.SimplexApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.simplex.GetBuyingCryptoQuoteRequestList;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuoteArgs;
import com.iMe.storage.domain.repository.crypto.simplex.SimplexRepository;
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
        Observable<Result<List<BuyingCryptoQuote>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1909xe982d2d7(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
