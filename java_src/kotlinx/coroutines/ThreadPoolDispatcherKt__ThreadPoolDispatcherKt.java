package kotlinx.coroutines;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: ThreadPoolDispatcher.kt */
/* loaded from: classes4.dex */
final /* synthetic */ class ThreadPoolDispatcherKt__ThreadPoolDispatcherKt {
    public static final ExecutorCoroutineDispatcher newFixedThreadPoolContext(final int i, final String str) {
        if (!(i >= 1)) {
            throw new IllegalArgumentException(("Expected at least one thread, but " + i + " specified").toString());
        }
        final AtomicInteger atomicInteger = new AtomicInteger();
        return ExecutorsKt.from(Executors.newScheduledThreadPool(i, new ThreadFactory() { // from class: kotlinx.coroutines.ThreadPoolDispatcherKt__ThreadPoolDispatcherKt$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread m128x1146da6d;
                m128x1146da6d = ThreadPoolDispatcherKt__ThreadPoolDispatcherKt.m128x1146da6d(i, str, atomicInteger, runnable);
                return m128x1146da6d;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: newFixedThreadPoolContext$lambda$1$ThreadPoolDispatcherKt__ThreadPoolDispatcherKt */
    public static final Thread m128x1146da6d(int i, String str, AtomicInteger atomicInteger, Runnable runnable) {
        if (i != 1) {
            str = str + '-' + atomicInteger.incrementAndGet();
        }
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(true);
        return thread;
    }
}
