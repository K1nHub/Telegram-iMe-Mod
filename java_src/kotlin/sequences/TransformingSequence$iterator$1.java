package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Sequences.kt */
/* loaded from: classes4.dex */
public final class TransformingSequence$iterator$1<R> implements Iterator<R>, KMappedMarker, p033j$.util.Iterator {
    private final Iterator<T> iterator;
    final /* synthetic */ TransformingSequence<T, R> this$0;

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransformingSequence$iterator$1(TransformingSequence<T, R> transformingSequence) {
        Sequence sequence;
        this.this$0 = transformingSequence;
        sequence = ((TransformingSequence) transformingSequence).sequence;
        this.iterator = sequence.iterator();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public R next() {
        Function1 function1;
        function1 = ((TransformingSequence) this.this$0).transformer;
        return (R) function1.invoke(this.iterator.next());
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        return this.iterator.hasNext();
    }
}
