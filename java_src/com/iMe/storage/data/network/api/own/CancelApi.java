package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.cancel.PrepareSpeedUpOrCancelTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.cancel.SendCancelOrBoostTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.cancel.CancelTransactionDataResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: CancelApi.kt */
/* loaded from: classes3.dex */
public interface CancelApi {
    @POST("prepareCancelTx")
    Observable<ApiBaseResponse<CancelTransactionDataResponse>> getDataForCancelCryptoTransaction(@Body PrepareSpeedUpOrCancelTransactionRequest prepareSpeedUpOrCancelTransactionRequest);

    @POST("sendCancelTx")
    Observable<ApiBaseResponse<TransactionResponse>> sendEthereumCancelTransaction(@Body SendCancelOrBoostTransactionRequest sendCancelOrBoostTransactionRequest);
}
