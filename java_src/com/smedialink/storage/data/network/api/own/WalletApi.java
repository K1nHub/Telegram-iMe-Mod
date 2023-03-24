package com.smedialink.storage.data.network.api.own;

import com.smedialink.storage.data.network.model.request.crypto.wallet.GetDataForCryptoTransferRequest;
import com.smedialink.storage.data.network.model.request.wallet.ActivateWalletRequest;
import com.smedialink.storage.data.network.model.request.wallet.GetTokensBalanceRequest;
import com.smedialink.storage.data.network.model.request.wallet.GetWalletTransactionsRequest;
import com.smedialink.storage.data.network.model.request.wallet.RefreshTokenRequest;
import com.smedialink.storage.data.network.model.request.wallet.SessionTokensRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse;
import com.smedialink.storage.data.network.model.response.wallet.SessionTokensResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletTransactionsResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: WalletApi.kt */
/* loaded from: classes3.dex */
public interface WalletApi {
    @POST("firstWalletActivation")
    Observable<ApiBaseResponse<Object>> activateWallet(@Body ActivateWalletRequest activateWalletRequest);

    @POST("auth/issueTokens")
    Observable<ApiBaseResponse<SessionTokensResponse>> getAuthTokensByTelegramLoginData(@Body SessionTokensRequest sessionTokensRequest);

    @POST("getParamsForCryptoTransfer")
    Observable<ApiBaseResponse<CryptoTransferDataResponse.EVM>> getEVMCryptoTransferData(@Body GetDataForCryptoTransferRequest getDataForCryptoTransferRequest);

    @POST("tron/getParamsForCryptoTransfer")
    Observable<ApiBaseResponse<CryptoTransferDataResponse.TRON>> getTRONCryptoTransferData(@Body GetDataForCryptoTransferRequest getDataForCryptoTransferRequest);

    @POST("getWalletBalance")
    Observable<ApiBaseResponse<WalletBalancesResponse>> getWalletTokensBalance(@Body GetTokensBalanceRequest getTokensBalanceRequest);

    @POST("getWalletTransactions")
    Observable<ApiBaseResponse<WalletTransactionsResponse>> getWalletTransactions(@Body GetWalletTransactionsRequest getWalletTransactionsRequest);

    @POST("auth/refreshTokens")
    Observable<ApiBaseResponse<SessionTokensResponse>> refreshToken(@Body RefreshTokenRequest refreshTokenRequest);
}
