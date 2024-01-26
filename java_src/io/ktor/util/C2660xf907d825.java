package io.ktor.util;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
/* compiled from: CoroutineExceptionHandler.kt */
/* renamed from: io.ktor.util.CoroutinesUtilsKt$SilentSupervisor$$inlined$CoroutineExceptionHandler$1 */
/* loaded from: classes4.dex */
public final class C2660xf907d825 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public void handleException(CoroutineContext coroutineContext, Throwable th) {
    }

    public C2660xf907d825(CoroutineExceptionHandler.Key key) {
        super(key);
    }
}
