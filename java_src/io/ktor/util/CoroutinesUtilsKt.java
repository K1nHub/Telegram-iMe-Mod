package io.ktor.util;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
/* compiled from: CoroutinesUtils.kt */
/* loaded from: classes4.dex */
public final class CoroutinesUtilsKt {
    public static /* synthetic */ CoroutineContext SilentSupervisor$default(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return SilentSupervisor(job);
    }

    public static final CoroutineContext SilentSupervisor(Job job) {
        return SupervisorKt.SupervisorJob(job).plus(new C2665xf907d825(CoroutineExceptionHandler.Key));
    }
}
