.class public interface abstract Lcom/iMe/storage/data/network/api/own/CancelApi;
.super Ljava/lang/Object;
.source "CancelApi.kt"


# virtual methods
.method public abstract getDataForCancelCryptoTransaction(Lcom/iMe/storage/data/network/model/request/crypto/cancel/GetDataForCancelOrBoostCryptoTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cancel/GetDataForCancelOrBoostCryptoTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cancel/GetDataForCancelOrBoostCryptoTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getDataForCancelCryptoTransaction"
    .end annotation
.end method

.method public abstract sendEthereumCancelTransaction(Lcom/iMe/storage/data/network/model/request/crypto/cancel/SendEthereumCancelOrBoostTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cancel/SendEthereumCancelOrBoostTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cancel/SendEthereumCancelOrBoostTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendEthereumCancelTransaction"
    .end annotation
.end method
