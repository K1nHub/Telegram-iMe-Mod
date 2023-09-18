package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.cancel.PrepareSpeedUpOrCancelTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.cancel.SendCancelOrBoostTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.boost.SpeedUpTransactionDataResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: BoostApi.kt */
/* loaded from: classes4.dex */
public interface BoostApi {
    @POST("prepareSpeedUpTx")
    Observable<ApiBaseResponse<SpeedUpTransactionDataResponse>> getSpeedUpTransactionData(@Body PrepareSpeedUpOrCancelTransactionRequest prepareSpeedUpOrCancelTransactionRequest);

    @POST("sendSpeedUpTx")
    Observable<ApiBaseResponse<TransactionResponse>> sendEthereumSpeedUpTransaction(@Body SendCancelOrBoostTransactionRequest sendCancelOrBoostTransactionRequest);
}
