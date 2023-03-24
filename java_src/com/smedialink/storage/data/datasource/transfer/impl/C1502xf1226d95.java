package com.smedialink.storage.data.datasource.transfer.impl;

import com.smedialink.storage.data.mapper.crypto.TransferMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.ton.ParamsForTonCryptoTransferResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.CryptoTransferMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.smedialink.storage.data.datasource.transfer.impl.TONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1502xf1226d95 extends Lambda implements Function1<ApiBaseResponse<ParamsForTonCryptoTransferResponse>, Result<? extends CryptoTransferMetadata>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1502xf1226d95(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<CryptoTransferMetadata> invoke(ApiBaseResponse<ParamsForTonCryptoTransferResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            return Result.Companion.success(TransferMappingKt.mapToDomain(response.getPayload()));
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
