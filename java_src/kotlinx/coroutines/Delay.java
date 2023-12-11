package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
/* compiled from: Delay.kt */
/* loaded from: classes4.dex */
public interface Delay {
    DisposableHandle invokeOnTimeout(long j, Runnable runnable, CoroutineContext coroutineContext);

    /* renamed from: scheduleResumeAfterDelay */
    void mo2122scheduleResumeAfterDelay(long j, CancellableContinuation<? super Unit> cancellableContinuation);

    /* compiled from: Delay.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static DisposableHandle invokeOnTimeout(Delay delay, long j, Runnable runnable, CoroutineContext coroutineContext) {
            return DefaultExecutorKt.getDefaultDelay().invokeOnTimeout(j, runnable, coroutineContext);
        }
    }
}
