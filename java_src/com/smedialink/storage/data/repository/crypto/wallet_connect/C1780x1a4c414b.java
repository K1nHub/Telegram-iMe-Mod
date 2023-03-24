package com.smedialink.storage.data.repository.crypto.wallet_connect;

import com.smedialink.storage.data.mapper.crypto.CryptoWalletMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet_connect.ParamsForCryptoTransactionResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectParamsForCryptoTransaction$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1780x1a4c414b extends Lambda implements Function1<ApiBaseResponse<ParamsForCryptoTransactionResponse>, Result<? extends WalletConnectProcessedTransaction>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1780x1a4c414b(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<WalletConnectProcessedTransaction> invoke(ApiBaseResponse<ParamsForCryptoTransactionResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            return Result.Companion.success(CryptoWalletMappingKt.mapToDomain(response.getPayload()));
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
