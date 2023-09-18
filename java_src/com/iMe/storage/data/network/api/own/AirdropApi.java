package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.airdrop.CheckAirdropPromotionStartRequest;
import com.iMe.storage.data.network.model.request.crypto.airdrop.GetTokensByAirdropPromotionRequest;
import com.iMe.storage.data.network.model.request.crypto.airdrop.RegisterInAirdropPromotionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.airdrop.CheckAirdropPromotionStartResponse;
import com.iMe.storage.data.network.model.response.crypto.airdrop.RegisterInAirdropPromotionResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: AirdropApi.kt */
/* loaded from: classes4.dex */
public interface AirdropApi {
    @POST("airdrop/checkStart")
    Observable<ApiBaseResponse<CheckAirdropPromotionStartResponse>> checkStart(@Body CheckAirdropPromotionStartRequest checkAirdropPromotionStartRequest);

    @POST("airdrop/getTokens")
    Observable<ApiBaseResponse<Object>> getTokens(@Body GetTokensByAirdropPromotionRequest getTokensByAirdropPromotionRequest);

    @POST("airdrop/register")
    Observable<ApiBaseResponse<RegisterInAirdropPromotionResponse>> register(@Body RegisterInAirdropPromotionRequest registerInAirdropPromotionRequest);
}
