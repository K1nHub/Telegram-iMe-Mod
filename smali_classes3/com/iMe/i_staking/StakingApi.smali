.class public interface abstract Lcom/iMe/i_staking/StakingApi;
.super Ljava/lang/Object;
.source "StakingApi.kt"


# virtual methods
.method public abstract getApprovalInfo(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingIdRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingIdRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingApprovalInfoResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/approval/info"
    .end annotation
.end method

.method public abstract getStakingDetails(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingIdRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingIdRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/programmes/find"
    .end annotation
.end method

.method public abstract getStakingOperations(Lcom/iMe/i_staking/request/StakingOperationsRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingOperationsRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingOperationsRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingOperationsPagedResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/operations/list"
    .end annotation
.end method

.method public abstract getStakingOwnProgrammesList(Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingProgrammesResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/programmes/listOwn"
    .end annotation
.end method

.method public abstract getStakingProgrammesList(Lcom/iMe/i_staking/request/StakingProgrammesRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingProgrammesRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingProgrammesRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingProgrammesResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/programmes/list"
    .end annotation
.end method

.method public abstract getStakingTotalStats()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingTotalStatsResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/getMyTotals"
    .end annotation
.end method

.method public abstract sendApprovalExecute(Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingOperationResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/approval/execute"
    .end annotation
.end method

.method public abstract sendApprovalPrepare(Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingWrappedActionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/approval/prepare"
    .end annotation
.end method

.method public abstract sendClaimExecute(Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingOperationResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/claim/execute"
    .end annotation
.end method

.method public abstract sendClaimPrepare(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingIdRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingIdRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingWrappedActionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/claim/prepare"
    .end annotation
.end method

.method public abstract sendDepositExecute(Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingOperationResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/deposit/execute"
    .end annotation
.end method

.method public abstract sendDepositPrepare(Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingWrappedActionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/deposit/prepare"
    .end annotation
.end method

.method public abstract sendWithdrawExecute(Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingTokenActionExecuteRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingOperationResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/withdrawal/execute"
    .end annotation
.end method

.method public abstract sendWithdrawPrepare(Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;)Lio/reactivex/Observable;
    .param p1    # Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/i_staking/response/StakingWrappedActionResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "staking/withdrawal/prepare"
    .end annotation
.end method
