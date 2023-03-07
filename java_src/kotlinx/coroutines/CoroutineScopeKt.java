package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.ContextScope;
/* compiled from: CoroutineScope.kt */
/* loaded from: classes4.dex */
public final class CoroutineScopeKt {
    public static final CoroutineScope MainScope() {
        CompletableJob SupervisorJob$default = SupervisorKt.SupervisorJob$default(null, 1, null);
        Dispatchers dispatchers = Dispatchers.INSTANCE;
        return new ContextScope(SupervisorJob$default.plus(Dispatchers.getMain()));
    }

    public static final CoroutineScope CoroutineScope(CoroutineContext coroutineContext) {
        CompletableJob Job$default;
        if (coroutineContext.get(Job.Key) == null) {
            Job$default = JobKt__JobKt.Job$default(null, 1, null);
            coroutineContext = coroutineContext.plus(Job$default);
        }
        return new ContextScope(coroutineContext);
    }
}
