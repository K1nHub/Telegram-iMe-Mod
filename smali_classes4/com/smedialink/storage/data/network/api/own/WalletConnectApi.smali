.class public interface abstract Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;
.super Ljava/lang/Object;
.source "WalletConnectApi.kt"


# virtual methods
.method public abstract getWalletConnectParamsForCryptoTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/wallet_connect/GetParamsForCryptoTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/crypto/wallet_connect/GetParamsForCryptoTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/crypto/wallet_connect/GetParamsForCryptoTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "wallet-connect/getParamsForCryptoTransaction"
    .end annotation
.end method

.method public abstract sendWalletConnectCryptoTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/wallet/SendCryptoTransferTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/crypto/wallet/SendCryptoTransferTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/crypto/wallet/SendCryptoTransferTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "wallet-connect/sendCryptoTransaction"
    .end annotation
.end method
