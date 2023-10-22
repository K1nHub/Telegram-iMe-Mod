.class public interface abstract Lcom/iMe/storage/data/network/api/own/NftApi;
.super Ljava/lang/Object;
.source "NftApi.kt"


# virtual methods
.method public abstract getOwnNftCollections(Lcom/iMe/storage/data/network/model/request/crypto/nft/OwnNftCollectionsRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/nft/OwnNftCollectionsRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/nft/OwnNftCollectionsRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/nft/OwnNftCollectionsResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "nft/listOwnCollections"
    .end annotation
.end method

.method public abstract getOwnNftItems(Lcom/iMe/storage/data/network/model/request/crypto/nft/OwnNftItemsRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/nft/OwnNftItemsRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/nft/OwnNftItemsRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemsResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "nft/listOwnItems"
    .end annotation
.end method
