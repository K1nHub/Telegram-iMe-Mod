package com.smedialink.storage.data.repository.crypto.boost;

import com.smedialink.storage.data.mapper.crypto.BoostMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.boost.GetBoostTransactionDataResponse;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<GetBoostTransactionDataResponse>, Result<? extends TransactionArgs>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ BoostRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, BoostRepositoryImpl boostRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = boostRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<TransactionArgs> invoke(ApiBaseResponse<GetBoostTransactionDataResponse> response) {
        CryptoAccessManager cryptoAccessManager;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            cryptoAccessManager = this.this$0.cryptoAccessManager;
            return Result.Companion.success(BoostMappingKt.mapToDomain(response.getPayload(), cryptoAccessManager));
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
