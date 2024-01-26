package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Sequences.kt */
/* loaded from: classes4.dex */
public final class FlatteningSequence$iterator$1<E> implements Iterator<E>, KMappedMarker, p033j$.util.Iterator {
    private Iterator<? extends E> itemIterator;
    private final Iterator<T> iterator;
    final /* synthetic */ FlatteningSequence<T, R, E> this$0;

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlatteningSequence$iterator$1(FlatteningSequence<T, R, E> flatteningSequence) {
        Sequence sequence;
        this.this$0 = flatteningSequence;
        sequence = ((FlatteningSequence) flatteningSequence).sequence;
        this.iterator = sequence.iterator();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public E next() {
        if (!ensureItemIterator()) {
            throw new NoSuchElementException();
        }
        java.util.Iterator<? extends E> it = this.itemIterator;
        Intrinsics.checkNotNull(it);
        return it.next();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        return ensureItemIterator();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0045, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean ensureItemIterator() {
        /*
            r5 = this;
            java.util.Iterator<? extends E> r0 = r5.itemIterator
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Le
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto Le
            r0 = r1
            goto Lf
        Le:
            r0 = r2
        Lf:
            if (r0 == 0) goto L14
            r0 = 0
            r5.itemIterator = r0
        L14:
            java.util.Iterator<? extends E> r0 = r5.itemIterator
            if (r0 != 0) goto L45
            java.util.Iterator<T> r0 = r5.iterator
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L21
            return r2
        L21:
            java.util.Iterator<T> r0 = r5.iterator
            java.lang.Object r0 = r0.next()
            kotlin.sequences.FlatteningSequence<T, R, E> r3 = r5.this$0
            kotlin.jvm.functions.Function1 r3 = kotlin.sequences.FlatteningSequence.access$getIterator$p(r3)
            kotlin.sequences.FlatteningSequence<T, R, E> r4 = r5.this$0
            kotlin.jvm.functions.Function1 r4 = kotlin.sequences.FlatteningSequence.access$getTransformer$p(r4)
            java.lang.Object r0 = r4.invoke(r0)
            java.lang.Object r0 = r3.invoke(r0)
            java.util.Iterator r0 = (java.util.Iterator) r0
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L14
            r5.itemIterator = r0
        L45:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.FlatteningSequence$iterator$1.ensureItemIterator():boolean");
    }
}
