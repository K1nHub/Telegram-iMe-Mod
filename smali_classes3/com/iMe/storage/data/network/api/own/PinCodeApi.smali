.class public interface abstract Lcom/iMe/storage/data/network/api/own/PinCodeApi;
.super Ljava/lang/Object;
.source "PinCodeApi.kt"


# virtual methods
.method public abstract getCryptoWalletPassword(Lcom/iMe/storage/data/network/model/request/crypto/pin/ReadPasswordByPinCodeRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/pin/ReadPasswordByPinCodeRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/pin/ReadPasswordByPinCodeRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/pin/PasswordByPinCodeRequest;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getCryptoWalletPassword"
    .end annotation
.end method

.method public abstract saveCryptoWalletPinCode(Lcom/iMe/storage/data/network/model/request/crypto/pin/CreatePinCodeRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/pin/CreatePinCodeRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/pin/CreatePinCodeRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "saveCryptoWalletPinCode"
    .end annotation
.end method
