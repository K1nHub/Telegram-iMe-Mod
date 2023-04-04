package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzlv implements Iterator<Object>, p035j$.util.Iterator {
    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
