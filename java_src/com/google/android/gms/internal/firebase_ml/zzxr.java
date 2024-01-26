package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class zzxr extends AbstractList<String> implements zzvp, RandomAccess {
    private final zzvp zzbwz;

    public zzxr(zzvp zzvpVar) {
        this.zzbwz = zzvpVar;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvp
    public final zzvp zzsd() {
        return this;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvp
    public final Object getRaw(int i) {
        return this.zzbwz.getRaw(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzbwz.size();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvp
    public final void zzc(zztn zztnVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzxq(this, i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzxt(this);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvp
    public final List<?> zzsc() {
        return this.zzbwz.zzsc();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.zzbwz.get(i);
    }
}
