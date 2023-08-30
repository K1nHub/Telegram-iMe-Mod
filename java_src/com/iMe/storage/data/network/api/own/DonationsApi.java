package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.donations.GetDonationInfoRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.GetDonationTransactionsRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.GetDonationWalletBalanceRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.LinkDonationWalletRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.PrepareDonationTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.SendDonationTransactionRequest;
import com.iMe.storage.data.network.model.request.crypto.donations.UnlinkDonationWalletRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.donations.DataForDonationTransactionResponse;
import com.iMe.storage.data.network.model.response.crypto.donations.GetDonationWalletInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.donations.IsDonationsEnableResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletTransactionsResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: DonationsApi.kt */
/* loaded from: classes3.dex */
public interface DonationsApi {
    @POST("donation/getWallets")
    Observable<ApiBaseResponse<GetDonationWalletInfoResponse>> getChatInfo(@Body GetDonationInfoRequest getDonationInfoRequest);

    @POST("donation/prepareTransferTx")
    Observable<ApiBaseResponse<DataForDonationTransactionResponse>> getDataForDonationTransaction(@Body PrepareDonationTransactionRequest prepareDonationTransactionRequest);

    @POST("donation/getDonationTransactions")
    Observable<ApiBaseResponse<WalletTransactionsResponse>> getDonationTransactions(@Body GetDonationTransactionsRequest getDonationTransactionsRequest);

    @POST("donation/v2/getWalletBalance")
    Observable<ApiBaseResponse<WalletBalancesResponse>> getDonationWalletBalance(@Body GetDonationWalletBalanceRequest getDonationWalletBalanceRequest);

    @POST("donation/isDonationEnabled")
    Observable<ApiBaseResponse<IsDonationsEnableResponse>> isDonationsEnable(@Body GetDonationInfoRequest getDonationInfoRequest);

    @POST("donation/linkWallet")
    Observable<ApiBaseResponse<Object>> linkEtherWallet(@Body LinkDonationWalletRequest linkDonationWalletRequest);

    @POST("donation/sendTransferTx")
    Observable<ApiBaseResponse<TransactionResponse>> sendDonationTransaction(@Body SendDonationTransactionRequest sendDonationTransactionRequest);

    @POST("donation/unlinkWallet")
    Observable<ApiBaseResponse<Object>> unlinkEtherWallet(@Body UnlinkDonationWalletRequest unlinkDonationWalletRequest);
}
