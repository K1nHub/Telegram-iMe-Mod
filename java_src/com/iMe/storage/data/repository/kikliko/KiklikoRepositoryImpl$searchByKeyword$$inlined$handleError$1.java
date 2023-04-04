package com.iMe.storage.data.repository.kikliko;

import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.model.response.kikliko.SearchResponse;
import com.iMe.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* loaded from: classes3.dex */
public final class KiklikoRepositoryImpl$searchByKeyword$$inlined$handleError$1 extends Lambda implements Function1<Throwable, Result<? extends SearchResponse>> {
    final /* synthetic */ ErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KiklikoRepositoryImpl$searchByKeyword$$inlined$handleError$1(ErrorHandler errorHandler) {
        super(1);
        this.$errorHandler = errorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<SearchResponse> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError(it), null, 2, null);
    }
}
