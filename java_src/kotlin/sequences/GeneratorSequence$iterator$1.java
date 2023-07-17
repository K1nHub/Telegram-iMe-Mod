package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: Sequences.kt */
/* loaded from: classes4.dex */
public final class GeneratorSequence$iterator$1 implements Iterator<T>, KMappedMarker, p033j$.util.Iterator {
    private T nextItem;
    private int nextState = -2;
    final /* synthetic */ GeneratorSequence<T> this$0;

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GeneratorSequence$iterator$1(GeneratorSequence<T> generatorSequence) {
        this.this$0 = generatorSequence;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void calcNext() {
        Function1 function1;
        T t;
        Function0 function0;
        if (this.nextState == -2) {
            function0 = ((GeneratorSequence) this.this$0).getInitialValue;
            t = function0.invoke();
        } else {
            function1 = ((GeneratorSequence) this.this$0).getNextValue;
            T t2 = this.nextItem;
            Intrinsics.checkNotNull(t2);
            t = function1.invoke(t2);
        }
        this.nextItem = t;
        this.nextState = t == 0 ? 0 : 1;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public T next() {
        if (this.nextState < 0) {
            calcNext();
        }
        if (this.nextState == 0) {
            throw new NoSuchElementException();
        }
        T t = this.nextItem;
        Intrinsics.checkNotNull(t, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
        this.nextState = -1;
        return t;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (this.nextState < 0) {
            calcNext();
        }
        return this.nextState == 1;
    }
}
