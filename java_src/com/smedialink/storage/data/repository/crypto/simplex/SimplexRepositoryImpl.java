package com.smedialink.storage.data.repository.crypto.simplex;

import com.smedialink.storage.data.mapper.crypto.SimplexMappingKt;
import com.smedialink.storage.data.network.api.own.SimplexApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.simplex.CreateBuyingCryptoPaymentRequest;
import com.smedialink.storage.data.network.model.request.crypto.simplex.GetBuyingCryptoQuoteRequestList;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.simplex.CreateBuyingCryptoPaymentResponse;
import com.smedialink.storage.data.network.model.response.crypto.simplex.GetBuyingCryptoQuoteResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuoteArgs;
import com.smedialink.storage.domain.model.crypto.simplex.Currency;
import com.smedialink.storage.domain.repository.crypto.simplex.SimplexRepository;
import com.smedialink.storage.domain.utils.extentions.CryptoExtKt;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
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

    @Override // com.smedialink.storage.domain.repository.crypto.simplex.SimplexRepository
    public Observable<Result<BuyingCryptoPayment>> createBuyingCryptoPayment(Currency digitalCurrency, Currency fiatCurrency, float f, int i, String quoteId, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        String value = digitalCurrency.getValue();
        final CreateBuyingCryptoPaymentRequest createBuyingCryptoPaymentRequest = new CreateBuyingCryptoPaymentRequest(quoteId, CryptoExtKt.generateUuid(), fiatCurrency.getValue(), i, value, f, networkType.name());
        Observable<ApiBaseResponse<CreateBuyingCryptoPaymentResponse>> createBuyingCryptoPaymentRequest2 = this.simplexApi.createBuyingCryptoPaymentRequest(createBuyingCryptoPaymentRequest);
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = createBuyingCryptoPaymentRequest2.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.simplex.SimplexRepositoryImpl$createBuyingCryptoPayment$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(new BuyingCryptoPayment(createBuyingCryptoPaymentRequest.getOrderId(), ((CreateBuyingCryptoPaymentResponse) response.getPayload()).getHtml()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BuyingCryptoPayment>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.crypto.simplex.SimplexRepository
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
        Observable<R> map = buyingCryptoQuote.map(new Function() { // from class: com.smedialink.storage.data.repository.crypto.simplex.SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                int collectionSizeOrDefault2;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    List<GetBuyingCryptoQuoteResponse.CryptoQuote> quotes = ((GetBuyingCryptoQuoteResponse) response.getPayload()).getQuotes();
                    collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(quotes, 10);
                    ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                    for (GetBuyingCryptoQuoteResponse.CryptoQuote cryptoQuote : quotes) {
                        arrayList2.add(SimplexMappingKt.mapToDomain(cryptoQuote));
                    }
                    return Result.Companion.success(arrayList2);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BuyingCryptoQuote>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
