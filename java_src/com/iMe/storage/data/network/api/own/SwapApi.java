package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.swap.GetQuoteToSwapRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.NetworkAndProtocolSwapRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.SendCryptoApproveTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.SendCryptoSwapTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.AvailableSwapTokensResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.GetApproveTokensInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.GetQuoteToSwapResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: SwapApi.kt */
/* loaded from: classes3.dex */
public interface SwapApi {
    @POST("getApproveTokensInfo")
    Observable<ApiBaseResponse<GetApproveTokensInfoResponse>> getApproveTokensInfo(@Body NetworkAndProtocolSwapRequest networkAndProtocolSwapRequest);

    @POST("getAvailableTokensToSwap")
    Observable<ApiBaseResponse<AvailableSwapTokensResponse>> getAvailableTokensToSwap(@Body NetworkAndProtocolSwapRequest networkAndProtocolSwapRequest);

    @POST("getQuoteToSwap")
    Observable<ApiBaseResponse<GetQuoteToSwapResponse>> getQuoteToSwap(@Body GetQuoteToSwapRequest getQuoteToSwapRequest);

    @POST("sendCryptoApproveTransaction")
    Observable<ApiBaseResponse<TransactionResponse>> sendCryptoApproveTransaction(@Body SendCryptoApproveTransactionRequest sendCryptoApproveTransactionRequest);

    @POST("sendCryptoSwapTransaction")
    Observable<ApiBaseResponse<TransactionResponse>> sendCryptoSwapTransaction(@Body SendCryptoSwapTransactionRequest sendCryptoSwapTransactionRequest);
}
