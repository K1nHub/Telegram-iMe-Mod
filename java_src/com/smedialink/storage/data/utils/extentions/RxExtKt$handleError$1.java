package com.smedialink.storage.data.utils.extentions;

import com.smedialink.storage.data.network.handlers.ErrorHandler;
import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RxExt.kt */
/* loaded from: classes3.dex */
public final class RxExtKt$handleError$1<T, R> implements Function {
    final /* synthetic */ ErrorHandler<Throwable> $errorHandler;

    public RxExtKt$handleError$1(ErrorHandler<Throwable> errorHandler) {
        this.$errorHandler = errorHandler;
    }

    @Override // io.reactivex.functions.Function
    public final Result<T> apply(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError(it), null, 2, null);
    }
}
