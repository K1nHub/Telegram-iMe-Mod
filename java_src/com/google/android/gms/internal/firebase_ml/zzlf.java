package com.google.android.gms.internal.firebase_ml;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
abstract class zzlf<E> extends zzlk<E> {
    private int position;
    private final int size;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzlf(int i, int i2) {
        zzkv.zzd(i2, i);
        this.size = i;
        this.position = i2;
    }

    protected abstract E get(int i);

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        return this.position < this.size;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.position;
        this.position = i + 1;
        return get(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.position;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.position > 0;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.position - 1;
        this.position = i;
        return get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.position - 1;
    }
}
