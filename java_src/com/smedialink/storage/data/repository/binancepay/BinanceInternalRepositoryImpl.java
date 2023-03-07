package com.smedialink.storage.data.repository.binancepay;

import com.smedialink.storage.data.locale.prefs.model.binancepay.BinanceUserInfoMetadata;
import com.smedialink.storage.data.mapper.binancepay.BinanceMappingKt;
import com.smedialink.storage.data.mapper.binancepay.BinancePayMappingKt;
import com.smedialink.storage.data.network.api.own.BinanceInternalApi;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.binance.BinanceConfirmConvertQuoteRequest;
import com.smedialink.storage.data.network.model.request.binance.BinanceGetConvertQuoteRequest;
import com.smedialink.storage.data.network.model.request.binance.BinanceGetSwapSupportCoinsByAssetCodeRequest;
import com.smedialink.storage.data.network.model.request.binance.BinanceGetTokenReplenishAddressRequest;
import com.smedialink.storage.data.network.model.request.binance.pay.BinanceGetAvailableTokensForReplenishRequest;
import com.smedialink.storage.data.network.model.request.binance.pay.BinancePayCreateCollectionRequest;
import com.smedialink.storage.data.network.model.request.binance.pay.BinancePayGetAuthTokensRequest;
import com.smedialink.storage.data.network.model.request.binance.pay.BinancePayGetTransactionHistoryRequest;
import com.smedialink.storage.data.network.model.request.binance.pay.BinancePayGetTransactionRequest;
import com.smedialink.storage.data.network.model.request.binance.pay.BinancePayLogoutRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.binance.BinanceGetConvertOppositeSupportTokensResponse;
import com.smedialink.storage.data.network.model.response.binance.BinanceGetConvertQuoteResponse;
import com.smedialink.storage.data.network.model.response.binance.BinanceGetConvertSupportTokensResponse;
import com.smedialink.storage.data.network.model.response.binance.BinanceGetTokenReplenishAddressResponse;
import com.smedialink.storage.data.network.model.response.binance.pay.BinancePayCreateCollectionResponse;
import com.smedialink.storage.data.network.model.response.binance.pay.BinancePayGetAuthTokensResponse;
import com.smedialink.storage.data.network.model.response.binance.pay.BinancePayGetAvailablePaymentTokensResponse;
import com.smedialink.storage.data.network.model.response.binance.pay.BinancePayGetTransactionHistoryResponse;
import com.smedialink.storage.data.network.model.response.binance.pay.BinancePayGetUserInfoResponse;
import com.smedialink.storage.data.network.model.response.binance.pay.BinanceTokenBalanceResponse;
import com.smedialink.storage.data.utils.extentions.RxExtKt$handleError$1;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceAuthTokens;
import com.smedialink.storage.domain.model.binancepay.BinanceCollectionOrder;
import com.smedialink.storage.domain.model.binancepay.BinanceConvertQuote;
import com.smedialink.storage.domain.model.binancepay.BinancePayAuthType;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenInfo;
import com.smedialink.storage.domain.model.binancepay.BinanceTransaction;
import com.smedialink.storage.domain.model.binancepay.BinanceUserInfo;
import com.smedialink.storage.domain.model.binancepay.OutputConvertToken;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.swap.TradeType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.math.BigDecimal;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceInternalRepositoryImpl.kt */
/* loaded from: classes3.dex */
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

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceAuthTokens>> getAuthTokens(BinancePayAuthType type, String value) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(value, "value");
        Observable<ApiBaseResponse<BinancePayGetAuthTokensResponse>> binancePayAuthTokens = this.binanceInternalApi.getBinancePayAuthTokens(new BinancePayGetAuthTokensRequest(type.name(), value));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = binancePayAuthTokens.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getAuthTokens$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                BinanceAuthTokens mapToDomain = BinancePayMappingKt.mapToDomain((BinancePayGetAuthTokensResponse) response.getPayload());
                cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                cryptoPreferenceHelper.setBinanceAuthSession(BinancePayMappingKt.mapToPrefs(mapToDomain));
                return Result.Companion.success(mapToDomain);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BinanceAuthTokens>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceUserInfo>> getUserInfo(boolean z) {
        Result success;
        Observable<Result<BinanceUserInfo>> just;
        BinanceUserInfoMetadata binanceUserInfo = this.cryptoPreferenceHelper.getBinanceUserInfo();
        if (z) {
            Observable<ApiBaseResponse<BinancePayGetUserInfoResponse>> userInfo = this.binanceInternalApi.getUserInfo();
            final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
            Observable<R> map = userInfo.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1
                /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
                @Override // io.reactivex.functions.Function
                public final Result apply(ApiBaseResponse response) {
                    CryptoPreferenceHelper cryptoPreferenceHelper;
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (!response.isSuccess()) {
                        return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                    }
                    BinanceUserInfo mapToDomain = BinancePayMappingKt.mapToDomain((BinancePayGetUserInfoResponse) response.getPayload());
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper.setBinanceUserInfo(BinancePayMappingKt.mapToPrefs(mapToDomain));
                    return Result.Companion.success(mapToDomain);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
            Observable<Result<BinanceUserInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
            Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
            return onErrorReturn;
        }
        BinanceUserInfo info = binanceUserInfo.getInfo();
        if (info == null || (success = Result.Companion.success(info)) == null) {
            just = null;
        } else {
            just = Observable.just(success);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        }
        return just == null ? getUserInfo(true) : just;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<Boolean>> logout(String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Observable<ApiBaseResponse<Object>> logout = this.binanceInternalApi.logout(new BinancePayLogoutRequest(accessToken));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = logout.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$logout$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    cryptoPreferenceHelper.resetBinanceAccount();
                    return Result.Companion.success(Boolean.TRUE);
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTransaction>>> getTransactionHistory(int i, String str, String str2) {
        Observable<ApiBaseResponse<BinancePayGetTransactionHistoryResponse>> transactionHistory = this.binanceInternalApi.getTransactionHistory(new BinancePayGetTransactionHistoryRequest(i, str, str2));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = transactionHistory.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTransactionHistory$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomain((BinancePayGetTransactionHistoryResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BinanceTransaction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceTransaction>> getTransaction(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<ApiBaseResponse<BinancePayGetTransactionHistoryResponse.HistoryItem>> transaction = this.binanceInternalApi.getTransaction(new BinancePayGetTransactionRequest(id));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = transaction.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTransaction$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomain((BinancePayGetTransactionHistoryResponse.HistoryItem) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BinanceTransaction>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenBalanceInfo>>> getUserBalance() {
        Observable<ApiBaseResponse<List<BinanceTokenBalanceResponse>>> userBalance = this.binanceInternalApi.getUserBalance();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = userBalance.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getUserBalance$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomainBinanceTokenBalanceResponse((List) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BinanceTokenBalanceInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenInfo>>> getAvailablePaymentTokens() {
        Observable<ApiBaseResponse<List<BinancePayGetAvailablePaymentTokensResponse>>> availablePaymentTokens = this.binanceInternalApi.getAvailablePaymentTokens();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = availablePaymentTokens.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getAvailablePaymentTokens$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomain((List) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BinanceTokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceCollectionOrder>> createCollection(long j, double d, String currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        String valueOf = String.valueOf(j);
        String plainString = new BigDecimal(String.valueOf(d)).stripTrailingZeros().toPlainString();
        Intrinsics.checkNotNullExpressionValue(plainString, "BigDecimal(amount.toStri…ngZeros().toPlainString()");
        Observable<ApiBaseResponse<BinancePayCreateCollectionResponse>> createCollection = this.binanceInternalApi.createCollection(new BinancePayCreateCollectionRequest(valueOf, plainString, currency, null, null, 24, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = createCollection.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$createCollection$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomain((BinancePayCreateCollectionResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BinanceCollectionOrder>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<String>> getAddressForTokenReplenish(TokenCode tokenCode, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<ApiBaseResponse<BinanceGetTokenReplenishAddressResponse>> replenishTokenAddress = this.binanceInternalApi.getReplenishTokenAddress(new BinanceGetTokenReplenishAddressRequest(tokenCode.getName(), networkType.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = replenishTokenAddress.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getAddressForTokenReplenish$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(((BinanceGetTokenReplenishAddressResponse) response.getPayload()).getAddress());
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenInfo>>> getTokensForReplenish(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<ApiBaseResponse<List<BinancePayGetAvailablePaymentTokensResponse>>> tokensForReplenish = this.binanceInternalApi.getTokensForReplenish(new BinanceGetAvailableTokensForReplenishRequest(networkType.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = tokensForReplenish.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTokensForReplenish$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinancePayMappingKt.mapToDomain((List) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BinanceTokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenInfo>>> getTokensForConvert() {
        Observable<ApiBaseResponse<List<BinanceGetConvertSupportTokensResponse>>> convertSupportTokens = this.binanceInternalApi.getConvertSupportTokens();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = convertSupportTokens.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getTokensForConvert$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinanceMappingKt.mapToDomain((List) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BinanceTokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<OutputConvertToken>>> getOppositeTokensForConvertByToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<ApiBaseResponse<List<BinanceGetConvertOppositeSupportTokensResponse>>> convertOppositeSupportTokensByAsset = this.binanceInternalApi.getConvertOppositeSupportTokensByAsset(new BinanceGetSwapSupportCoinsByAssetCodeRequest(token));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = convertOppositeSupportTokensByAsset.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getOppositeTokensForConvertByToken$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinanceMappingKt.mapToDomainBinanceGetConvertOppositeSupportTokensResponse((List) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<OutputConvertToken>>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceConvertQuote>> getConvertQuote(String inputToken, String outputToken, String amount) {
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<ApiBaseResponse<BinanceGetConvertQuoteResponse>> convertQuote = this.binanceInternalApi.getConvertQuote(new BinanceGetConvertQuoteRequest(inputToken, outputToken, TradeType.EXACT_INPUT.getValue(), amount));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = convertQuote.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$getConvertQuote$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(BinanceMappingKt.mapToDomain((BinanceGetConvertQuoteResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BinanceConvertQuote>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<Boolean>> confirmConvertQuote(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<ApiBaseResponse<Object>> confirmConvertQuote = this.binanceInternalApi.confirmConvertQuote(new BinanceConfirmConvertQuoteRequest(id));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = confirmConvertQuote.map(new Function() { // from class: com.smedialink.storage.data.repository.binancepay.BinanceInternalRepositoryImpl$confirmConvertQuote$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(Boolean.TRUE);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$handleError$1(this.errorHandler));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
