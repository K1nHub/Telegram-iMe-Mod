package com.smedialink.storage.data.repository.binancepay;

import com.smedialink.storage.data.locale.prefs.model.binancepay.BinanceUserInfoMetadata;
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
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.data.utils.extentions.RxExtKt$sam$i$io_reactivex_functions_Function$0;
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
        Observable<R> map = this.binanceInternalApi.getBinancePayAuthTokens(new BinancePayGetAuthTokensRequest(type.name(), value)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1712xd95ca9e(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BinanceAuthTokens>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1711x882b41c3(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceUserInfo>> getUserInfo(boolean z) {
        Result success;
        BinanceUserInfoMetadata binanceUserInfo = this.cryptoPreferenceHelper.getBinanceUserInfo();
        if (!z) {
            BinanceUserInfo info = binanceUserInfo.getInfo();
            if (info != null && (success = Result.Companion.success(info)) != null) {
                Observable<Result<BinanceUserInfo>> just = Observable.just(success);
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                if (just != null) {
                    return just;
                }
            }
            return getUserInfo(true);
        }
        Observable<R> map = this.binanceInternalApi.getUserInfo().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BinanceUserInfo>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new BinanceInternalRepositoryImpl$getUserInfo$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<Boolean>> logout(String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Observable<R> map = this.binanceInternalApi.logout(new BinancePayLogoutRequest(accessToken)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new BinanceInternalRepositoryImpl$logout$$inlined$mapSuccess$1(this.firebaseErrorHandler, this)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new BinanceInternalRepositoryImpl$logout$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTransaction>>> getTransactionHistory(int i, String str, String str2) {
        Observable<R> map = this.binanceInternalApi.getTransactionHistory(new BinancePayGetTransactionHistoryRequest(i, str, str2)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1726x8c7adf12(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BinanceTransaction>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1725xe5e8bbcf(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceTransaction>> getTransaction(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<R> map = this.binanceInternalApi.getTransaction(new BinancePayGetTransactionRequest(id)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1724xfc623e5c(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BinanceTransaction>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1723x72ed45c5(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenBalanceInfo>>> getUserBalance() {
        Observable<R> map = this.binanceInternalApi.getUserBalance().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1728x7a4e23cf(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BinanceTokenBalanceInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1727xb27e0eb2(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenInfo>>> getAvailablePaymentTokens() {
        Observable<R> map = this.binanceInternalApi.getAvailablePaymentTokens().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1714x472b07f3(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BinanceTokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1713x813daf0e(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceCollectionOrder>> createCollection(long j, double d, String currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        String valueOf = String.valueOf(j);
        String plainString = new BigDecimal(String.valueOf(d)).stripTrailingZeros().toPlainString();
        Intrinsics.checkNotNullExpressionValue(plainString, "BigDecimal(amount.toStri…ngZeros().toPlainString()");
        Observable<R> map = this.binanceInternalApi.createCollection(new BinancePayCreateCollectionRequest(valueOf, plainString, currency, null, null, 24, null)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1708x1747962e(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BinanceCollectionOrder>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1707xb4b2e833(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<String>> getAddressForTokenReplenish(TokenCode tokenCode, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<R> map = this.binanceInternalApi.getReplenishTokenAddress(new BinanceGetTokenReplenishAddressRequest(tokenCode.getName(), networkType.name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1710xbc9349be(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<String>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1709xb8dda6a3(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenInfo>>> getTokensForReplenish(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<R> map = this.binanceInternalApi.getTokensForReplenish(new BinanceGetAvailableTokensForReplenishRequest(networkType.name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1722x563b2d93(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BinanceTokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1721x54323d6e(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<BinanceTokenInfo>>> getTokensForConvert() {
        Observable<R> map = this.binanceInternalApi.getConvertSupportTokens().map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1720xc5934260(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<BinanceTokenInfo>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1719xcfdcc241(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<List<OutputConvertToken>>> getOppositeTokensForConvertByToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<R> map = this.binanceInternalApi.getConvertOppositeSupportTokensByAsset(new BinanceGetSwapSupportCoinsByAssetCodeRequest(token)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1718x2513dab5(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<List<OutputConvertToken>>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1717x606f348c(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<BinanceConvertQuote>> getConvertQuote(String inputToken, String outputToken, String amount) {
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<R> map = this.binanceInternalApi.getConvertQuote(new BinanceGetConvertQuoteRequest(inputToken, outputToken, TradeType.EXACT_INPUT.getValue(), amount)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1716x58ad22c5(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<BinanceConvertQuote>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1715x9ffeee7c(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.smedialink.storage.domain.repository.binancepay.BinanceInternalRepository
    public Observable<Result<Boolean>> confirmConvertQuote(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<R> map = this.binanceInternalApi.confirmConvertQuote(new BinanceConfirmConvertQuoteRequest(id)).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1706x32bcab2f(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Boolean>> onErrorReturn = map.onErrorReturn(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C1705x7e07352(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
