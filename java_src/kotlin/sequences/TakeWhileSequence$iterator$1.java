package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Sequences.kt */
/* loaded from: classes4.dex */
public final class TakeWhileSequence$iterator$1<T> implements Iterator<T>, KMappedMarker, p033j$.util.Iterator {
    private final Iterator<T> iterator;
    private T nextItem;
    private int nextState;
    final /* synthetic */ TakeWhileSequence<T> this$0;

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TakeWhileSequence$iterator$1(TakeWhileSequence<T> takeWhileSequence) {
        Sequence sequence;
        this.this$0 = takeWhileSequence;
        sequence = ((TakeWhileSequence) takeWhileSequence).sequence;
        this.iterator = sequence.iterator();
        this.nextState = -1;
    }

    private final void calcNext() {
        Function1 function1;
        if (this.iterator.hasNext()) {
            T next = this.iterator.next();
            function1 = ((TakeWhileSequence) this.this$0).predicate;
            if (((Boolean) function1.invoke(next)).booleanValue()) {
                this.nextState = 1;
                this.nextItem = next;
                return;
            }
        }
        this.nextState = 0;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public T next() {
        if (this.nextState == -1) {
            calcNext();
        }
        if (this.nextState == 0) {
            throw new NoSuchElementException();
        }
        T t = this.nextItem;
        this.nextItem = null;
        this.nextState = -1;
        return t;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (this.nextState == -1) {
            calcNext();
        }
        return this.nextState == 1;
    }
}
