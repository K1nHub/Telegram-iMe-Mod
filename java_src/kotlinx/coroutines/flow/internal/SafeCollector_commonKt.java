package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ScopeCoroutine;
/* compiled from: SafeCollector.common.kt */
/* loaded from: classes4.dex */
public final class SafeCollector_commonKt {
    public static final void checkContext(SafeCollector<?> safeCollector, CoroutineContext coroutineContext) {
        if (((Number) coroutineContext.fold(0, new SafeCollector_commonKt$checkContext$result$1(safeCollector))).intValue() == safeCollector.collectContextSize) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.collectContext + ",\n\t\tbut emission happened in " + coroutineContext + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    public static final Job transitiveCoroutineParent(Job job, Job job2) {
        while (job != null) {
            if (job == job2 || !(job instanceof ScopeCoroutine)) {
                return job;
            }
            job = ((ScopeCoroutine) job).getParent$kotlinx_coroutines_core();
        }
        return null;
    }
}
