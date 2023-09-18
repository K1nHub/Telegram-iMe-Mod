package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.level.ChangeRankVisibilityRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.level.GetAccountLevelResponse;
import com.iMe.storage.data.network.model.response.crypto.level.GetAccountLevelVisibilityResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
/* compiled from: AccountLevelApi.kt */
/* loaded from: classes4.dex */
public interface AccountLevelApi {
    @POST("users/changeRankVisibility")
    Observable<ApiBaseResponse<GetAccountLevelVisibilityResponse>> changeLevelVisibility(@Body ChangeRankVisibilityRequest changeRankVisibilityRequest);

    @GET("users/getAccountRank")
    Observable<ApiBaseResponse<GetAccountLevelResponse>> getAccountLevel(@Query("userId") String str);

    @GET("users/rankVisibility")
    Observable<ApiBaseResponse<GetAccountLevelVisibilityResponse>> getLevelVisibility();
}
