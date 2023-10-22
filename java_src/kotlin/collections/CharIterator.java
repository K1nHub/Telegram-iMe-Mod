package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: PrimitiveIterators.kt */
/* loaded from: classes4.dex */
public abstract class CharIterator implements Iterator<Character>, KMappedMarker, p033j$.util.Iterator {
    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    public abstract char nextChar();

    @Override // java.util.Iterator, p033j$.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return Character.valueOf(nextChar());
    }
}
