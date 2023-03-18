package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* compiled from: PrimitiveIterators.kt */
/* loaded from: classes4.dex */
public abstract class IntIterator implements Iterator<Integer>, KMappedMarker, p034j$.util.Iterator {
    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    public abstract int nextInt();

    @Override // java.util.Iterator, p034j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return Integer.valueOf(nextInt());
    }
}
