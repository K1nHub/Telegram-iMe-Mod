package com.iMe.storage.data.datasource.transfer.impl;

import com.iMe.storage.data.mapper.crypto.TransferMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.datasource.transfer.impl.TRONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1561x101c5dbf extends Lambda implements Function1<ApiBaseResponse<CryptoTransferDataResponse.TRON>, Result<? extends CryptoTransferMetadata>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1561x101c5dbf(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<CryptoTransferMetadata> invoke(ApiBaseResponse<CryptoTransferDataResponse.TRON> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            return Result.Companion.success(TransferMappingKt.mapToDomain(response.getPayload()));
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
