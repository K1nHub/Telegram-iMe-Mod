.class public interface abstract Lcom/iMe/storage/data/network/api/own/SwapApi;
.super Ljava/lang/Object;
.source "SwapApi.kt"


# virtual methods
.method public abstract getAvailableTokensToSwap(Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/getAvailableTokensToSwap"
    .end annotation
.end method

.method public abstract getQuoteToSwap(Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "prepareSwapTx"
    .end annotation
.end method

.method public abstract getTokensApprovalInfo(Lcom/iMe/storage/data/network/model/request/crypto/swap/TokensApprovalInfoRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/swap/TokensApprovalInfoRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/swap/TokensApprovalInfoRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/getApproveTokensInfo"
    .end annotation
.end method

.method public abstract sendCryptoApproveTransaction(Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoApproveTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendApproveTx"
    .end annotation
.end method

.method public abstract sendCryptoSwapTransaction(Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/swap/SendCryptoSwapTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "sendSwapTx"
    .end annotation
.end method
