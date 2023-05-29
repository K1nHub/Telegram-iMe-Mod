.class public interface abstract Lcom/iMe/storage/data/network/api/own/SocialApi;
.super Ljava/lang/Object;
.source "SocialApi.kt"


# virtual methods
.method public abstract getAllSocial(Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/social/SocialNetworksRaw;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "social/networks"
    .end annotation
.end method

.method public abstract logoutSocial(Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/social/SocialBodyRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "social/disconnect"
    .end annotation
.end method
