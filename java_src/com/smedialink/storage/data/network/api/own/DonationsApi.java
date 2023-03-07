package com.smedialink.storage.data.network.api.own;

import com.smedialink.storage.data.network.model.request.crypto.donations.GetDataForDonationTransactionRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.GetDonationInfoRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.GetDonationTransactionsRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.GetDonationWalletBalanceRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.LinkDonationWalletRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.SendDonationTransactionRequest;
import com.smedialink.storage.data.network.model.request.crypto.donations.UnlinkDonationWalletRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.donations.DataForDonationTransactionResponse;
import com.smedialink.storage.data.network.model.response.crypto.donations.GetChatInfoResponse;
import com.smedialink.storage.data.network.model.response.crypto.donations.IsDonationsEnableResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletTransactionsResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: DonationsApi.kt */
/* loaded from: classes3.dex */
public interface DonationsApi {
    @POST("donation/getChatInfo")
    Observable<ApiBaseResponse<GetChatInfoResponse>> getChatInfo(@Body GetDonationInfoRequest getDonationInfoRequest);

    @POST("donation/getParamsForCryptoTransfer")
    Observable<ApiBaseResponse<DataForDonationTransactionResponse>> getDataForDonationTransaction(@Body GetDataForDonationTransactionRequest getDataForDonationTransactionRequest);

    @POST("donation/getDonationTransactions")
    Observable<ApiBaseResponse<WalletTransactionsResponse>> getDonationTransactions(@Body GetDonationTransactionsRequest getDonationTransactionsRequest);

    @POST("donation/getWalletBalance")
    Observable<ApiBaseResponse<WalletBalancesResponse>> getDonationWalletBalance(@Body GetDonationWalletBalanceRequest getDonationWalletBalanceRequest);

    @POST("donation/isDonationEnabled")
    Observable<ApiBaseResponse<IsDonationsEnableResponse>> isDonationsEnable(@Body GetDonationInfoRequest getDonationInfoRequest);

    @POST("donation/linkEtherWallet")
    Observable<ApiBaseResponse<Object>> linkEtherWallet(@Body LinkDonationWalletRequest linkDonationWalletRequest);

    @POST("donation/sendTransfer")
    Observable<ApiBaseResponse<TransactionResponse>> sendDonationTransaction(@Body SendDonationTransactionRequest sendDonationTransactionRequest);

    @POST("donation/unlinkEtherWallet")
    Observable<ApiBaseResponse<Object>> unlinkEtherWallet(@Body UnlinkDonationWalletRequest unlinkDonationWalletRequest);
}
