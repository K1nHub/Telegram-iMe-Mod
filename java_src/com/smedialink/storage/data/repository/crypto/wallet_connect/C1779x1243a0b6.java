package com.smedialink.storage.data.repository.crypto.wallet_connect;

import com.smedialink.storage.data.network.handlers.ErrorHandler;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectParamsForCryptoTransaction$$inlined$handleError$1 */
/* loaded from: classes3.dex */
public final class C1779x1243a0b6 extends Lambda implements Function1<Throwable, Result<? extends WalletConnectProcessedTransaction>> {
    final /* synthetic */ ErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1779x1243a0b6(ErrorHandler errorHandler) {
        super(1);
        this.$errorHandler = errorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<WalletConnectProcessedTransaction> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError(it), null, 2, null);
    }
}
