package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes.dex */
final class zztl extends zzth<Boolean> implements zzvf<Boolean>, zzwq {
    private static final zztl zzbon;
    private int size;
    private boolean[] zzboo;

    zztl() {
        this(new boolean[10], 0);
    }

    private zztl(boolean[] zArr, int i) {
        this.zzboo = zArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzqb();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.zzboo;
        System.arraycopy(zArr, i2, zArr, i, this.size - i2);
        this.size -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zztl)) {
            return super.equals(obj);
        }
        zztl zztlVar = (zztl) obj;
        if (this.size != zztlVar.size) {
            return false;
        }
        boolean[] zArr = zztlVar.zzboo;
        for (int i = 0; i < this.size; i++) {
            if (this.zzboo[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzuw.zzan(this.zzboo[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void addBoolean(boolean z) {
        zza(this.size, z);
    }

    private final void zza(int i, boolean z) {
        int i2;
        zzqb();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzck(i));
        }
        boolean[] zArr = this.zzboo;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.zzboo, i, zArr2, i + 1, this.size - i);
            this.zzboo = zArr2;
        }
        this.zzboo[i] = z;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zzqb();
        zzuw.checkNotNull(collection);
        if (!(collection instanceof zztl)) {
            return super.addAll(collection);
        }
        zztl zztlVar = (zztl) collection;
        int i = zztlVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.zzboo;
        if (i3 > zArr.length) {
            this.zzboo = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(zztlVar.zzboo, 0, this.zzboo, this.size, zztlVar.size);
        this.size = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzqb();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Boolean.valueOf(this.zzboo[i]))) {
                boolean[] zArr = this.zzboo;
                System.arraycopy(zArr, i + 1, zArr, i, (this.size - i) - 1);
                this.size--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    private final void zzcj(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzck(i));
        }
    }

    private final String zzck(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        zzqb();
        zzcj(i);
        boolean[] zArr = this.zzboo;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        int i2;
        zzqb();
        zzcj(i);
        boolean[] zArr = this.zzboo;
        boolean z = zArr[i];
        if (i < this.size - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zza(i, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvf
    public final /* synthetic */ zzvf<Boolean> zzcl(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zztl(Arrays.copyOf(this.zzboo, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzcj(i);
        return Boolean.valueOf(this.zzboo[i]);
    }

    static {
        zztl zztlVar = new zztl(new boolean[0], 0);
        zzbon = zztlVar;
        zztlVar.zzqa();
    }
}
