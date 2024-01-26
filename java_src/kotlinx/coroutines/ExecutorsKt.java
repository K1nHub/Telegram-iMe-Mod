package kotlinx.coroutines;

import java.util.concurrent.ExecutorService;
/* compiled from: Executors.kt */
/* loaded from: classes4.dex */
public final class ExecutorsKt {
    public static final ExecutorCoroutineDispatcher from(ExecutorService executorService) {
        return new ExecutorCoroutineDispatcherImpl(executorService);
    }
}
