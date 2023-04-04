package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* compiled from: PrimitiveIterators.kt */
/* loaded from: classes4.dex */
public abstract class LongIterator implements Iterator<Long>, KMappedMarker, p035j$.util.Iterator {
    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    public abstract long nextLong();

    @Override // java.util.Iterator, p035j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return Long.valueOf(nextLong());
    }
}
