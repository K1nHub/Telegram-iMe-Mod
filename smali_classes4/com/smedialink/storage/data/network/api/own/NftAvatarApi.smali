.class public interface abstract Lcom/smedialink/storage/data/network/api/own/NftAvatarApi;
.super Ljava/lang/Object;
.source "NftAvatarApi.kt"


# virtual methods
.method public abstract getNtfAvatars()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "nftAvatars/listOwnAvatars"
    .end annotation
.end method
