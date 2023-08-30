package com.iMe.utils.base;

import kotlinx.coroutines.CoroutineExceptionHandler;
import org.orbitmvi.orbit.Container;
/* compiled from: ErrorHandler.kt */
/* loaded from: classes4.dex */
public final class ErrorHandler {
    public static final ErrorHandler INSTANCE = new ErrorHandler();

    private ErrorHandler() {
    }

    public final Container.Settings settings() {
        return new Container.Settings(0, null, null, new ErrorHandler$settings$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key), 0L, 23, null);
    }
}
