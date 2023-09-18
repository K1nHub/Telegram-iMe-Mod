package com.iMe.storage.data.repository.binancepay;

import com.iMe.storage.data.mapper.binancepay.BinanceMappingKt;
import com.iMe.storage.data.mapper.binancepay.BinancePayMappingKt;
import com.iMe.storage.data.network.api.own.BinanceInternalApi;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.binance.BinanceConfirmConvertQuoteRequest;
import com.iMe.storage.data.network.model.request.binance.BinanceGetConvertQuoteRequest;
import com.iMe.storage.data.network.model.request.binance.BinanceGetSwapSupportCoinsByAssetCodeRequest;
import com.iMe.storage.data.network.model.request.binance.BinanceGetTokenReplenishAddressRequest;
import com.iMe.storage.data.network.model.request.binance.pay.BinanceGetAvailableTokensForReplenishRequest;
import com.iMe.storage.data.network.model.request.binance.pay.BinancePayCreateCollectionRequest;
import com.iMe.storage.data.network.model.request.binance.pay.BinancePayGetAuthTokensRequest;
import com.iMe.storage.data.network.model.request.binance.pay.BinancePayGetTransactionHistoryRequest;
import com.iMe.storage.data.network.model.request.binance.pay.BinancePayGetTransactionRequest;
import com.iMe.storage.data.network.model.request.binance.pay.BinancePayLogoutRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.binance.BinanceGetConvertOppositeSupportTokensResponse;
import com.iMe.storage.data.network.model.response.binance.BinanceGetConvertQuoteResponse;
import com.iMe.storage.data.network.model.response.binance.BinanceGetConvertSupportTokensResponse;
import com.iMe.storage.data.network.model.response.binance.BinanceGetTokenReplenishAddressResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayCreateCollectionResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayGetAuthTokensResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayGetAvailablePaymentTokensResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayGetTransactionHistoryResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayGetUserInfoResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinanceTokenBalanceResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceAuthTokens;
import com.iMe.storage.domain.model.binancepay.BinanceCollectionOrder;
import com.iMe.storage.domain.model.binancepay.BinanceConvertQuote;
import com.iMe.storage.domain.model.binancepay.BinancePayAuthType;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.storage.domain.model.binancepay.BinanceUserInfo;
import com.iMe.storage.domain.model.binancepay.OutputConvertToken;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import java.math.BigDecimal;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceInternalRepositoryImpl.kt */
/* loaded from: classes4.dex */
public final class BinanceInternalRepositoryImpl implements BinanceInternalRepository {
    private final BinanceInternalApi binanceInternalApi;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public BinanceInternalRepositoryImpl(BinanceInternalApi binanceInternalApi, CryptoPreferenceHelper cryptoPreferenceHelper, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(binanceInternalApi, "binanceInternalApi");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.binanceInternalApi = binanceInternalApi;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.errorHandler = errorHandler;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceAuthTokens>> getAuthTokens(BinancePayAuthType type, String value) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(value, "value");
        Observable<ApiBaseResponse<BinancePayGetAuthTokensResponse>> binancePayAuthTokens = this.binanceInternalApi.getBinancePayAuthTokens(new BinancePayGetAuthTokensRequest(type.name(), value));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = binancePayAuthTokens.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<BinancePayGetAuthTokensResponse>, Result<? extends BinanceAuthTokens>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getAuthTokens$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<BinanceAuthTokens> invoke(ApiBaseResponse<BinancePayGetAuthTokensResponse> response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                BinanceAuthTokens mapToDomain = BinancePayMappingKt.mapToDomain(response.getPayload());
                cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                cryptoPreferenceHelper.setBinanceAuthSession(BinancePayMappingKt.mapToPrefs(mapToDomain));
                return Result.Companion.success(mapToDomain);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<BinanceAuthTokens>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends BinanceAuthTokens>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getAuthTokens$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<BinanceAuthTokens> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceUserInfo>> getUserInfo(boolean z) {
        Result success;
        if (z) {
            Observable<ApiBaseResponse<BinancePayGetUserInfoResponse>> userInfo = this.binanceInternalApi.getUserInfo();
            final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
            Observable<R> map = userInfo.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<BinancePayGetUserInfoResponse>, Result<? extends BinanceUserInfo>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Result<BinanceUserInfo> invoke(ApiBaseResponse<BinancePayGetUserInfoResponse> response) {
                    CryptoPreferenceHelper cryptoPreferenceHelper;
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (!response.isSuccess()) {
                        return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                    }
                    BinanceUserInfo mapToDomain = BinancePayMappingKt.mapToDomain(response.getPayload());
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper.setBinanceUserInfo(BinancePayMappingKt.mapToPrefs(mapToDomain));
                    return Result.Companion.success(mapToDomain);
                }
            }));
            Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
            final ApiErrorHandler apiErrorHandler = this.errorHandler;
            Observable<Result<BinanceUserInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends BinanceUserInfo>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getUserInfo$$inlined$handleError$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Result<BinanceUserInfo> invoke(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
                }
            }));
            Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
            return onErrorReturn;
        }
        BinanceUserInfo info = this.cryptoPreferenceHelper.getBinanceUserInfo().getInfo();
        if (info != null && (success = Result.Companion.success(info)) != null) {
            Observable<Result<BinanceUserInfo>> just = Observable.just(success);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            if (just != null) {
                return just;
            }
        }
        return getUserInfo(true);
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<Boolean>> logout(String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Observable<ApiBaseResponse<Object>> logout = this.binanceInternalApi.logout(new BinancePayLogoutRequest(accessToken));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = logout.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$logout$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper.resetBinanceAccount();
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$logout$$inlined$handleError$1
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

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTransaction>>> getTransactionHistory(int i, String str, String str2) {
        Observable<ApiBaseResponse<BinancePayGetTransactionHistoryResponse>> transactionHistory = this.binanceInternalApi.getTransactionHistory(new BinancePayGetTransactionHistoryRequest(i, str, str2));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = transactionHistory.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<BinancePayGetTransactionHistoryResponse>, Result<? extends List<? extends BinanceTransaction>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTransactionHistory$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BinanceTransaction>> invoke(ApiBaseResponse<BinancePayGetTransactionHistoryResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<BinanceTransaction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends BinanceTransaction>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTransactionHistory$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BinanceTransaction>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceTransaction>> getTransaction(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<ApiBaseResponse<BinancePayGetTransactionHistoryResponse.HistoryItem>> transaction = this.binanceInternalApi.getTransaction(new BinancePayGetTransactionRequest(id));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = transaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<BinancePayGetTransactionHistoryResponse.HistoryItem>, Result<? extends BinanceTransaction>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTransaction$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<BinanceTransaction> invoke(ApiBaseResponse<BinancePayGetTransactionHistoryResponse.HistoryItem> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<BinanceTransaction>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends BinanceTransaction>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTransaction$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<BinanceTransaction> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenBalanceInfo>>> getUserBalance() {
        Observable<ApiBaseResponse<List<BinanceTokenBalanceResponse>>> userBalance = this.binanceInternalApi.getUserBalance();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = userBalance.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<List<? extends BinanceTokenBalanceResponse>>, Result<? extends List<? extends BinanceTokenBalanceInfo>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getUserBalance$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BinanceTokenBalanceInfo>> invoke(ApiBaseResponse<List<? extends BinanceTokenBalanceResponse>> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomainBinanceTokenBalanceResponse(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<BinanceTokenBalanceInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends BinanceTokenBalanceInfo>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getUserBalance$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BinanceTokenBalanceInfo>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenInfo>>> getAvailablePaymentTokens() {
        Observable<ApiBaseResponse<List<BinancePayGetAvailablePaymentTokensResponse>>> availablePaymentTokens = this.binanceInternalApi.getAvailablePaymentTokens();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = availablePaymentTokens.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<List<? extends BinancePayGetAvailablePaymentTokensResponse>>, Result<? extends List<? extends BinanceTokenInfo>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getAvailablePaymentTokens$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BinanceTokenInfo>> invoke(ApiBaseResponse<List<? extends BinancePayGetAvailablePaymentTokensResponse>> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomain((List<BinancePayGetAvailablePaymentTokensResponse>) response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<BinanceTokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends BinanceTokenInfo>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getAvailablePaymentTokens$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BinanceTokenInfo>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceCollectionOrder>> createCollection(long j, double d, String currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        BinanceInternalApi binanceInternalApi = this.binanceInternalApi;
        String valueOf = String.valueOf(j);
        String plainString = new BigDecimal(String.valueOf(d)).stripTrailingZeros().toPlainString();
        Intrinsics.checkNotNullExpressionValue(plainString, "BigDecimal(amount.toStri…ngZeros().toPlainString()");
        Observable<ApiBaseResponse<BinancePayCreateCollectionResponse>> createCollection = binanceInternalApi.createCollection(new BinancePayCreateCollectionRequest(valueOf, plainString, currency, null, null, 24, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = createCollection.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<BinancePayCreateCollectionResponse>, Result<? extends BinanceCollectionOrder>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$createCollection$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<BinanceCollectionOrder> invoke(ApiBaseResponse<BinancePayCreateCollectionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<BinanceCollectionOrder>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends BinanceCollectionOrder>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$createCollection$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<BinanceCollectionOrder> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<String>> getAddressForTokenReplenish(String tokenTicker, String networkId) {
        Intrinsics.checkNotNullParameter(tokenTicker, "tokenTicker");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<ApiBaseResponse<BinanceGetTokenReplenishAddressResponse>> replenishTokenAddress = this.binanceInternalApi.getReplenishTokenAddress(new BinanceGetTokenReplenishAddressRequest(tokenTicker, networkId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = replenishTokenAddress.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<BinanceGetTokenReplenishAddressResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getAddressForTokenReplenish$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<String> invoke(ApiBaseResponse<BinanceGetTokenReplenishAddressResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(response.getPayload().getAddress());
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends String>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getAddressForTokenReplenish$$inlined$handleError$1
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

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenInfo>>> getTokensForReplenish(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<ApiBaseResponse<List<BinancePayGetAvailablePaymentTokensResponse>>> tokensForReplenish = this.binanceInternalApi.getTokensForReplenish(new BinanceGetAvailableTokensForReplenishRequest(networkId));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = tokensForReplenish.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<List<? extends BinancePayGetAvailablePaymentTokensResponse>>, Result<? extends List<? extends BinanceTokenInfo>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTokensForReplenish$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BinanceTokenInfo>> invoke(ApiBaseResponse<List<? extends BinancePayGetAvailablePaymentTokensResponse>> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomain((List<BinancePayGetAvailablePaymentTokensResponse>) response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<BinanceTokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends BinanceTokenInfo>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTokensForReplenish$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BinanceTokenInfo>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenInfo>>> getTokensForConvert() {
        Observable<ApiBaseResponse<List<BinanceGetConvertSupportTokensResponse>>> convertSupportTokens = this.binanceInternalApi.getConvertSupportTokens();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = convertSupportTokens.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<List<? extends BinanceGetConvertSupportTokensResponse>>, Result<? extends List<? extends BinanceTokenInfo>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTokensForConvert$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BinanceTokenInfo>> invoke(ApiBaseResponse<List<? extends BinanceGetConvertSupportTokensResponse>> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinanceMappingKt.mapToDomain((List<BinanceGetConvertSupportTokensResponse>) response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<BinanceTokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends BinanceTokenInfo>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTokensForConvert$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends BinanceTokenInfo>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<OutputConvertToken>>> getOppositeTokensForConvertByToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<ApiBaseResponse<List<BinanceGetConvertOppositeSupportTokensResponse>>> convertOppositeSupportTokensByAsset = this.binanceInternalApi.getConvertOppositeSupportTokensByAsset(new BinanceGetSwapSupportCoinsByAssetCodeRequest(token));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = convertOppositeSupportTokensByAsset.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<List<? extends BinanceGetConvertOppositeSupportTokensResponse>>, Result<? extends List<? extends OutputConvertToken>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getOppositeTokensForConvertByToken$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends OutputConvertToken>> invoke(ApiBaseResponse<List<? extends BinanceGetConvertOppositeSupportTokensResponse>> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinanceMappingKt.mapToDomainBinanceGetConvertOppositeSupportTokensResponse(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<List<OutputConvertToken>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends List<? extends OutputConvertToken>>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getOppositeTokensForConvertByToken$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<? extends OutputConvertToken>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceConvertQuote>> getConvertQuote(String inputToken, String outputToken, String amount) {
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<ApiBaseResponse<BinanceGetConvertQuoteResponse>> convertQuote = this.binanceInternalApi.getConvertQuote(new BinanceGetConvertQuoteRequest(inputToken, outputToken, TradeType.EXACT_INPUT.getValue(), amount));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = convertQuote.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<BinanceGetConvertQuoteResponse>, Result<? extends BinanceConvertQuote>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getConvertQuote$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<BinanceConvertQuote> invoke(ApiBaseResponse<BinanceGetConvertQuoteResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinanceMappingKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<BinanceConvertQuote>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends BinanceConvertQuote>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getConvertQuote$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<BinanceConvertQuote> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<Boolean>> confirmConvertQuote(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<ApiBaseResponse<Object>> confirmConvertQuote = this.binanceInternalApi.confirmConvertQuote(new BinanceConfirmConvertQuoteRequest(id));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = confirmConvertQuote.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<Object>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$confirmConvertQuote$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(Boolean.TRUE);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Throwable, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$confirmConvertQuote$$inlined$handleError$1
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
}
