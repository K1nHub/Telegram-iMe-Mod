package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.simplex.CreateBuyingCryptoPaymentRequest;
import com.iMe.storage.data.network.model.request.crypto.simplex.GetBuyingCryptoQuoteRequestList;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.simplex.CreateBuyingCryptoPaymentResponse;
import com.iMe.storage.data.network.model.response.crypto.simplex.GetBuyingCryptoQuoteResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: SimplexApi.kt */
/* loaded from: classes4.dex */
public interface SimplexApi {
    @POST("createBuyingCryptoPaymentRequest")
    Observable<ApiBaseResponse<CreateBuyingCryptoPaymentResponse>> createBuyingCryptoPaymentRequest(@Body CreateBuyingCryptoPaymentRequest createBuyingCryptoPaymentRequest);

    @POST("getBuyingCryptoQuote")
    Observable<ApiBaseResponse<GetBuyingCryptoQuoteResponse>> getBuyingCryptoQuote(@Body GetBuyingCryptoQuoteRequestList getBuyingCryptoQuoteRequestList);
}
