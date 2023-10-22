.class public interface abstract Lcom/iMe/storage/data/network/api/own/TwitterApi;
.super Ljava/lang/Object;
.source "TwitterApi.kt"


# virtual methods
.method public abstract acceptConnection(Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/oauth/acceptConnection"
    .end annotation
.end method

.method public abstract declineConnection(Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/ChangeTwitterConnectionStatusRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/oauth/declineConnection"
    .end annotation
.end method

.method public abstract getRefreshToken(Lcom/iMe/storage/data/network/model/request/twitter/TwitterRefreshTokenRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/TwitterRefreshTokenRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/TwitterRefreshTokenRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/twitter/RefreshTokenResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/oauth/refreshToken"
    .end annotation
.end method

.method public abstract getSelfChatTwitterProfile(Lcom/iMe/storage/data/network/model/request/twitter/TwitterSelfChatProfileRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/TwitterSelfChatProfileRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/TwitterSelfChatProfileRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/twitter/TwitterProfileResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/getTwitterInfoForMyTelegramChat"
    .end annotation
.end method

.method public abstract getSelfTwitterProfile(Lcom/iMe/storage/data/network/model/request/twitter/CommonTwitterAuthorizedRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/CommonTwitterAuthorizedRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/CommonTwitterAuthorizedRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/twitter/TwitterProfileResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/getMe"
    .end annotation
.end method

.method public abstract getUserByUsername(Lcom/iMe/storage/data/network/model/request/twitter/TwitterUserByUsernameRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/TwitterUserByUsernameRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/TwitterUserByUsernameRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/twitter/TwitterProfileResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/getUserByUsername"
    .end annotation
.end method

.method public abstract getUserTweets(Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/TwitterFeedRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/twitter/TwitterFeedResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/getUserTweets"
    .end annotation
.end method

.method public abstract getUserTwitterProfile(Lcom/iMe/storage/data/network/model/request/twitter/TwitterProfileByTelegramIdRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/TwitterProfileByTelegramIdRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/TwitterProfileByTelegramIdRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/twitter/TwitterProfileResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/getUserByTelegramId"
    .end annotation
.end method

.method public abstract likePost(Lcom/iMe/storage/data/network/model/request/twitter/ChangeTweetLikedStatusRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/ChangeTweetLikedStatusRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/ChangeTweetLikedStatusRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/twitter/TweetLikedStatusResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/likePost"
    .end annotation
.end method

.method public abstract logout(Lcom/iMe/storage/data/network/model/request/twitter/TwitterLogoutRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/TwitterLogoutRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/TwitterLogoutRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/oauth/logout"
    .end annotation
.end method

.method public abstract searchUsersByUsername(Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/TwitterSearchByUsernameRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/twitter/TwitterUserResponse;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/searchUsersByUsername"
    .end annotation
.end method

.method public abstract sendInvite(Lcom/iMe/storage/data/network/model/request/twitter/TwitterInviteRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/TwitterInviteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/TwitterInviteRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/sendInvite"
    .end annotation
.end method

.method public abstract unlikePost(Lcom/iMe/storage/data/network/model/request/twitter/ChangeTweetLikedStatusRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/twitter/ChangeTweetLikedStatusRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/twitter/ChangeTweetLikedStatusRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/twitter/TweetLikedStatusResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "twitter/unlikePost"
    .end annotation
.end method
