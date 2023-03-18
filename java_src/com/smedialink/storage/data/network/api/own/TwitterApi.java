package com.smedialink.storage.data.network.api.own;

import com.smedialink.storage.data.network.model.request.twitter.ChangeTweetLikedStatusRequest;
import com.smedialink.storage.data.network.model.request.twitter.ChangeTwitterConnectionStatusRequest;
import com.smedialink.storage.data.network.model.request.twitter.CommonTwitterAuthorizedRequest;
import com.smedialink.storage.data.network.model.request.twitter.TwitterFeedRequest;
import com.smedialink.storage.data.network.model.request.twitter.TwitterInviteRequest;
import com.smedialink.storage.data.network.model.request.twitter.TwitterLogoutRequest;
import com.smedialink.storage.data.network.model.request.twitter.TwitterProfileByTelegramIdRequest;
import com.smedialink.storage.data.network.model.request.twitter.TwitterRefreshTokenRequest;
import com.smedialink.storage.data.network.model.request.twitter.TwitterSearchByUsernameRequest;
import com.smedialink.storage.data.network.model.request.twitter.TwitterSelfChatProfileRequest;
import com.smedialink.storage.data.network.model.request.twitter.TwitterUserByUsernameRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.twitter.RefreshTokenResponse;
import com.smedialink.storage.data.network.model.response.twitter.TweetLikedStatusResponse;
import com.smedialink.storage.data.network.model.response.twitter.TwitterFeedResponse;
import com.smedialink.storage.data.network.model.response.twitter.TwitterProfileResponse;
import com.smedialink.storage.data.network.model.response.twitter.TwitterUserResponse;
import io.reactivex.Observable;
import java.util.List;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: TwitterApi.kt */
/* loaded from: classes3.dex */
public interface TwitterApi {
    @POST("twitter/oauth/acceptConnection")
    Observable<ApiBaseResponse<Object>> acceptConnection(@Body ChangeTwitterConnectionStatusRequest changeTwitterConnectionStatusRequest);

    @POST("twitter/oauth/declineConnection")
    Observable<ApiBaseResponse<Object>> declineConnection(@Body ChangeTwitterConnectionStatusRequest changeTwitterConnectionStatusRequest);

    @POST("twitter/oauth/refreshToken")
    Observable<ApiBaseResponse<RefreshTokenResponse>> getRefreshToken(@Body TwitterRefreshTokenRequest twitterRefreshTokenRequest);

    @POST("twitter/getTwitterInfoForMyTelegramChat")
    Observable<ApiBaseResponse<TwitterProfileResponse>> getSelfChatTwitterProfile(@Body TwitterSelfChatProfileRequest twitterSelfChatProfileRequest);

    @POST("twitter/getMe")
    Observable<ApiBaseResponse<TwitterProfileResponse>> getSelfTwitterProfile(@Body CommonTwitterAuthorizedRequest commonTwitterAuthorizedRequest);

    @POST("twitter/getUserByUsername")
    Observable<ApiBaseResponse<TwitterProfileResponse>> getUserByUsername(@Body TwitterUserByUsernameRequest twitterUserByUsernameRequest);

    @POST("twitter/getUserTweets")
    Observable<ApiBaseResponse<TwitterFeedResponse>> getUserTweets(@Body TwitterFeedRequest twitterFeedRequest);

    @POST("twitter/getUserByTelegramId")
    Observable<ApiBaseResponse<TwitterProfileResponse>> getUserTwitterProfile(@Body TwitterProfileByTelegramIdRequest twitterProfileByTelegramIdRequest);

    @POST("twitter/likePost")
    Observable<ApiBaseResponse<TweetLikedStatusResponse>> likePost(@Body ChangeTweetLikedStatusRequest changeTweetLikedStatusRequest);

    @POST("twitter/oauth/logout")
    Observable<ApiBaseResponse<Object>> logout(@Body TwitterLogoutRequest twitterLogoutRequest);

    @POST("twitter/searchUsersByUsername")
    Observable<ApiBaseResponse<List<TwitterUserResponse>>> searchUsersByUsername(@Body TwitterSearchByUsernameRequest twitterSearchByUsernameRequest);

    @POST("twitter/sendInvite")
    Observable<ApiBaseResponse<Object>> sendInvite(@Body TwitterInviteRequest twitterInviteRequest);

    @POST("twitter/unlikePost")
    Observable<ApiBaseResponse<TweetLikedStatusResponse>> unlikePost(@Body ChangeTweetLikedStatusRequest changeTweetLikedStatusRequest);
}
