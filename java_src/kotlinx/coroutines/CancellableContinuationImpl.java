package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
/* compiled from: CancellableContinuationImpl.kt */
/* loaded from: classes4.dex */
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements CancellableContinuation<T>, CoroutineStackFrame, Waiter {
    private volatile int _decisionAndIndex;
    private volatile Object _parentHandle;
    private volatile Object _state;
    private final CoroutineContext context;
    private final Continuation<T> delegate;
    private static final AtomicIntegerFieldUpdater _decisionAndIndex$FU = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decisionAndIndex");
    private static final AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state");
    private static final AtomicReferenceFieldUpdater _parentHandle$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_parentHandle");

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    protected String nameString() {
        return "CancellableContinuation";
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Continuation<T> getDelegate$kotlinx_coroutines_core() {
        return this.delegate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableContinuationImpl(Continuation<? super T> continuation, int i) {
        super(i);
        this.delegate = continuation;
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
        this.context = continuation.getContext();
        this._decisionAndIndex = 536870911;
        this._state = Active.INSTANCE;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return this.context;
    }

    private final DisposableHandle getParentHandle() {
        return (DisposableHandle) _parentHandle$FU.get(this);
    }

    public final Object getState$kotlinx_coroutines_core() {
        return _state$FU.get(this);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isActive() {
        return getState$kotlinx_coroutines_core() instanceof NotCompleted;
    }

    public boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof NotCompleted);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isCancelled() {
        return getState$kotlinx_coroutines_core() instanceof CancelledContinuation;
    }

    private final String getStateDebugRepresentation() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return state$kotlinx_coroutines_core instanceof NotCompleted ? "Active" : state$kotlinx_coroutines_core instanceof CancelledContinuation ? "Cancelled" : "Completed";
    }

    public void initCancellability() {
        DisposableHandle installParentHandle = installParentHandle();
        if (installParentHandle != null && isCompleted()) {
            installParentHandle.dispose();
            _parentHandle$FU.set(this, NonDisposableHandle.INSTANCE);
        }
    }

    private final boolean isReusable() {
        if (DispatchedTaskKt.isReusableMode(this.resumeMode)) {
            Continuation<T> continuation = this.delegate;
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((DispatchedContinuation) continuation).isReusable$kotlinx_coroutines_core()) {
                return true;
            }
        }
        return false;
    }

    public final boolean resetStateReusable() {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(this.resumeMode == 2)) {
                throw new AssertionError();
            }
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(getParentHandle() != NonDisposableHandle.INSTANCE)) {
                throw new AssertionError();
            }
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (!DebugKt.getASSERTIONS_ENABLED() || (!(obj instanceof NotCompleted))) {
            if (!(obj instanceof CompletedContinuation) || ((CompletedContinuation) obj).idempotentResume == null) {
                _decisionAndIndex$FU.set(this, 536870911);
                atomicReferenceFieldUpdater.set(this, Active.INSTANCE);
                return true;
            }
            detachChild$kotlinx_coroutines_core();
            return false;
        }
        throw new AssertionError();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.delegate;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object takeState$kotlinx_coroutines_core() {
        return getState$kotlinx_coroutines_core();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void cancelCompletedResult$kotlinx_coroutines_core(Object obj, Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof NotCompleted) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof CompletedExceptionally) {
                return;
            }
            if (obj2 instanceof CompletedContinuation) {
                CompletedContinuation completedContinuation = (CompletedContinuation) obj2;
                if (!(!completedContinuation.getCancelled())) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                if (_state$FU.compareAndSet(this, obj2, CompletedContinuation.copy$default(completedContinuation, null, null, null, null, th, 15, null))) {
                    completedContinuation.invokeHandlers(this, th);
                    return;
                }
            } else if (_state$FU.compareAndSet(this, obj2, new CompletedContinuation(obj2, null, null, null, th, 14, null))) {
                return;
            }
        }
    }

    private final boolean cancelLater(Throwable th) {
        if (isReusable()) {
            Continuation<T> continuation = this.delegate;
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            return ((DispatchedContinuation) continuation).postponeCancellation$kotlinx_coroutines_core(th);
        }
        return false;
    }

    public boolean cancel(Throwable th) {
        Object obj;
        boolean z;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            z = false;
            if (!(obj instanceof NotCompleted)) {
                return false;
            }
            if ((obj instanceof CancelHandler) || (obj instanceof Segment)) {
                z = true;
            }
        } while (!_state$FU.compareAndSet(this, obj, new CancelledContinuation(this, th, z)));
        NotCompleted notCompleted = (NotCompleted) obj;
        if (notCompleted instanceof CancelHandler) {
            callCancelHandler((CancelHandler) obj, th);
        } else if (notCompleted instanceof Segment) {
            callSegmentOnCancellation((Segment) obj, th);
        }
        detachChildIfNonResuable();
        dispatchResume(this.resumeMode);
        return true;
    }

    public final void parentCancelled$kotlinx_coroutines_core(Throwable th) {
        if (cancelLater(th)) {
            return;
        }
        cancel(th);
        detachChildIfNonResuable();
    }

    public final void callCancelHandler(CancelHandler cancelHandler, Throwable th) {
        try {
            cancelHandler.invoke(th);
        } catch (Throwable th2) {
            CoroutineContext context = getContext();
            CoroutineExceptionHandlerKt.handleCoroutineException(context, new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    private final void callSegmentOnCancellation(Segment<?> segment, Throwable th) {
        int i = _decisionAndIndex$FU.get(this) & 536870911;
        if (!(i != 536870911)) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken".toString());
        }
        try {
            segment.onCancellation(i, th, getContext());
        } catch (Throwable th2) {
            CoroutineContext context = getContext();
            CoroutineExceptionHandlerKt.handleCoroutineException(context, new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void callOnCancellation(Function1<? super Throwable, Unit> function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            CoroutineContext context = getContext();
            CoroutineExceptionHandlerKt.handleCoroutineException(context, new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    public Throwable getContinuationCancellationCause(Job job) {
        return job.getCancellationException();
    }

    private final boolean trySuspend() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$FU;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!_decisionAndIndex$FU.compareAndSet(this, i, 536870912 + (536870911 & i)));
        return true;
    }

    private final boolean tryResume() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$FU;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!_decisionAndIndex$FU.compareAndSet(this, i, 1073741824 + (536870911 & i)));
        return true;
    }

    public final Object getResult() {
        Job job;
        Throwable recoverFromStackFrame;
        Throwable recoverFromStackFrame2;
        Object coroutine_suspended;
        boolean isReusable = isReusable();
        if (trySuspend()) {
            if (getParentHandle() == null) {
                installParentHandle();
            }
            if (isReusable) {
                releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            }
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return coroutine_suspended;
        }
        if (isReusable) {
            releaseClaimedReusableContinuation$kotlinx_coroutines_core();
        }
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            Throwable th = ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                recoverFromStackFrame2 = StackTraceRecoveryKt.recoverFromStackFrame(th, this);
                throw recoverFromStackFrame2;
            }
            throw th;
        } else if (DispatchedTaskKt.isCancellableMode(this.resumeMode) && (job = (Job) getContext().get(Job.Key)) != null && !job.isActive()) {
            CancellationException cancellationException = job.getCancellationException();
            cancelCompletedResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core, cancellationException);
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                recoverFromStackFrame = StackTraceRecoveryKt.recoverFromStackFrame(cancellationException, this);
                throw recoverFromStackFrame;
            }
            throw cancellationException;
        } else {
            return getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
        }
    }

    private final DisposableHandle installParentHandle() {
        Job job = (Job) getContext().get(Job.Key);
        if (job == null) {
            return null;
        }
        DisposableHandle invokeOnCompletion$default = Job.DefaultImpls.invokeOnCompletion$default(job, true, false, new ChildContinuation(this), 2, null);
        _parentHandle$FU.compareAndSet(this, null, invokeOnCompletion$default);
        return invokeOnCompletion$default;
    }

    public final void releaseClaimedReusableContinuation$kotlinx_coroutines_core() {
        Throwable tryReleaseClaimedContinuation$kotlinx_coroutines_core;
        Continuation<T> continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        if (dispatchedContinuation == null || (tryReleaseClaimedContinuation$kotlinx_coroutines_core = dispatchedContinuation.tryReleaseClaimedContinuation$kotlinx_coroutines_core(this)) == null) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
        cancel(tryReleaseClaimedContinuation$kotlinx_coroutines_core);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        resumeImpl$default(this, CompletionStateKt.toState(obj, this), this.resumeMode, null, 4, null);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resume(T t, Function1<? super Throwable, Unit> function1) {
        resumeImpl(t, this.resumeMode, function1);
    }

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(Segment<?> segment, int i) {
        int i2;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$FU;
        do {
            i2 = atomicIntegerFieldUpdater.get(this);
            if (!((i2 & 536870911) == 536870911)) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once".toString());
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, ((i2 >> 29) << 29) + i));
        invokeOnCancellationImpl(segment);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void invokeOnCancellation(Function1<? super Throwable, Unit> function1) {
        invokeOnCancellationImpl(makeCancelHandler(function1));
    }

    private final void invokeOnCancellationImpl(Object obj) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!((obj instanceof CancelHandler) || (obj instanceof Segment))) {
                throw new AssertionError();
            }
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof Active) {
                if (_state$FU.compareAndSet(this, obj2, obj)) {
                    return;
                }
            } else {
                if (obj2 instanceof CancelHandler ? true : obj2 instanceof Segment) {
                    multipleHandlersError(obj, obj2);
                } else {
                    boolean z = obj2 instanceof CompletedExceptionally;
                    if (z) {
                        CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj2;
                        if (!completedExceptionally.makeHandled()) {
                            multipleHandlersError(obj, obj2);
                        }
                        if (obj2 instanceof CancelledContinuation) {
                            if (!z) {
                                completedExceptionally = null;
                            }
                            Throwable th = completedExceptionally != null ? completedExceptionally.cause : null;
                            if (obj instanceof CancelHandler) {
                                callCancelHandler((CancelHandler) obj, th);
                                return;
                            }
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                            callSegmentOnCancellation((Segment) obj, th);
                            return;
                        }
                        return;
                    } else if (obj2 instanceof CompletedContinuation) {
                        CompletedContinuation completedContinuation = (CompletedContinuation) obj2;
                        if (completedContinuation.cancelHandler != null) {
                            multipleHandlersError(obj, obj2);
                        }
                        if (obj instanceof Segment) {
                            return;
                        }
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        CancelHandler cancelHandler = (CancelHandler) obj;
                        if (completedContinuation.getCancelled()) {
                            callCancelHandler(cancelHandler, completedContinuation.cancelCause);
                            return;
                        } else {
                            if (_state$FU.compareAndSet(this, obj2, CompletedContinuation.copy$default(completedContinuation, null, cancelHandler, null, null, null, 29, null))) {
                                return;
                            }
                        }
                    } else if (obj instanceof Segment) {
                        return;
                    } else {
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        if (_state$FU.compareAndSet(this, obj2, new CompletedContinuation(obj2, (CancelHandler) obj, null, null, null, 28, null))) {
                            return;
                        }
                    }
                }
            }
        }
    }

    private final void multipleHandlersError(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    private final CancelHandler makeCancelHandler(Function1<? super Throwable, Unit> function1) {
        return function1 instanceof CancelHandler ? (CancelHandler) function1 : new InvokeOnCancel(function1);
    }

    private final void dispatchResume(int i) {
        if (tryResume()) {
            return;
        }
        DispatchedTaskKt.dispatch(this, i);
    }

    private final Object resumedState(NotCompleted notCompleted, Object obj, int i, Function1<? super Throwable, Unit> function1, Object obj2) {
        if (obj instanceof CompletedExceptionally) {
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (!(obj2 == null)) {
                    throw new AssertionError();
                }
            }
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (function1 == null) {
                    return obj;
                }
                throw new AssertionError();
            }
            return obj;
        } else if (DispatchedTaskKt.isCancellableMode(i) || obj2 != null) {
            if (function1 == null && !(notCompleted instanceof CancelHandler) && obj2 == null) {
                return obj;
            }
            return new CompletedContinuation(obj, notCompleted instanceof CancelHandler ? (CancelHandler) notCompleted : null, function1, obj2, null, 16, null);
        } else {
            return obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void resumeImpl$default(CancellableContinuationImpl cancellableContinuationImpl, Object obj, int i, Function1 function1, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        cancellableContinuationImpl.resumeImpl(obj, i, function1);
    }

    private final void resumeImpl(Object obj, int i, Function1<? super Throwable, Unit> function1) {
        Object obj2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        do {
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof NotCompleted) {
            } else {
                if (obj2 instanceof CancelledContinuation) {
                    CancelledContinuation cancelledContinuation = (CancelledContinuation) obj2;
                    if (cancelledContinuation.makeResumed()) {
                        if (function1 != null) {
                            callOnCancellation(function1, cancelledContinuation.cause);
                            return;
                        }
                        return;
                    }
                }
                alreadyResumedError(obj);
                throw new KotlinNothingValueException();
            }
        } while (!_state$FU.compareAndSet(this, obj2, resumedState((NotCompleted) obj2, obj, i, function1, null)));
        detachChildIfNonResuable();
        dispatchResume(i);
    }

    private final Symbol tryResumeImpl(Object obj, Object obj2, Function1<? super Throwable, Unit> function1) {
        Object obj3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        do {
            obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj3 instanceof NotCompleted) {
            } else if (!(obj3 instanceof CompletedContinuation) || obj2 == null) {
                return null;
            } else {
                CompletedContinuation completedContinuation = (CompletedContinuation) obj3;
                if (completedContinuation.idempotentResume == obj2) {
                    if (!DebugKt.getASSERTIONS_ENABLED() || Intrinsics.areEqual(completedContinuation.result, obj)) {
                        return CancellableContinuationImplKt.RESUME_TOKEN;
                    }
                    throw new AssertionError();
                }
                return null;
            }
        } while (!_state$FU.compareAndSet(this, obj3, resumedState((NotCompleted) obj3, obj, this.resumeMode, function1, obj2)));
        detachChildIfNonResuable();
        return CancellableContinuationImplKt.RESUME_TOKEN;
    }

    private final Void alreadyResumedError(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final void detachChildIfNonResuable() {
        if (isReusable()) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
    }

    public final void detachChild$kotlinx_coroutines_core() {
        DisposableHandle parentHandle = getParentHandle();
        if (parentHandle == null) {
            return;
        }
        parentHandle.dispose();
        _parentHandle$FU.set(this, NonDisposableHandle.INSTANCE);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public Object tryResume(T t, Object obj, Function1<? super Throwable, Unit> function1) {
        return tryResumeImpl(t, obj, function1);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void completeResume(Object obj) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(obj == CancellableContinuationImplKt.RESUME_TOKEN)) {
                throw new AssertionError();
            }
        }
        dispatchResume(this.resumeMode);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, T t) {
        Continuation<T> continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        resumeImpl$default(this, t, (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == coroutineDispatcher ? 4 : this.resumeMode, null, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.DispatchedTask
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(Object obj) {
        return obj instanceof CompletedContinuation ? (T) ((CompletedContinuation) obj).result : obj;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Throwable getExceptionalResult$kotlinx_coroutines_core(Object obj) {
        Throwable recoverFromStackFrame;
        Throwable exceptionalResult$kotlinx_coroutines_core = super.getExceptionalResult$kotlinx_coroutines_core(obj);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            Continuation<T> continuation = this.delegate;
            if (DebugKt.getRECOVER_STACK_TRACES() && (continuation instanceof CoroutineStackFrame)) {
                recoverFromStackFrame = StackTraceRecoveryKt.recoverFromStackFrame(exceptionalResult$kotlinx_coroutines_core, (CoroutineStackFrame) continuation);
                return recoverFromStackFrame;
            }
            return exceptionalResult$kotlinx_coroutines_core;
        }
        return null;
    }

    public String toString() {
        return nameString() + '(' + DebugStringsKt.toDebugString(this.delegate) + "){" + getStateDebugRepresentation() + "}@" + DebugStringsKt.getHexAddress(this);
    }
}
