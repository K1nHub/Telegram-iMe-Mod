package com.iMe.i_staking.datasource;

import com.iMe.i_staking.mapper.StakingOperationsMapperKt;
import com.iMe.i_staking.response.StakingOperationResponse;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingOperation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.i_staking.datasource.StakingDataSourceImpl$sendDepositExecute$lambda$3$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1562xcf467f20 extends Lambda implements Function1<ApiBaseResponse<StakingOperationResponse>, Result<? extends StakingOperation>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1562xcf467f20(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<StakingOperation> invoke(ApiBaseResponse<StakingOperationResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(StakingOperationsMapperKt.mapToDomain(response.getPayload()));
    }
}