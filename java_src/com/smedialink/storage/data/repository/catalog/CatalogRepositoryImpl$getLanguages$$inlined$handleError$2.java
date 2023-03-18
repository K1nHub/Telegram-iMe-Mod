package com.smedialink.storage.data.repository.catalog;

import com.smedialink.storage.data.network.handlers.ErrorHandler;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.catalog.CatalogLanguage;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* loaded from: classes3.dex */
public final class CatalogRepositoryImpl$getLanguages$$inlined$handleError$2 extends Lambda implements Function1<Throwable, Result<? extends List<? extends CatalogLanguage>>> {
    final /* synthetic */ ErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogRepositoryImpl$getLanguages$$inlined$handleError$2(ErrorHandler errorHandler) {
        super(1);
        this.$errorHandler = errorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<? extends CatalogLanguage>> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError(it), null, 2, null);
    }
}
