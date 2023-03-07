package kotlin.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SafeContinuationJvm.kt */
/* loaded from: classes4.dex */
public final class SafeContinuation<T> implements Continuation<T>, CoroutineStackFrame {
    @Deprecated
    private static final AtomicReferenceFieldUpdater<SafeContinuation<?>, Object> RESULT;
    private final Continuation<T> delegate;
    private volatile Object result;

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SafeContinuation(Continuation<? super T> delegate, Object obj) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        this.result = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SafeContinuation(Continuation<? super T> delegate) {
        this(delegate, CoroutineSingletons.UNDECIDED);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return this.delegate.getContext();
    }

    /* compiled from: SafeContinuationJvm.kt */
    /* loaded from: classes4.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        RESULT = AtomicReferenceFieldUpdater.newUpdater(SafeContinuation.class, Object.class, "result");
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        while (true) {
            Object obj2 = this.result;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.UNDECIDED;
            if (obj2 != coroutineSingletons) {
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (obj2 != coroutine_suspended) {
                    throw new IllegalStateException("Already resumed");
                }
                AtomicReferenceFieldUpdater<SafeContinuation<?>, Object> atomicReferenceFieldUpdater = RESULT;
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (atomicReferenceFieldUpdater.compareAndSet(this, coroutine_suspended2, CoroutineSingletons.RESUMED)) {
                    this.delegate.resumeWith(obj);
                    return;
                }
            } else if (RESULT.compareAndSet(this, coroutineSingletons, obj)) {
                return;
            }
        }
    }

    public final Object getOrThrow() {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        Object obj = this.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.UNDECIDED;
        if (obj == coroutineSingletons) {
            AtomicReferenceFieldUpdater<SafeContinuation<?>, Object> atomicReferenceFieldUpdater = RESULT;
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (atomicReferenceFieldUpdater.compareAndSet(this, coroutineSingletons, coroutine_suspended2)) {
                coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return coroutine_suspended3;
            }
            obj = this.result;
        }
        if (obj == CoroutineSingletons.RESUMED) {
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return coroutine_suspended;
        } else if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        } else {
            return obj;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.delegate;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    public String toString() {
        return "SafeContinuation for " + this.delegate;
    }
}
