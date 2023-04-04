package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.cancel.GetDataForCancelOrBoostCryptoTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.cancel.SendEthereumCancelOrBoostTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.boost.GetBoostTransactionDataResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: BoostApi.kt */
/* loaded from: classes3.dex */
public interface BoostApi {
    @POST("getDataForSpeedUpCryptoTransaction")
    Observable<ApiBaseResponse<GetBoostTransactionDataResponse>> getDataForSpeedUpCryptoTransaction(@Body GetDataForCancelOrBoostCryptoTransactionRequest getDataForCancelOrBoostCryptoTransactionRequest);

    @POST("sendEthereumSpeedUpTransaction")
    Observable<ApiBaseResponse<TransactionResponse>> sendEthereumSpeedUpTransaction(@Body SendEthereumCancelOrBoostTransactionRequest sendEthereumCancelOrBoostTransactionRequest);
}
