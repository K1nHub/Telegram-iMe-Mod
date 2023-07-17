package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.swap.AvailableTokensToSwapRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.GetQuoteToSwapRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.SendCryptoApproveTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.SendCryptoSwapTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.swap.TokensApprovalInfoRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.AvailableSwapTokensResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.GetQuoteToSwapResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.TokensApprovalInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: SwapApi.kt */
/* loaded from: classes3.dex */
public interface SwapApi {
    @POST("v2/getAvailableTokensToSwap")
    Observable<ApiBaseResponse<AvailableSwapTokensResponse>> getAvailableTokensToSwap(@Body AvailableTokensToSwapRequest availableTokensToSwapRequest);

    @POST("prepareSwapTx")
    Observable<ApiBaseResponse<GetQuoteToSwapResponse>> getQuoteToSwap(@Body GetQuoteToSwapRequest getQuoteToSwapRequest);

    @POST("v2/getApproveTokensInfo")
    Observable<ApiBaseResponse<TokensApprovalInfoResponse>> getTokensApprovalInfo(@Body TokensApprovalInfoRequest tokensApprovalInfoRequest);

    @POST("sendApproveTx")
    Observable<ApiBaseResponse<TransactionResponse>> sendCryptoApproveTransaction(@Body SendCryptoApproveTransactionRequest sendCryptoApproveTransactionRequest);

    @POST("sendSwapTx")
    Observable<ApiBaseResponse<TransactionResponse>> sendCryptoSwapTransaction(@Body SendCryptoSwapTransactionRequest sendCryptoSwapTransactionRequest);
}
