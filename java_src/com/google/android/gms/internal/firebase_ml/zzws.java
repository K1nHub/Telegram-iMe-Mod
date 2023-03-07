package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
final class zzws<E> extends zzth<E> {
    private static final zzws<Object> zzbvy;
    private final List<E> zzbui;

    public static <E> zzws<E> zzsv() {
        return (zzws<E>) zzbvy;
    }

    zzws() {
        this(new ArrayList(10));
    }

    private zzws(List<E> list) {
        this.zzbui = list;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        zzqb();
        this.zzbui.add(i, e);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.zzbui.get(i);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzqb();
        E remove = this.zzbui.remove(i);
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzqb();
        E e2 = this.zzbui.set(i, e);
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzbui.size();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvf
    public final /* synthetic */ zzvf zzcl(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzbui);
        return new zzws(arrayList);
    }

    static {
        zzws<Object> zzwsVar = new zzws<>(new ArrayList(0));
        zzbvy = zzwsVar;
        zzwsVar.zzqa();
    }
}
