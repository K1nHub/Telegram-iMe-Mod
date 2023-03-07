package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes.dex */
final class zzuf extends zzth<Double> implements zzvf<Double>, zzwq {
    private static final zzuf zzbpi;
    private int size;
    private double[] zzbpj;

    zzuf() {
        this(new double[10], 0);
    }

    private zzuf(double[] dArr, int i) {
        this.zzbpj = dArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzqb();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.zzbpj;
        System.arraycopy(dArr, i2, dArr, i, this.size - i2);
        this.size -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzuf)) {
            return super.equals(obj);
        }
        zzuf zzufVar = (zzuf) obj;
        if (this.size != zzufVar.size) {
            return false;
        }
        double[] dArr = zzufVar.zzbpj;
        for (int i = 0; i < this.size; i++) {
            if (Double.doubleToLongBits(this.zzbpj[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzuw.zzab(Double.doubleToLongBits(this.zzbpj[i2]));
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zze(double d) {
        zzc(this.size, d);
    }

    private final void zzc(int i, double d) {
        int i2;
        zzqb();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzck(i));
        }
        double[] dArr = this.zzbpj;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.zzbpj, i, dArr2, i + 1, this.size - i);
            this.zzbpj = dArr2;
        }
        this.zzbpj[i] = d;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        zzqb();
        zzuw.checkNotNull(collection);
        if (!(collection instanceof zzuf)) {
            return super.addAll(collection);
        }
        zzuf zzufVar = (zzuf) collection;
        int i = zzufVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.zzbpj;
        if (i3 > dArr.length) {
            this.zzbpj = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(zzufVar.zzbpj, 0, this.zzbpj, this.size, zzufVar.size);
        this.size = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzqb();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Double.valueOf(this.zzbpj[i]))) {
                double[] dArr = this.zzbpj;
                System.arraycopy(dArr, i + 1, dArr, i, (this.size - i) - 1);
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
        double doubleValue = ((Double) obj).doubleValue();
        zzqb();
        zzcj(i);
        double[] dArr = this.zzbpj;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        int i2;
        zzqb();
        zzcj(i);
        double[] dArr = this.zzbpj;
        double d = dArr[i];
        if (i < this.size - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzc(i, ((Double) obj).doubleValue());
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvf
    public final /* synthetic */ zzvf<Double> zzcl(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzuf(Arrays.copyOf(this.zzbpj, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzcj(i);
        return Double.valueOf(this.zzbpj[i]);
    }

    static {
        zzuf zzufVar = new zzuf(new double[0], 0);
        zzbpi = zzufVar;
        zzufVar.zzqa();
    }
}
