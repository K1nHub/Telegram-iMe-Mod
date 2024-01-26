package io.ktor.network.util;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
/* compiled from: Utils.kt */
/* loaded from: classes4.dex */
public final class Timeout {
    private final Function0<Long> clock;
    volatile /* synthetic */ int isStarted;
    volatile /* synthetic */ long lastActivityTime;
    private final String name;
    private final Function1<Continuation<? super Unit>, Object> onTimeout;
    private final CoroutineScope scope;
    private final long timeoutMs;
    private Job workerJob;

    /* JADX WARN: Multi-variable type inference failed */
    public Timeout(String name, long j, Function0<Long> clock, CoroutineScope scope, Function1<? super Continuation<? super Unit>, ? extends Object> onTimeout) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(onTimeout, "onTimeout");
        this.name = name;
        this.timeoutMs = j;
        this.clock = clock;
        this.scope = scope;
        this.onTimeout = onTimeout;
        this.lastActivityTime = 0L;
        this.isStarted = 0;
        this.workerJob = initTimeoutJob();
    }

    public final void start() {
        this.lastActivityTime = this.clock.invoke().longValue();
        this.isStarted = 1;
    }

    public final void stop() {
        this.isStarted = 0;
    }

    public final void finish() {
        Job job = this.workerJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
    }

    private final Job initTimeoutJob() {
        Job launch$default;
        if (this.timeoutMs == Long.MAX_VALUE) {
            return null;
        }
        CoroutineScope coroutineScope = this.scope;
        CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
        launch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, coroutineContext.plus(new CoroutineName("Timeout " + this.name)), null, new Timeout$initTimeoutJob$1(this, null), 2, null);
        return launch$default;
    }
}
