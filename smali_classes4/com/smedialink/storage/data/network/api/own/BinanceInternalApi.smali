.class public interface abstract Lcom/smedialink/storage/data/network/api/own/BinanceInternalApi;
.super Ljava/lang/Object;
.source "BinanceInternalApi.kt"


# virtual methods
.method public abstract confirmConvertQuote(Lcom/smedialink/storage/data/network/model/request/binance/BinanceConfirmConvertQuoteRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/binance/BinanceConfirmConvertQuoteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/binance/BinanceConfirmConvertQuoteRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/confirmConvertQuote"
    .end annotation
.end method

.method public abstract createCollection(Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayCreateCollectionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayCreateCollectionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayCreateCollectionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayCreateCollectionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/createCollection"
    .end annotation
.end method

.method public abstract getAvailablePaymentTokens()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAvailablePaymentTokensResponse;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getAvailablePaymentTokens"
    .end annotation
.end method

.method public abstract getBinancePayAuthTokens(Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayGetAuthTokensRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayGetAuthTokensRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayGetAuthTokensRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getAuthTokens"
    .end annotation
.end method

.method public abstract getConvertOppositeSupportTokensByAsset(Lcom/smedialink/storage/data/network/model/request/binance/BinanceGetSwapSupportCoinsByAssetCodeRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/binance/BinanceGetSwapSupportCoinsByAssetCodeRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/binance/BinanceGetSwapSupportCoinsByAssetCodeRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertOppositeSupportTokensResponse;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getSwapSupportCoinsByAssetCode"
    .end annotation
.end method

.method public abstract getConvertQuote(Lcom/smedialink/storage/data/network/model/request/binance/BinanceGetConvertQuoteRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/binance/BinanceGetConvertQuoteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/binance/BinanceGetConvertQuoteRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertQuoteResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getConvertQuote"
    .end annotation
.end method

.method public abstract getConvertSupportTokens()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertSupportTokensResponse;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getSwapSupportCoinsList"
    .end annotation
.end method

.method public abstract getReplenishTokenAddress(Lcom/smedialink/storage/data/network/model/request/binance/BinanceGetTokenReplenishAddressRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/binance/BinanceGetTokenReplenishAddressRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/binance/BinanceGetTokenReplenishAddressRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetTokenReplenishAddressResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getChargeAddress"
    .end annotation
.end method

.method public abstract getTokensForReplenish(Lcom/smedialink/storage/data/network/model/request/binance/pay/BinanceGetAvailableTokensForReplenishRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/binance/pay/BinanceGetAvailableTokensForReplenishRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/binance/pay/BinanceGetAvailableTokensForReplenishRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAvailablePaymentTokensResponse;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getAvailableCoinsByNetwork"
    .end annotation
.end method

.method public abstract getTransaction(Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayGetTransactionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayGetTransactionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayGetTransactionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getTransaction"
    .end annotation
.end method

.method public abstract getTransactionHistory(Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayGetTransactionHistoryRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayGetTransactionHistoryRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayGetTransactionHistoryRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getTransactionHistory"
    .end annotation
.end method

.method public abstract getUserBalance()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getFullUserBalance"
    .end annotation
.end method

.method public abstract getUserInfo()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/getUserInfo"
    .end annotation
.end method

.method public abstract logout(Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayLogoutRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayLogoutRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/binance/pay/BinancePayLogoutRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "binance/logout"
    .end annotation
.end method
