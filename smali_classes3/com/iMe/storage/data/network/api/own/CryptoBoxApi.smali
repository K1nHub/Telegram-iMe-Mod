.class public interface abstract Lcom/iMe/storage/data/network/api/own/CryptoBoxApi;
.super Ljava/lang/Object;
.source "CryptoBoxApi.kt"


# virtual methods
.method public abstract getApprovalPrepareData(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxTokenApprovalPrepareRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxTokenApprovalPrepareRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxTokenApprovalPrepareRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionActionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/creation/approval/prepare"
    .end annotation
.end method

.method public abstract getApprovalStatus(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxTokenApprovalInfoRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxTokenApprovalInfoRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxTokenApprovalInfoRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTokenApprovalResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/creation/approval/getStatus"
    .end annotation
.end method

.method public abstract getCreationPrepareData(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationPrepareRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationPrepareRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationPrepareRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionActionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/creation/prepare"
    .end annotation
.end method

.method public abstract getCreationRules(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationRulesRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationRulesRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationRulesRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxCreationRulesResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/creation/getRules"
    .end annotation
.end method

.method public abstract getCryptoBoxActions(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionsResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/action/listOwn"
    .end annotation
.end method

.method public abstract getCryptoBoxInfo(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/find"
    .end annotation
.end method

.method public abstract getCryptoBoxesList(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxesListRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxesListRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxesListRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxesListResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/listOwn"
    .end annotation
.end method

.method public abstract getParticipationData(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationDataResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/getParticipation/"
    .end annotation
.end method

.method public abstract getSuspensionPrepareData(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxSuspensionPrepareRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxSuspensionPrepareRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxSuspensionPrepareRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionActionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/suspension/prepare"
    .end annotation
.end method

.method public abstract participate(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/participate/"
    .end annotation
.end method

.method public abstract sendApprovalExecute(Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransactionBodyRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransactionBodyRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransactionBodyRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTokenApprovalExecuteResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/creation/approval/execute"
    .end annotation
.end method

.method public abstract sendCreationExecute(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/creation/execute"
    .end annotation
.end method

.method public abstract sendMessageRefresh(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CommonCryptoBoxIdRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/message/refresh/"
    .end annotation
.end method

.method public abstract sendSuspensionExecute(Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransactionBodyRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransactionBodyRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/crypto/wallet/SendTransactionBodyRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTokenApprovalExecuteResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cryptobox/suspension/execute"
    .end annotation
.end method
