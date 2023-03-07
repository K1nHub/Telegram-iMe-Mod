package com.google.android.gms.internal.firebase_ml;

import java.util.ListIterator;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* loaded from: classes.dex */
final class zzxq implements ListIterator<String>, Iterator {
    private ListIterator<String> zzbww;
    private final /* synthetic */ int zzbwx;
    private final /* synthetic */ zzxr zzbwy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxq(zzxr zzxrVar, int i) {
        zzvp zzvpVar;
        this.zzbwy = zzxrVar;
        this.zzbwx = i;
        zzvpVar = zzxrVar.zzbwz;
        this.zzbww = zzvpVar.listIterator(i);
    }

    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.ListIterator, java.util.Iterator, p034j$.util.Iterator
    public final boolean hasNext() {
        return this.zzbww.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzbww.hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzbww.nextIndex();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzbww.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator, p034j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzbww.previous();
    }

    @Override // java.util.ListIterator, java.util.Iterator, p034j$.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzbww.next();
    }
}
