package com.iMe.storage.data.network.api.own;

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
import io.reactivex.Observable;
import java.util.List;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: BinanceInternalApi.kt */
/* loaded from: classes4.dex */
public interface BinanceInternalApi {
    @POST("binance/confirmConvertQuote")
    Observable<ApiBaseResponse<Object>> confirmConvertQuote(@Body BinanceConfirmConvertQuoteRequest binanceConfirmConvertQuoteRequest);

    @POST("binance/createCollection")
    Observable<ApiBaseResponse<BinancePayCreateCollectionResponse>> createCollection(@Body BinancePayCreateCollectionRequest binancePayCreateCollectionRequest);

    @POST("binance/getAvailablePaymentTokens")
    Observable<ApiBaseResponse<List<BinancePayGetAvailablePaymentTokensResponse>>> getAvailablePaymentTokens();

    @POST("binance/getAuthTokens")
    Observable<ApiBaseResponse<BinancePayGetAuthTokensResponse>> getBinancePayAuthTokens(@Body BinancePayGetAuthTokensRequest binancePayGetAuthTokensRequest);

    @POST("binance/getSwapSupportCoinsByAssetCode")
    Observable<ApiBaseResponse<List<BinanceGetConvertOppositeSupportTokensResponse>>> getConvertOppositeSupportTokensByAsset(@Body BinanceGetSwapSupportCoinsByAssetCodeRequest binanceGetSwapSupportCoinsByAssetCodeRequest);

    @POST("binance/getConvertQuote")
    Observable<ApiBaseResponse<BinanceGetConvertQuoteResponse>> getConvertQuote(@Body BinanceGetConvertQuoteRequest binanceGetConvertQuoteRequest);

    @POST("binance/getSwapSupportCoinsList")
    Observable<ApiBaseResponse<List<BinanceGetConvertSupportTokensResponse>>> getConvertSupportTokens();

    @POST("binance/getChargeAddress")
    Observable<ApiBaseResponse<BinanceGetTokenReplenishAddressResponse>> getReplenishTokenAddress(@Body BinanceGetTokenReplenishAddressRequest binanceGetTokenReplenishAddressRequest);

    @POST("binance/getAvailableCoinsByNetwork")
    Observable<ApiBaseResponse<List<BinancePayGetAvailablePaymentTokensResponse>>> getTokensForReplenish(@Body BinanceGetAvailableTokensForReplenishRequest binanceGetAvailableTokensForReplenishRequest);

    @POST("binance/getTransaction")
    Observable<ApiBaseResponse<BinancePayGetTransactionHistoryResponse.HistoryItem>> getTransaction(@Body BinancePayGetTransactionRequest binancePayGetTransactionRequest);

    @POST("binance/getTransactionHistory")
    Observable<ApiBaseResponse<BinancePayGetTransactionHistoryResponse>> getTransactionHistory(@Body BinancePayGetTransactionHistoryRequest binancePayGetTransactionHistoryRequest);

    @POST("binance/getFullUserBalance")
    Observable<ApiBaseResponse<List<BinanceTokenBalanceResponse>>> getUserBalance();

    @POST("binance/getUserInfo")
    Observable<ApiBaseResponse<BinancePayGetUserInfoResponse>> getUserInfo();

    @POST("binance/logout")
    Observable<ApiBaseResponse<Object>> logout(@Body BinancePayLogoutRequest binancePayLogoutRequest);
}
