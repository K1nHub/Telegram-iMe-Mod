package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.internal.ScopeCoroutine;
/* compiled from: Timeout.kt */
/* loaded from: classes4.dex */
final class TimeoutCoroutine<U, T extends U> extends ScopeCoroutine<T> implements Runnable {
    public final long time;

    public TimeoutCoroutine(long j, Continuation<? super U> continuation) {
        super(continuation.getContext(), continuation);
        this.time = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        cancelCoroutine(TimeoutKt.TimeoutCancellationException(this.time, DelayKt.getDelay(getContext()), this));
    }

    @Override // kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.JobSupport
    public String nameString$kotlinx_coroutines_core() {
        return super.nameString$kotlinx_coroutines_core() + "(timeMillis=" + this.time + ')';
    }
}
