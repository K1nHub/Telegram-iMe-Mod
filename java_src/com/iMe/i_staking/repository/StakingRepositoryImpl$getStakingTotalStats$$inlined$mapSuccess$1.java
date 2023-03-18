package com.iMe.i_staking.repository;

import com.iMe.i_staking.mapper.StakingTotalStatsMapperKt;
import com.iMe.i_staking.response.StakingTotalStatsResponse;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.staking.StakingTotalStats;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class StakingRepositoryImpl$getStakingTotalStats$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<StakingTotalStatsResponse>, Result<? extends StakingTotalStats>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingRepositoryImpl$getStakingTotalStats$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<StakingTotalStats> invoke(ApiBaseResponse<StakingTotalStatsResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            return Result.Companion.success(StakingTotalStatsMapperKt.mapToDomain(response.getPayload()));
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
