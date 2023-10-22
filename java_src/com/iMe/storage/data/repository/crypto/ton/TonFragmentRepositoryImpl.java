package com.iMe.storage.data.repository.crypto.ton;

import com.iMe.storage.data.mapper.fragment.PremiumBuyTransactionParamsMappingKt;
import com.iMe.storage.data.mapper.fragment.PremiumPlanMappingKt;
import com.iMe.storage.data.mapper.fragment.ProductBuyTransactionParamsMappingKt;
import com.iMe.storage.data.mapper.fragment.TonFragmentProductMappingKt;
import com.iMe.storage.data.mapper.fragment.TonFragmentSessionDataMappingKt;
import com.iMe.storage.data.network.api.own.TonFragmentApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentPreparePremiumBuyRequest;
import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentProductBuyPrepareRequest;
import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentProductsRequest;
import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentRecipientByUsernameRequest;
import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentSessionSignatureRequest;
import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentSessionsRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentPremiumBuyTransactionParamsResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentPremiumPricesResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentProductBuyTransactionParamsResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentRecipientDataResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentSessionAuthStateResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentSessionDataResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentUsernamesResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.ton.PremiumBuyTransactionParams;
import com.iMe.storage.domain.model.crypto.ton.PremiumPlan;
import com.iMe.storage.domain.model.crypto.ton.ProductBuyTransactionParams;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentProduct;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentProductsSortingType;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentSessionData;
import com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository;
import io.reactivex.Observable;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.ton.contract.wallet.WalletContract;
/* compiled from: TonFragmentRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class TonFragmentRepositoryImpl implements TonFragmentRepository {
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final TonFragmentApi tonFragmentApi;

    public TonFragmentRepositoryImpl(FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler, TonFragmentApi tonFragmentApi) {
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(tonFragmentApi, "tonFragmentApi");
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
        this.tonFragmentApi = tonFragmentApi;
    }

    @Override // com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository
    public Observable<Result<TonFragmentSessionData>> getSessionData() {
        Observable<ApiBaseResponse<TonFragmentSessionDataResponse>> sessionData = this.tonFragmentApi.getSessionData();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sessionData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TonFragmentSessionDataResponse>, Result<? extends TonFragmentSessionData>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$getSessionData$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TonFragmentSessionData> invoke(ApiBaseResponse<TonFragmentSessionDataResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(TonFragmentSessionDataMappingKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<TonFragmentSessionData>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends TonFragmentSessionData>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$getSessionData$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<TonFragmentSessionData> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository
    public Observable<Result<Boolean>> sendSessionSignature(String signature, String address, String walletVersion, String publicKey) {
        List listOf;
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(walletVersion, "walletVersion");
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        TonFragmentApi tonFragmentApi = this.tonFragmentApi;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new TonFragmentSessionSignatureRequest(null, signature, address, walletVersion, WalletContract.DEFAULT_WALLET_ID, publicKey, 1, null));
        Observable<ApiBaseResponse<Object>> sendSessionSignature = tonFragmentApi.sendSessionSignature(new TonFragmentSessionsRequest(listOf));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendSessionSignature.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$sendSessionSignature$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$sendSessionSignature$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository
    public Observable<Result<Boolean>> getSessionAuthState() {
        Observable<ApiBaseResponse<TonFragmentSessionAuthStateResponse>> sessionAuthState = this.tonFragmentApi.getSessionAuthState();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sessionAuthState.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TonFragmentSessionAuthStateResponse>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$getSessionAuthState$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<TonFragmentSessionAuthStateResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(Boolean.valueOf(response.getPayload().isAuthorized()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$getSessionAuthState$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository
    public Observable<Result<List<PremiumPlan>>> getPremiumPrices() {
        Observable<ApiBaseResponse<TonFragmentPremiumPricesResponse>> premiumPrices = this.tonFragmentApi.getPremiumPrices();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = premiumPrices.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TonFragmentPremiumPricesResponse>, Result<? extends List<? extends PremiumPlan>>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$getPremiumPrices$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends PremiumPlan>> invoke(ApiBaseResponse<TonFragmentPremiumPricesResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(PremiumPlanMappingKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<PremiumPlan>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends PremiumPlan>>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$getPremiumPrices$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends PremiumPlan>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository
    public Observable<Result<String>> getRecipientByUsername(String username, int i) {
        Intrinsics.checkNotNullParameter(username, "username");
        Observable<ApiBaseResponse<TonFragmentRecipientDataResponse>> recipientByUsername = this.tonFragmentApi.getRecipientByUsername(new TonFragmentRecipientByUsernameRequest(username, i));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = recipientByUsername.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TonFragmentRecipientDataResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$getRecipientByUsername$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(ApiBaseResponse<TonFragmentRecipientDataResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(response.getPayload().getRecipient());
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$getRecipientByUsername$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository
    public Observable<Result<PremiumBuyTransactionParams>> preparePremiumBuyTransaction(String recipient, String publicKeyBase64) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(publicKeyBase64, "publicKeyBase64");
        Observable<ApiBaseResponse<TonFragmentPremiumBuyTransactionParamsResponse>> preparePremiumBuyTransaction = this.tonFragmentApi.preparePremiumBuyTransaction(new TonFragmentPreparePremiumBuyRequest(recipient, publicKeyBase64));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = preparePremiumBuyTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TonFragmentPremiumBuyTransactionParamsResponse>, Result<? extends PremiumBuyTransactionParams>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$preparePremiumBuyTransaction$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<PremiumBuyTransactionParams> invoke(ApiBaseResponse<TonFragmentPremiumBuyTransactionParamsResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(PremiumBuyTransactionParamsMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<PremiumBuyTransactionParams>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends PremiumBuyTransactionParams>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$preparePremiumBuyTransaction$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<PremiumBuyTransactionParams> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository
    public Observable<Result<List<TonFragmentProduct>>> getUsernames(TonFragmentProductsSortingType sortingType, String searchQuery) {
        Intrinsics.checkNotNullParameter(sortingType, "sortingType");
        Intrinsics.checkNotNullParameter(searchQuery, "searchQuery");
        Observable<ApiBaseResponse<TonFragmentUsernamesResponse>> usernames = this.tonFragmentApi.getUsernames(new TonFragmentProductsRequest(sortingType.getBackendName(), searchQuery));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = usernames.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TonFragmentUsernamesResponse>, Result<? extends List<? extends TonFragmentProduct>>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$getUsernames$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TonFragmentProduct>> invoke(ApiBaseResponse<TonFragmentUsernamesResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(TonFragmentProductMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<TonFragmentProduct>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends TonFragmentProduct>>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$getUsernames$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends TonFragmentProduct>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.crypto.ton.TonFragmentRepository
    public Observable<Result<ProductBuyTransactionParams>> prepareProductBuyTransaction(String username, String price, String publicKeyBase64) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(publicKeyBase64, "publicKeyBase64");
        Observable<ApiBaseResponse<TonFragmentProductBuyTransactionParamsResponse>> prepareProductBuyTransaction = this.tonFragmentApi.prepareProductBuyTransaction(new TonFragmentProductBuyPrepareRequest(username, price, publicKeyBase64));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = prepareProductBuyTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TonFragmentProductBuyTransactionParamsResponse>, Result<? extends ProductBuyTransactionParams>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$prepareProductBuyTransaction$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<ProductBuyTransactionParams> invoke(ApiBaseResponse<TonFragmentProductBuyTransactionParamsResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(ProductBuyTransactionParamsMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<ProductBuyTransactionParams>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends ProductBuyTransactionParams>>() { // from class: com.iMe.storage.data.repository.crypto.ton.TonFragmentRepositoryImpl$prepareProductBuyTransaction$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<ProductBuyTransactionParams> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
