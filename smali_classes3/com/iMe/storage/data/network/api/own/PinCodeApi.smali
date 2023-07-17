.class public interface abstract Lcom/iMe/storage/data/network/api/own/PinCodeApi;
.super Ljava/lang/Object;
.source "PinCodeApi.kt"


# virtual methods
.method public abstract getCryptoWalletPassword(Lcom/iMe/storage/data/network/model/request/crypto/pin/PasswordByPinCodeRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/pin/PasswordByPinCodeRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/pin/PasswordByPinCodeRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/pin/PasswordByPinCodeResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getWalletPassword"
    .end annotation
.end method
