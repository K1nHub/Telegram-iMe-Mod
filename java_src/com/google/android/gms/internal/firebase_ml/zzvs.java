package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes.dex */
final class zzvs extends zzth<Long> implements zzvf<Long>, zzwq {
    private static final zzvs zzbup;
    private int size;
    private long[] zzbuq;

    zzvs() {
        this(new long[10], 0);
    }

    private zzvs(long[] jArr, int i) {
        this.zzbuq = jArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzqb();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.zzbuq;
        System.arraycopy(jArr, i2, jArr, i, this.size - i2);
        this.size -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvs)) {
            return super.equals(obj);
        }
        zzvs zzvsVar = (zzvs) obj;
        if (this.size != zzvsVar.size) {
            return false;
        }
        long[] jArr = zzvsVar.zzbuq;
        for (int i = 0; i < this.size; i++) {
            if (this.zzbuq[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzuw.zzab(this.zzbuq[i2]);
        }
        return i;
    }

    public final long getLong(int i) {
        zzcj(i);
        return this.zzbuq[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzac(long j) {
        zzk(this.size, j);
    }

    private final void zzk(int i, long j) {
        int i2;
        zzqb();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzck(i));
        }
        long[] jArr = this.zzbuq;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.zzbuq, i, jArr2, i + 1, this.size - i);
            this.zzbuq = jArr2;
        }
        this.zzbuq[i] = j;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zzqb();
        zzuw.checkNotNull(collection);
        if (!(collection instanceof zzvs)) {
            return super.addAll(collection);
        }
        zzvs zzvsVar = (zzvs) collection;
        int i = zzvsVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.zzbuq;
        if (i3 > jArr.length) {
            this.zzbuq = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(zzvsVar.zzbuq, 0, this.zzbuq, this.size, zzvsVar.size);
        this.size = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzqb();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Long.valueOf(this.zzbuq[i]))) {
                long[] jArr = this.zzbuq;
                System.arraycopy(jArr, i + 1, jArr, i, (this.size - i) - 1);
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
        long longValue = ((Long) obj).longValue();
        zzqb();
        zzcj(i);
        long[] jArr = this.zzbuq;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        int i2;
        zzqb();
        zzcj(i);
        long[] jArr = this.zzbuq;
        long j = jArr[i];
        if (i < this.size - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzk(i, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvf
    public final /* synthetic */ zzvf<Long> zzcl(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzvs(Arrays.copyOf(this.zzbuq, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(getLong(i));
    }

    static {
        zzvs zzvsVar = new zzvs(new long[0], 0);
        zzbup = zzvsVar;
        zzvsVar.zzqa();
    }
}
