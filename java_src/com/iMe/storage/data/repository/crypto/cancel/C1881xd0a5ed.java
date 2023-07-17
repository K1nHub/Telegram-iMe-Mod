package com.iMe.storage.data.repository.crypto.cancel;

import com.iMe.storage.data.mapper.crypto.CancelMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.cancel.CancelTransactionDataResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.cancel.CryptoCancelMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.cancel.CancelRepositoryImpl$getCryptoCancelMetadata$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1881xd0a5ed extends Lambda implements Function1<ApiBaseResponse<CancelTransactionDataResponse>, Result<? extends CryptoCancelMetadata>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1881xd0a5ed(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<CryptoCancelMetadata> invoke(ApiBaseResponse<CancelTransactionDataResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        return Result.Companion.success(CancelMappingKt.mapToDomain(response.getPayload()));
    }
}
