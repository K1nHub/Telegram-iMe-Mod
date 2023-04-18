package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.cancel.GetDataForCancelOrBoostCryptoTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.cancel.SendEthereumCancelOrBoostTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.cancel.GetCancelTransactionDataResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: CancelApi.kt */
/* loaded from: classes3.dex */
public interface CancelApi {
    @POST("getDataForCancelCryptoTransaction")
    Observable<ApiBaseResponse<GetCancelTransactionDataResponse>> getDataForCancelCryptoTransaction(@Body GetDataForCancelOrBoostCryptoTransactionRequest getDataForCancelOrBoostCryptoTransactionRequest);

    @POST("sendEthereumCancelTransaction")
    Observable<ApiBaseResponse<TransactionResponse>> sendEthereumCancelTransaction(@Body SendEthereumCancelOrBoostTransactionRequest sendEthereumCancelOrBoostTransactionRequest);
}