.class public interface abstract Lcom/iMe/storage/data/network/api/own/TonFragmentApi;
.super Ljava/lang/Object;
.source "TonFragmentApi.kt"


# virtual methods
.method public abstract getPremiumPrices()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumPricesResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fragment/premium/getPremiumPrices"
    .end annotation
.end method

.method public abstract getRecipientByUsername(Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentRecipientByUsernameRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentRecipientByUsernameRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentRecipientByUsernameRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentRecipientDataResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fragment/premium/searchRecipient"
    .end annotation
.end method

.method public abstract getSessionAuthState()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentSessionAuthStateResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fragment/auth/checkTonAuth"
    .end annotation
.end method

.method public abstract getSessionData()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentSessionDataResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fragment/auth/initSession"
    .end annotation
.end method

.method public abstract getUsernames(Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductsRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductsRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductsRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentUsernamesResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fragment/getUsernames"
    .end annotation
.end method

.method public abstract preparePremiumBuyTransaction(Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentPreparePremiumBuyRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentPreparePremiumBuyRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentPreparePremiumBuyRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumBuyTransactionParamsResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fragment/premium/initPremiumBuy"
    .end annotation
.end method

.method public abstract prepareProductBuyTransaction(Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductBuyPrepareRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductBuyPrepareRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductBuyPrepareRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductBuyTransactionParamsResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fragment/element/buyElementInfoPrepare"
    .end annotation
.end method

.method public abstract sendSessionSignature(Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentSessionsRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentSessionsRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentSessionsRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fragment/auth/sendSessionSignature"
    .end annotation
.end method
