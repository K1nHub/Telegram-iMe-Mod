package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class zzvm extends zzth<String> implements zzvp, RandomAccess {
    private static final zzvm zzbug;
    private static final zzvp zzbuh;
    private final List<Object> zzbui;

    public zzvm() {
        this(10);
    }

    public zzvm(int i) {
        this(new ArrayList(i));
    }

    private zzvm(ArrayList<Object> arrayList) {
        this.zzbui = arrayList;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzbui.size();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzqb();
        if (collection instanceof zzvp) {
            collection = ((zzvp) collection).zzsc();
        }
        boolean addAll = this.zzbui.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzqb();
        this.zzbui.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvp
    public final void zzc(zztn zztnVar) {
        zzqb();
        this.zzbui.add(zztnVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvp
    public final Object getRaw(int i) {
        return this.zzbui.get(i);
    }

    private static String zzs(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zztn) {
            return ((zztn) obj).zzqe();
        }
        return zzuw.zzj((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvp
    public final List<?> zzsc() {
        return Collections.unmodifiableList(this.zzbui);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvp
    public final zzvp zzsd() {
        return zzpz() ? new zzxr(this) : this;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        zzqb();
        return zzs(this.zzbui.set(i, (String) obj));
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzqb();
        Object remove = this.zzbui.remove(i);
        ((AbstractList) this).modCount++;
        return zzs(remove);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, com.google.android.gms.internal.firebase_ml.zzvf
    public final /* bridge */ /* synthetic */ boolean zzpz() {
        return super.zzpz();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzqb();
        this.zzbui.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvf
    public final /* synthetic */ zzvf zzcl(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzbui);
        return new zzvm(arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzbui.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zztn) {
            zztn zztnVar = (zztn) obj;
            String zzqe = zztnVar.zzqe();
            if (zztnVar.zzqf()) {
                this.zzbui.set(i, zzqe);
            }
            return zzqe;
        }
        byte[] bArr = (byte[]) obj;
        String zzj = zzuw.zzj(bArr);
        if (zzuw.zzi(bArr)) {
            this.zzbui.set(i, zzj);
        }
        return zzj;
    }

    static {
        zzvm zzvmVar = new zzvm();
        zzbug = zzvmVar;
        zzvmVar.zzqa();
        zzbuh = zzvmVar;
    }
}
