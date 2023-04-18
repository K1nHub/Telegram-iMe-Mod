package com.iMe.i_staking.repository;

import com.iMe.i_staking.mapper.StakingMetadataMapperKt;
import com.iMe.i_staking.response.StakingProgrammesResponse;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingProgrammes;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1494xf12a9dc4 extends Lambda implements Function1<ApiBaseResponse<StakingProgrammesResponse>, Result<? extends StakingProgrammes>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1494xf12a9dc4(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<StakingProgrammes> invoke(ApiBaseResponse<StakingProgrammesResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            return Result.Companion.success(StakingMetadataMapperKt.mapToDomain(response.getPayload()));
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
