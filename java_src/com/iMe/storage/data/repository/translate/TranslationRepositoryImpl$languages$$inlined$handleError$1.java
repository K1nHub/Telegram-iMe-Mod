package com.iMe.storage.data.repository.translate;

import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.translation.TranslationLanguage;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* loaded from: classes3.dex */
public final class TranslationRepositoryImpl$languages$$inlined$handleError$1 extends Lambda implements Function1<Throwable, Result<? extends List<TranslationLanguage>>> {
    final /* synthetic */ ErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranslationRepositoryImpl$languages$$inlined$handleError$1(ErrorHandler errorHandler) {
        super(1);
        this.$errorHandler = errorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<TranslationLanguage>> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError(it), null, 2, null);
    }
}
