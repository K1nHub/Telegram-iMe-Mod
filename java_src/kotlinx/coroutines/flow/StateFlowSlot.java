package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StateFlow.kt */
/* loaded from: classes4.dex */
public final class StateFlowSlot extends AbstractSharedFlowSlot<StateFlowImpl<?>> {
    static final /* synthetic */ AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(StateFlowSlot.class, Object.class, "_state");
    volatile /* synthetic */ Object _state = null;

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public boolean allocateLocked(StateFlowImpl<?> stateFlowImpl) {
        if (this._state != null) {
            return false;
        }
        this._state = StateFlowKt.access$getNONE$p();
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public Continuation<Unit>[] freeLocked(StateFlowImpl<?> stateFlowImpl) {
        this._state = null;
        return AbstractSharedFlowKt.EMPTY_RESUMES;
    }

    public final boolean takePending() {
        Object andSet = _state$FU.getAndSet(this, StateFlowKt.access$getNONE$p());
        Intrinsics.checkNotNull(andSet);
        if (!DebugKt.getASSERTIONS_ENABLED() || (!(andSet instanceof CancellableContinuationImpl))) {
            return andSet == StateFlowKt.access$getPENDING$p();
        }
        throw new AssertionError();
    }

    public final Object awaitPending(Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        if (!DebugKt.getASSERTIONS_ENABLED() || (!(this._state instanceof CancellableContinuationImpl))) {
            if (!_state$FU.compareAndSet(this, StateFlowKt.access$getNONE$p(), cancellableContinuationImpl)) {
                if (DebugKt.getASSERTIONS_ENABLED()) {
                    if (!(this._state == StateFlowKt.access$getPENDING$p())) {
                        throw new AssertionError();
                    }
                }
                Result.Companion companion = Result.Companion;
                cancellableContinuationImpl.resumeWith(Result.m1576constructorimpl(Unit.INSTANCE));
            }
            Object result = cancellableContinuationImpl.getResult();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (result == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return result == coroutine_suspended2 ? result : Unit.INSTANCE;
        }
        throw new AssertionError();
    }

    public final void makePending() {
        while (true) {
            Object obj = this._state;
            if (obj == null || obj == StateFlowKt.access$getPENDING$p()) {
                return;
            }
            if (obj == StateFlowKt.access$getNONE$p()) {
                if (_state$FU.compareAndSet(this, obj, StateFlowKt.access$getPENDING$p())) {
                    return;
                }
            } else if (_state$FU.compareAndSet(this, obj, StateFlowKt.access$getNONE$p())) {
                Result.Companion companion = Result.Companion;
                ((CancellableContinuationImpl) obj).resumeWith(Result.m1576constructorimpl(Unit.INSTANCE));
                return;
            }
        }
    }
}
