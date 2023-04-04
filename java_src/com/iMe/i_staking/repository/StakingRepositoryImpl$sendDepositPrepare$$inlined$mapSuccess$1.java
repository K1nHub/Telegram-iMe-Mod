package com.iMe.i_staking.repository;

import com.iMe.i_staking.mapper.StakingWrappedActionMapperKt;
import com.iMe.i_staking.response.StakingWrappedActionResponse;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingTransactionAction;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<StakingWrappedActionResponse>, Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Pair<? extends String, ? extends StakingTransactionAction>> invoke(ApiBaseResponse<StakingWrappedActionResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(StakingWrappedActionMapperKt.mapToDomain(response.getPayload()));
    }
}
