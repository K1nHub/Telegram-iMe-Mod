package com.iMe.i_staking;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest;
import com.iMe.i_staking.request.StakingDepositPrepareRequest;
import com.iMe.i_staking.request.StakingIdRequest;
import com.iMe.i_staking.request.StakingOperationsRequest;
import com.iMe.i_staking.request.StakingOwnProgrammesRequest;
import com.iMe.i_staking.request.StakingProgrammesRequest;
import com.iMe.i_staking.request.StakingTokenActionExecuteRequest;
import com.iMe.i_staking.request.StakingWithdrawPrepareRequest;
import com.iMe.i_staking.response.StakingApprovalInfoResponse;
import com.iMe.i_staking.response.StakingDetailedMetadataResponse;
import com.iMe.i_staking.response.StakingOperationResponse;
import com.iMe.i_staking.response.StakingOperationsPagedResponse;
import com.iMe.i_staking.response.StakingProgrammesResponse;
import com.iMe.i_staking.response.StakingTotalStatsResponse;
import com.iMe.i_staking.response.StakingWrappedActionResponse;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: StakingApi.kt */
/* loaded from: classes3.dex */
public interface StakingApi {
    @POST("staking/approval/info")
    Observable<ApiBaseResponse<StakingApprovalInfoResponse>> getApprovalInfo(@Body StakingIdRequest stakingIdRequest);

    @POST("staking/programmes/v2/find")
    Observable<ApiBaseResponse<StakingDetailedMetadataResponse>> getStakingDetails(@Body StakingIdRequest stakingIdRequest);

    @POST("staking/operations/v2/list")
    Observable<ApiBaseResponse<StakingOperationsPagedResponse>> getStakingOperations(@Body StakingOperationsRequest stakingOperationsRequest);

    @POST("staking/programmes/v2/listOwn")
    Observable<ApiBaseResponse<StakingProgrammesResponse>> getStakingOwnProgrammesList(@Body StakingOwnProgrammesRequest stakingOwnProgrammesRequest);

    @POST("staking/programmes/v2/list")
    Observable<ApiBaseResponse<StakingProgrammesResponse>> getStakingProgrammesList(@Body StakingProgrammesRequest stakingProgrammesRequest);

    @POST("staking/getMyTotals")
    Observable<ApiBaseResponse<StakingTotalStatsResponse>> getStakingTotalStats();

    @POST("staking/approval/v2/execute")
    Observable<ApiBaseResponse<StakingOperationResponse>> sendApprovalExecute(@Body StakingTokenActionExecuteRequest stakingTokenActionExecuteRequest);

    @POST("staking/approval/prepare")
    Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendApprovalPrepare(@Body StakingApprovalPrepareRequest stakingApprovalPrepareRequest);

    @POST("staking/claim/v2/execute")
    Observable<ApiBaseResponse<StakingOperationResponse>> sendClaimExecute(@Body StakingTokenActionExecuteRequest stakingTokenActionExecuteRequest);

    @POST("staking/claim/prepare")
    Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendClaimPrepare(@Body StakingIdRequest stakingIdRequest);

    @POST("staking/deposit/v2/execute")
    Observable<ApiBaseResponse<StakingOperationResponse>> sendDepositExecute(@Body StakingTokenActionExecuteRequest stakingTokenActionExecuteRequest);

    @POST("staking/deposit/prepare")
    Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendDepositPrepare(@Body StakingDepositPrepareRequest stakingDepositPrepareRequest);

    @POST("staking/withdrawal/v2/execute")
    Observable<ApiBaseResponse<StakingOperationResponse>> sendWithdrawExecute(@Body StakingTokenActionExecuteRequest stakingTokenActionExecuteRequest);

    @POST("staking/withdrawal/prepare")
    Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendWithdrawPrepare(@Body StakingWithdrawPrepareRequest stakingWithdrawPrepareRequest);
}
