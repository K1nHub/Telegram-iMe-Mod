package com.google.android.gms.internal.firebase_ml;

import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
final class zzig<T> implements Iterator<T>, p033j$.util.Iterator {
    private int index = 0;
    private final int length;
    private final /* synthetic */ zzid zzzz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzig(zzid zzidVar) {
        this.zzzz = zzidVar;
        this.length = Array.getLength(zzidVar.zzzy);
    }

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        return this.index < this.length;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = this.zzzz.zzzy;
        int i = this.index;
        this.index = i + 1;
        return (T) Array.get(obj, i);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
