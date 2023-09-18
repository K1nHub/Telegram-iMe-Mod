package com.iMe.utils.base;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import timber.log.Timber;
/* compiled from: CoroutineExceptionHandler.kt */
/* loaded from: classes6.dex */
public final class ErrorHandler$settings$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public ErrorHandler$settings$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key key) {
        super(key);
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public void handleException(CoroutineContext coroutineContext, Throwable th) {
        Timber.m7e("Error handled!", new Object[0]);
        Timber.m6e(th);
    }
}
