package com.smedialink.storage.data.network.api.own;

import com.smedialink.storage.data.network.model.request.crypto.simplex.CreateBuyingCryptoPaymentRequest;
import com.smedialink.storage.data.network.model.request.crypto.simplex.GetBuyingCryptoQuoteRequestList;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.simplex.CreateBuyingCryptoPaymentResponse;
import com.smedialink.storage.data.network.model.response.crypto.simplex.GetBuyingCryptoQuoteResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: SimplexApi.kt */
/* loaded from: classes3.dex */
public interface SimplexApi {
    @POST("createBuyingCryptoPaymentRequest")
    Observable<ApiBaseResponse<CreateBuyingCryptoPaymentResponse>> createBuyingCryptoPaymentRequest(@Body CreateBuyingCryptoPaymentRequest createBuyingCryptoPaymentRequest);

    @POST("getBuyingCryptoQuote")
    Observable<ApiBaseResponse<GetBuyingCryptoQuoteResponse>> getBuyingCryptoQuote(@Body GetBuyingCryptoQuoteRequestList getBuyingCryptoQuoteRequestList);
}
