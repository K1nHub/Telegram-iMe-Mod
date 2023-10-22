package org.ton.hashmap;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Pair;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.ton.bitstring.BitString;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: HmeEmpty.kt */
/* loaded from: classes6.dex */
final class EmptyIterator<T> implements Iterator<Pair<? extends BitString, ? extends T>>, KMappedMarker, p033j$.util.Iterator {
    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Pair<BitString, T> next() {
        throw new NoSuchElementException();
    }
}
