package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.reaction.ReactionMessageResult;
import com.iMe.storage.data.network.model.request.reaction.ReactionRequestData;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: ReactionApi.kt */
/* loaded from: classes4.dex */
public interface ReactionApi {
    @POST("prepareLikeMessage")
    Observable<ApiBaseResponse<ReactionMessageResult>> prepareLikeMessage(@Body ReactionRequestData reactionRequestData);
}
