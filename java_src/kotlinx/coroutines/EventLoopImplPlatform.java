package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlinx.coroutines.EventLoopImplBase;
/* compiled from: EventLoop.kt */
/* loaded from: classes4.dex */
public abstract class EventLoopImplPlatform extends EventLoop {
    protected abstract Thread getThread();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void unpark() {
        Thread thread = getThread();
        if (Thread.currentThread() != thread) {
            AbstractTimeSourceKt.getTimeSource();
            LockSupport.unpark(thread);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void reschedule(long j, EventLoopImplBase.DelayedTask delayedTask) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(this != DefaultExecutor.INSTANCE)) {
                throw new AssertionError();
            }
        }
        DefaultExecutor.INSTANCE.schedule(j, delayedTask);
    }
}
