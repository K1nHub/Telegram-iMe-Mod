package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: Iterators.kt */
/* loaded from: classes4.dex */
public final class IndexingIterator<T> implements Iterator<IndexedValue<? extends T>>, KMappedMarker, p033j$.util.Iterator {
    private int index;
    private final Iterator<T> iterator;

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IndexingIterator(java.util.Iterator<? extends T> iterator) {
        Intrinsics.checkNotNullParameter(iterator, "iterator");
        this.iterator = iterator;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        return this.iterator.hasNext();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final IndexedValue<T> next() {
        int i = this.index;
        this.index = i + 1;
        if (i < 0) {
            CollectionsKt__CollectionsKt.throwIndexOverflow();
        }
        return new IndexedValue<>(i, this.iterator.next());
    }
}
