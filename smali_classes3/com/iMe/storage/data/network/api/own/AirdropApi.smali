.class public interface abstract Lcom/iMe/storage/data/network/api/own/AirdropApi;
.super Ljava/lang/Object;
.source "AirdropApi.kt"


# virtual methods
.method public abstract checkStart(Lcom/iMe/storage/data/network/model/request/crypto/airdrop/CheckAirdropPromotionStartRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/airdrop/CheckAirdropPromotionStartRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/airdrop/CheckAirdropPromotionStartRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/airdrop/CheckAirdropPromotionStartResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "airdrop/checkStart"
    .end annotation
.end method

.method public abstract getTokens(Lcom/iMe/storage/data/network/model/request/crypto/airdrop/GetTokensByAirdropPromotionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/airdrop/GetTokensByAirdropPromotionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/airdrop/GetTokensByAirdropPromotionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "airdrop/getTokens"
    .end annotation
.end method

.method public abstract register(Lcom/iMe/storage/data/network/model/request/crypto/airdrop/RegisterInAirdropPromotionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/airdrop/RegisterInAirdropPromotionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/airdrop/RegisterInAirdropPromotionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/airdrop/RegisterInAirdropPromotionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "airdrop/register"
    .end annotation
.end method
