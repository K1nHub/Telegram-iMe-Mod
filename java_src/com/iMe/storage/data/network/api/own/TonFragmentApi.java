package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentPreparePremiumBuyRequest;
import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentProductBuyPrepareRequest;
import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentProductsRequest;
import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentRecipientByUsernameRequest;
import com.iMe.storage.data.network.model.request.crypto.fragment.TonFragmentSessionsRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentPremiumBuyTransactionParamsResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentPremiumPricesResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentProductBuyTransactionParamsResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentRecipientDataResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentSessionAuthStateResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentSessionDataResponse;
import com.iMe.storage.data.network.model.response.crypto.fragment.TonFragmentUsernamesResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: TonFragmentApi.kt */
/* loaded from: classes3.dex */
public interface TonFragmentApi {
    @POST("fragment/premium/getPremiumPrices")
    Observable<ApiBaseResponse<TonFragmentPremiumPricesResponse>> getPremiumPrices();

    @POST("fragment/premium/searchRecipient")
    Observable<ApiBaseResponse<TonFragmentRecipientDataResponse>> getRecipientByUsername(@Body TonFragmentRecipientByUsernameRequest tonFragmentRecipientByUsernameRequest);

    @POST("fragment/auth/checkTonAuth")
    Observable<ApiBaseResponse<TonFragmentSessionAuthStateResponse>> getSessionAuthState();

    @POST("fragment/auth/initSession")
    Observable<ApiBaseResponse<TonFragmentSessionDataResponse>> getSessionData();

    @POST("fragment/getUsernames")
    Observable<ApiBaseResponse<TonFragmentUsernamesResponse>> getUsernames(@Body TonFragmentProductsRequest tonFragmentProductsRequest);

    @POST("fragment/premium/initPremiumBuy")
    Observable<ApiBaseResponse<TonFragmentPremiumBuyTransactionParamsResponse>> preparePremiumBuyTransaction(@Body TonFragmentPreparePremiumBuyRequest tonFragmentPreparePremiumBuyRequest);

    @POST("fragment/element/buyElementInfoPrepare")
    Observable<ApiBaseResponse<TonFragmentProductBuyTransactionParamsResponse>> prepareProductBuyTransaction(@Body TonFragmentProductBuyPrepareRequest tonFragmentProductBuyPrepareRequest);

    @POST("fragment/auth/sendSessionSignature")
    Observable<ApiBaseResponse<Object>> sendSessionSignature(@Body TonFragmentSessionsRequest tonFragmentSessionsRequest);
}
