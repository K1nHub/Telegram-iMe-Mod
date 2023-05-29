package androidx.collection;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* compiled from: SparseArray.kt */
/* loaded from: classes.dex */
public final class SparseArrayKt$valueIterator$1 implements Iterator<T>, KMappedMarker, p034j$.util.Iterator {
    final /* synthetic */ SparseArrayCompat $this_valueIterator;
    private int index;

    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SparseArrayKt$valueIterator$1(SparseArrayCompat<T> sparseArrayCompat) {
        this.$this_valueIterator = sparseArrayCompat;
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_valueIterator.size();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // java.util.Iterator, p034j$.util.Iterator
    public T next() {
        SparseArrayCompat sparseArrayCompat = this.$this_valueIterator;
        int i = this.index;
        this.index = i + 1;
        return sparseArrayCompat.valueAt(i);
    }
}
