package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.Duration;
/* compiled from: Delay.kt */
/* loaded from: classes4.dex */
public final class DelayKt {
    public static final Object delay(long j, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        if (j <= 0) {
            return Unit.INSTANCE;
        }
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        if (j < Long.MAX_VALUE) {
            getDelay(cancellableContinuationImpl.getContext()).mo2115scheduleResumeAfterDelay(j, cancellableContinuationImpl);
        }
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return result == coroutine_suspended2 ? result : Unit.INSTANCE;
    }

    /* renamed from: delay-VtjQ1oo  reason: not valid java name */
    public static final Object m2089delayVtjQ1oo(long j, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object delay = delay(m2090toDelayMillisLRDsOJo(j), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return delay == coroutine_suspended ? delay : Unit.INSTANCE;
    }

    public static final Delay getDelay(CoroutineContext coroutineContext) {
        CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor.Key);
        Delay delay = element instanceof Delay ? (Delay) element : null;
        return delay == null ? DefaultExecutorKt.getDefaultDelay() : delay;
    }

    /* renamed from: toDelayMillis-LRDsOJo  reason: not valid java name */
    public static final long m2090toDelayMillisLRDsOJo(long j) {
        long coerceAtLeast;
        if (Duration.m2057compareToLRDsOJo(j, Duration.Companion.m2087getZEROUwyO8pc()) > 0) {
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(Duration.m2064getInWholeMillisecondsimpl(j), 1L);
            return coerceAtLeast;
        }
        return 0L;
    }
}
