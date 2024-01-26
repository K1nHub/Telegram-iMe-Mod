.class public interface abstract Lcom/iMe/storage/data/network/api/own/PermissionApi;
.super Ljava/lang/Object;
.source "PermissionApi.kt"


# virtual methods
.method public abstract getAccountInfo(Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetAccountInfoRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetAccountInfoRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetAccountInfoRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getNotOwnWallets"
    .end annotation
.end method

.method public abstract manageAccessToMyData(Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "manageAccessToMyData"
    .end annotation
.end method

.method public abstract manageCryptoPermissions(Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "changePermission"
    .end annotation
.end method

.method public abstract requestPermission(Lcom/iMe/storage/data/network/model/request/crypto/wallet/RequestPermissionRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/wallet/RequestPermissionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/wallet/RequestPermissionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/RequestPermissionsResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "requestPermission"
    .end annotation
.end method
