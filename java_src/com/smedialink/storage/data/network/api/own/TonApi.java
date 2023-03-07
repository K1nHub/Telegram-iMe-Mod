package com.smedialink.storage.data.network.api.own;

import com.smedialink.storage.data.network.model.request.crypto.ton.GetParamsForTonCryptoTransferRequest;
import com.smedialink.storage.data.network.model.request.crypto.wallet.SendCryptoTransferTransactionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.ton.ParamsForTonCryptoTransferResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: TonApi.kt */
/* loaded from: classes3.dex */
public interface TonApi {
    @POST("ton/getParamsForCryptoTransfer")
    Observable<ApiBaseResponse<ParamsForTonCryptoTransferResponse>> getParamsForCryptoTransfer(@Body GetParamsForTonCryptoTransferRequest getParamsForTonCryptoTransferRequest);

    @POST("ton/sendCryptoTransferTransaction")
    Observable<ApiBaseResponse<TransactionResponse>> sendCryptoTransferTransaction(@Body SendCryptoTransferTransactionRequest sendCryptoTransferTransactionRequest);
}
