package com.iMe.storage.data.repository.crypto.boost;

import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.boost.BoostRepositoryImpl$getCryptoBoostMetadata$$inlined$handleError$1 */
/* loaded from: classes3.dex */
public final class C1801xe2766782 extends Lambda implements Function1<Throwable, Result<? extends TransactionArgs>> {
    final /* synthetic */ ErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1801xe2766782(ErrorHandler errorHandler) {
        super(1);
        this.$errorHandler = errorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<TransactionArgs> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError(it), null, 2, null);
    }
}
