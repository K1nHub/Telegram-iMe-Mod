package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.wallet.LinkWalletsRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.PrepareTransferRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.SendTransferTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.UnlinkWalletAddressRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoWalletsInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: CryptoWalletApi.kt */
/* loaded from: classes3.dex */
public interface CryptoWalletApi {
    @POST("prepareTransferTx")
    Observable<ApiBaseResponse<CryptoTransferDataResponse.BTC>> getBTCCryptoTransferData(@Body PrepareTransferRequest prepareTransferRequest);

    @POST("getOwnWallets")
    Observable<ApiBaseResponse<CryptoWalletsInfoResponse>> getCryptoWalletInfo();

    @POST("prepareTransferTx")
    Observable<ApiBaseResponse<CryptoTransferDataResponse.EVM>> getEVMCryptoTransferData(@Body PrepareTransferRequest prepareTransferRequest);

    @POST("prepareTransferTx")
    Observable<ApiBaseResponse<CryptoTransferDataResponse.TON>> getTONCryptoTransferData(@Body PrepareTransferRequest prepareTransferRequest);

    @POST("prepareTransferTx")
    Observable<ApiBaseResponse<CryptoTransferDataResponse.TRON>> getTRONCryptoTransferData(@Body PrepareTransferRequest prepareTransferRequest);

    @POST("linkWallets")
    Observable<ApiBaseResponse<Object>> linkWallet(@Body LinkWalletsRequest linkWalletsRequest);

    @POST("sendTransferTx")
    Observable<ApiBaseResponse<TransactionResponse>> sendCryptoTransferTransaction(@Body SendTransferTransactionRequest sendTransferTransactionRequest);

    @POST("unlinkWallet")
    Observable<ApiBaseResponse<Object>> unlinkWallet(@Body UnlinkWalletAddressRequest unlinkWalletAddressRequest);
}
