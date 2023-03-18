package com.smedialink.storage.data.repository.crypto.swap;

import com.smedialink.storage.data.mapper.crypto.SwapMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.swap.GetQuoteToSwapResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class SwapRepositoryImpl$getQuoteToSwap$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<GetQuoteToSwapResponse>, Result<? extends CryptoSwapMetadata>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwapRepositoryImpl$getQuoteToSwap$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<CryptoSwapMetadata> invoke(ApiBaseResponse<GetQuoteToSwapResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(SwapMappingKt.mapToDomain(response.getPayload()));
    }
}
