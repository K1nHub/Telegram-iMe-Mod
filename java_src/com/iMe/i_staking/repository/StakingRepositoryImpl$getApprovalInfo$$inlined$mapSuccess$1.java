package com.iMe.i_staking.repository;

import com.iMe.i_staking.mapper.StakingApprovalInfoMapperKt;
import com.iMe.i_staking.response.StakingApprovalInfoResponse;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.staking.StakingApprovalInfo;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<StakingApprovalInfoResponse>, Result<? extends StakingApprovalInfo>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<StakingApprovalInfo> invoke(ApiBaseResponse<StakingApprovalInfoResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(StakingApprovalInfoMapperKt.mapToDomain(response.getPayload()));
    }
}
