package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbc implements Iterator, p035j$.util.Iterator {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zzbb zzfl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbc(zzbb zzbbVar) {
        this.zzfl = zzbbVar;
        this.limit = zzbbVar.size();
    }

    private final byte nextByte() {
        try {
            zzbb zzbbVar = this.zzfl;
            int i = this.position;
            this.position = i + 1;
            return zzbbVar.zzj(i);
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final /* synthetic */ Object next() {
        return Byte.valueOf(nextByte());
    }

    @Override // java.util.Iterator, p035j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
