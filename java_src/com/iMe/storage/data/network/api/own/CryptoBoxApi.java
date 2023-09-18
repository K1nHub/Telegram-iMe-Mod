package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.crypto.cryptobox.CommonCryptoBoxIdRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxCreationExecuteRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxCreationPrepareRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxCreationRulesRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxSuspensionPrepareRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxTokenApprovalInfoRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxTokenApprovalPrepareRequest;
import com.iMe.storage.data.network.model.request.crypto.cryptobox.CryptoBoxesListRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.SendTransactionBodyRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxActionsResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxCreationRulesResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxParticipationDataResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxParticipationResultResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxTokenApprovalExecuteResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxTokenApprovalResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxTransactionActionResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxesListResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: CryptoBoxApi.kt */
/* loaded from: classes4.dex */
public interface CryptoBoxApi {
    @POST("cryptobox/creation/approval/prepare")
    Observable<ApiBaseResponse<CryptoBoxTransactionActionResponse>> getApprovalPrepareData(@Body CryptoBoxTokenApprovalPrepareRequest cryptoBoxTokenApprovalPrepareRequest);

    @POST("cryptobox/creation/approval/getStatus")
    Observable<ApiBaseResponse<CryptoBoxTokenApprovalResponse>> getApprovalStatus(@Body CryptoBoxTokenApprovalInfoRequest cryptoBoxTokenApprovalInfoRequest);

    @POST("cryptobox/creation/prepare")
    Observable<ApiBaseResponse<CryptoBoxTransactionActionResponse>> getCreationPrepareData(@Body CryptoBoxCreationPrepareRequest cryptoBoxCreationPrepareRequest);

    @POST("cryptobox/creation/getRules")
    Observable<ApiBaseResponse<CryptoBoxCreationRulesResponse>> getCreationRules(@Body CryptoBoxCreationRulesRequest cryptoBoxCreationRulesRequest);

    @POST("cryptobox/action/listOwn")
    Observable<ApiBaseResponse<CryptoBoxActionsResponse>> getCryptoBoxActions(@Body CommonCryptoBoxIdRequest commonCryptoBoxIdRequest);

    @POST("cryptobox/find")
    Observable<ApiBaseResponse<CryptoBoxResponse>> getCryptoBoxInfo(@Body CommonCryptoBoxIdRequest commonCryptoBoxIdRequest);

    @POST("cryptobox/listOwn")
    Observable<ApiBaseResponse<CryptoBoxesListResponse>> getCryptoBoxesList(@Body CryptoBoxesListRequest cryptoBoxesListRequest);

    @POST("cryptobox/getParticipation/")
    Observable<ApiBaseResponse<CryptoBoxParticipationDataResponse>> getParticipationData(@Body CommonCryptoBoxIdRequest commonCryptoBoxIdRequest);

    @POST("cryptobox/suspension/prepare")
    Observable<ApiBaseResponse<CryptoBoxTransactionActionResponse>> getSuspensionPrepareData(@Body CryptoBoxSuspensionPrepareRequest cryptoBoxSuspensionPrepareRequest);

    @POST("cryptobox/participate/")
    Observable<ApiBaseResponse<CryptoBoxParticipationResultResponse>> participate(@Body CommonCryptoBoxIdRequest commonCryptoBoxIdRequest);

    @POST("cryptobox/creation/approval/execute")
    Observable<ApiBaseResponse<CryptoBoxTokenApprovalExecuteResponse>> sendApprovalExecute(@Body SendTransactionBodyRequest sendTransactionBodyRequest);

    @POST("cryptobox/creation/execute")
    Observable<ApiBaseResponse<CryptoBoxInfoResponse>> sendCreationExecute(@Body CryptoBoxCreationExecuteRequest cryptoBoxCreationExecuteRequest);

    @POST("cryptobox/message/refresh/")
    Observable<ApiBaseResponse<Object>> sendMessageRefresh(@Body CommonCryptoBoxIdRequest commonCryptoBoxIdRequest);

    @POST("cryptobox/suspension/execute")
    Observable<ApiBaseResponse<CryptoBoxTokenApprovalExecuteResponse>> sendSuspensionExecute(@Body SendTransactionBodyRequest sendTransactionBodyRequest);
}
