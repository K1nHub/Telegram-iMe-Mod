package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.social.SocialBodyRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.social.SocialNetworksRaw;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: SocialApi.kt */
/* loaded from: classes4.dex */
public interface SocialApi {
    @POST("social/networks")
    Observable<ApiBaseResponse<SocialNetworksRaw>> getAllSocial(@Body SocialBodyRequest socialBodyRequest);

    @POST("social/disconnect")
    Observable<ApiBaseResponse<Object>> logoutSocial(@Body SocialBodyRequest socialBodyRequest);
}
