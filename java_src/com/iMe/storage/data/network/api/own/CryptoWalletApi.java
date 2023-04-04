package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.wallet.LinkWalletAddressRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.SendCryptoTransferTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.UnlinkWalletAddressRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoWalletInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: CryptoWalletApi.kt */
/* loaded from: classes3.dex */
public interface CryptoWalletApi {
    @POST("getCryptoWalletAccountInfo")
    Observable<ApiBaseResponse<CryptoWalletInfoResponse>> getCryptoWalletInfo();

    @POST("linkWalletAddress")
    Observable<ApiBaseResponse<Object>> linkWallet(@Body LinkWalletAddressRequest linkWalletAddressRequest);

    @POST("sendCryptoTransferTransaction")
    Observable<ApiBaseResponse<TransactionResponse>> sendCryptoTransferTransaction(@Body SendCryptoTransferTransactionRequest sendCryptoTransferTransactionRequest);

    @POST("unlinkWalletAddress")
    Observable<ApiBaseResponse<Object>> unlinkWallet(@Body UnlinkWalletAddressRequest unlinkWalletAddressRequest);
}
