package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.wallet.SendCryptoTransferTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet_connect.GetParamsForCryptoTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet_connect.ParamsForCryptoTransactionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: WalletConnectApi.kt */
/* loaded from: classes3.dex */
public interface WalletConnectApi {
    @POST("wallet-connect/getParamsForCryptoTransaction")
    Observable<ApiBaseResponse<ParamsForCryptoTransactionResponse>> getWalletConnectParamsForCryptoTransaction(@Body GetParamsForCryptoTransactionRequest getParamsForCryptoTransactionRequest);

    @POST("wallet-connect/sendCryptoTransaction")
    Observable<ApiBaseResponse<TransactionResponse>> sendWalletConnectCryptoTransaction(@Body SendCryptoTransferTransactionRequest sendCryptoTransferTransactionRequest);
}
