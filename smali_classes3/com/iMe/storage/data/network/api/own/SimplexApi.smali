.class public interface abstract Lcom/iMe/storage/data/network/api/own/SimplexApi;
.super Ljava/lang/Object;
.source "SimplexApi.kt"


# virtual methods
.method public abstract createBuyingCryptoPaymentRequest(Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/simplex/CreateBuyingCryptoPaymentResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "createBuyingCryptoPaymentRequest"
    .end annotation
.end method

.method public abstract getBuyingCryptoQuote(Lcom/iMe/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequestList;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequestList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequestList;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/simplex/GetBuyingCryptoQuoteResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getBuyingCryptoQuote"
    .end annotation
.end method
