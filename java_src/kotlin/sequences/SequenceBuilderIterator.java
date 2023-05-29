package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* compiled from: SequenceBuilder.kt */
/* loaded from: classes4.dex */
final class SequenceBuilderIterator<T> extends SequenceScope<T> implements Iterator<T>, Continuation<Unit>, KMappedMarker, p034j$.util.Iterator {
    private Iterator<? extends T> nextIterator;
    private Continuation<? super Unit> nextStep;
    private T nextValue;
    private int state;

    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setNextStep(Continuation<? super Unit> continuation) {
        this.nextStep = continuation;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        while (true) {
            int i = this.state;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw exceptionalState();
                }
                java.util.Iterator<? extends T> it = this.nextIterator;
                Intrinsics.checkNotNull(it);
                if (it.hasNext()) {
                    this.state = 2;
                    return true;
                }
                this.nextIterator = null;
            }
            this.state = 5;
            Continuation<? super Unit> continuation = this.nextStep;
            Intrinsics.checkNotNull(continuation);
            this.nextStep = null;
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m1576constructorimpl(Unit.INSTANCE));
        }
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public T next() {
        int i = this.state;
        if (i == 0 || i == 1) {
            return nextNotReady();
        }
        if (i == 2) {
            this.state = 1;
            java.util.Iterator<? extends T> it = this.nextIterator;
            Intrinsics.checkNotNull(it);
            return it.next();
        } else if (i == 3) {
            this.state = 0;
            T t = this.nextValue;
            this.nextValue = null;
            return t;
        } else {
            throw exceptionalState();
        }
    }

    private final T nextNotReady() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    private final Throwable exceptionalState() {
        int i = this.state;
        if (i != 4) {
            if (i == 5) {
                return new IllegalStateException("Iterator has failed.");
            }
            return new IllegalStateException("Unexpected state of the iterator: " + this.state);
        }
        return new NoSuchElementException();
    }

    @Override // kotlin.sequences.SequenceScope
    public Object yield(T t, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        this.nextValue = t;
        this.state = 3;
        this.nextStep = continuation;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == coroutine_suspended2) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return coroutine_suspended == coroutine_suspended3 ? coroutine_suspended : Unit.INSTANCE;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        ResultKt.throwOnFailure(obj);
        this.state = 4;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }
}
