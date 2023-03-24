package com.smedialink.storage.data.repository.crypto.simplex;

import com.smedialink.storage.data.network.handlers.ErrorHandler;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.simplex.SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$handleError$1 */
/* loaded from: classes3.dex */
public final class C1775xe982d2d7 extends Lambda implements Function1<Throwable, Result<? extends List<? extends BuyingCryptoQuote>>> {
    final /* synthetic */ ErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1775xe982d2d7(ErrorHandler errorHandler) {
        super(1);
        this.$errorHandler = errorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends BuyingCryptoQuote>> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError(it), null, 2, null);
    }
}
