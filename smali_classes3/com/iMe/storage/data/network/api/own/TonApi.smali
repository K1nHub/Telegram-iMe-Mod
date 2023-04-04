.class public interface abstract Lcom/iMe/storage/data/network/api/own/TonApi;
.super Ljava/lang/Object;
.source "TonApi.kt"


# virtual methods
.method public abstract getParamsForCryptoTransfer(Lcom/iMe/storage/data/network/model/request/crypto/ton/GetParamsForTonCryptoTransferRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/ton/GetParamsForTonCryptoTransferRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/ton/GetParamsForTonCryptoTransferRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "ton/getParamsForCryptoTransfer"
    .end annotation
.end method

.method public abstract sendCryptoTransferTransaction(Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendCryptoTransferTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendCryptoTransferTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendCryptoTransferTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "ton/sendCryptoTransferTransaction"
    .end annotation
.end method
