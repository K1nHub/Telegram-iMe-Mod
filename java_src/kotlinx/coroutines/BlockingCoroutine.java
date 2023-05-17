package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.kt */
/* loaded from: classes4.dex */
public final class BlockingCoroutine<T> extends AbstractCoroutine<T> {
    private final Thread blockedThread;
    private final EventLoop eventLoop;

    @Override // kotlinx.coroutines.JobSupport
    protected boolean isScopedCoroutine() {
        return true;
    }

    public BlockingCoroutine(CoroutineContext coroutineContext, Thread thread, EventLoop eventLoop) {
        super(coroutineContext, true, true);
        this.blockedThread = thread;
        this.eventLoop = eventLoop;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.JobSupport
    public void afterCompletion(Object obj) {
        if (Intrinsics.areEqual(Thread.currentThread(), this.blockedThread)) {
            return;
        }
        Thread thread = this.blockedThread;
        AbstractTimeSourceKt.getTimeSource();
        LockSupport.unpark(thread);
    }

    public final T joinBlocking() {
        AbstractTimeSourceKt.getTimeSource();
        try {
            EventLoop eventLoop = this.eventLoop;
            if (eventLoop != null) {
                EventLoop.incrementUseCount$default(eventLoop, false, 1, null);
            }
            while (!Thread.interrupted()) {
                EventLoop eventLoop2 = this.eventLoop;
                long processNextEvent = eventLoop2 != null ? eventLoop2.processNextEvent() : Long.MAX_VALUE;
                if (!isCompleted()) {
                    AbstractTimeSourceKt.getTimeSource();
                    LockSupport.parkNanos(this, processNextEvent);
                } else {
                    EventLoop eventLoop3 = this.eventLoop;
                    if (eventLoop3 != null) {
                        EventLoop.decrementUseCount$default(eventLoop3, false, 1, null);
                    }
                    AbstractTimeSourceKt.getTimeSource();
                    T t = (T) JobSupportKt.unboxState(getState$kotlinx_coroutines_core());
                    CompletedExceptionally completedExceptionally = t instanceof CompletedExceptionally ? (CompletedExceptionally) t : null;
                    if (completedExceptionally == null) {
                        return t;
                    }
                    throw completedExceptionally.cause;
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            cancelCoroutine(interruptedException);
            throw interruptedException;
        } catch (Throwable th) {
            AbstractTimeSourceKt.getTimeSource();
            throw th;
        }
    }
}
