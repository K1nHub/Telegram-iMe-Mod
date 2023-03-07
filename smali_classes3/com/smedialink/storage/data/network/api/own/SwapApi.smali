.class public interface abstract Lcom/smedialink/storage/data/network/api/own/SwapApi;
.super Ljava/lang/Object;
.source "SwapApi.kt"


# virtual methods
.method public abstract getApproveTokensInfo(Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getApproveTokensInfo"
    .end annotation
.end method

.method public abstract getAvailableTokensToSwap(Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getAvailableTokensToSwap"
    .end annotation
.end method

.method public abstract getQuoteToSwap(Lcom/smedialink/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getQuoteToSwap"
    .end annotation
.end method

.method public abstract sendCryptoApproveTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendCryptoApproveTransaction"
    .end annotation
.end method

.method public abstract sendCryptoSwapTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendCryptoSwapTransaction"
    .end annotation
.end method
