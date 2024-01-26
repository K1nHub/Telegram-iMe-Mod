.class public interface abstract Lcom/iMe/storage/data/network/api/own/ReactionApi;
.super Ljava/lang/Object;
.source "ReactionApi.kt"


# virtual methods
.method public abstract prepareLikeMessage(Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "prepareLikeMessage"
    .end annotation
.end method
