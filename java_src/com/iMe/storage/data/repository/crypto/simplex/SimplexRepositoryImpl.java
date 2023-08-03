package com.iMe.storage.data.repository.crypto.simplex;

import com.iMe.storage.data.mapper.crypto.SimplexMappingKt;
import com.iMe.storage.data.network.api.own.SimplexApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.simplex.GetBuyingCryptoQuoteRequestList;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.simplex.GetBuyingCryptoQuoteResponse;
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
import kotlin.jvm.functions.Function1;
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
        Observable<ApiBaseResponse<GetBuyingCryptoQuoteResponse>> buyingCryptoQuote = this.simplexApi.getBuyingCryptoQuote(new GetBuyingCryptoQuoteRequestList(arrayList));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = buyingCryptoQuote.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<GetBuyingCryptoQuoteResponse>, Result<? extends List<? extends BuyingCryptoQuote>>>() { // from class: com.iMe.storage.data.repository.crypto.simplex.SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BuyingCryptoQuote>> invoke(ApiBaseResponse<GetBuyingCryptoQuoteResponse> response) {
                int collectionSizeOrDefault2;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    List<GetBuyingCryptoQuoteResponse.CryptoQuote> quotes = response.getPayload().getQuotes();
                    collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(quotes, 10);
                    ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                    for (GetBuyingCryptoQuoteResponse.CryptoQuote cryptoQuote : quotes) {
                        arrayList2.add(SimplexMappingKt.mapToDomain(cryptoQuote));
                    }
                    return Result.Companion.success(arrayList2);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<BuyingCryptoQuote>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends BuyingCryptoQuote>>>() { // from class: com.iMe.storage.data.repository.crypto.simplex.SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BuyingCryptoQuote>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
