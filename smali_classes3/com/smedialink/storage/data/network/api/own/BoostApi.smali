.class public interface abstract Lcom/smedialink/storage/data/network/api/own/BoostApi;
.super Ljava/lang/Object;
.source "BoostApi.kt"


# virtual methods
.method public abstract getDataForSpeedUpCryptoTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/cancel/GetDataForCancelOrBoostCryptoTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/crypto/cancel/GetDataForCancelOrBoostCryptoTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/crypto/cancel/GetDataForCancelOrBoostCryptoTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getDataForSpeedUpCryptoTransaction"
    .end annotation
.end method

.method public abstract sendEthereumSpeedUpTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/cancel/SendEthereumCancelOrBoostTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/crypto/cancel/SendEthereumCancelOrBoostTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/crypto/cancel/SendEthereumCancelOrBoostTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendEthereumSpeedUpTransaction"
    .end annotation
.end method
