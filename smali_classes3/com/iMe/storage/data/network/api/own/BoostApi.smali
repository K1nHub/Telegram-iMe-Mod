.class public interface abstract Lcom/iMe/storage/data/network/api/own/BoostApi;
.super Ljava/lang/Object;
.source "BoostApi.kt"


# virtual methods
.method public abstract getSpeedUpTransactionData(Lcom/iMe/storage/data/network/model/request/crypto/cancel/PrepareSpeedUpOrCancelTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cancel/PrepareSpeedUpOrCancelTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cancel/PrepareSpeedUpOrCancelTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "prepareSpeedUpTx"
    .end annotation
.end method

.method public abstract sendEthereumSpeedUpTransaction(Lcom/iMe/storage/data/network/model/request/crypto/cancel/SendCancelOrBoostTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cancel/SendCancelOrBoostTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cancel/SendCancelOrBoostTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendSpeedUpTx"
    .end annotation
.end method
