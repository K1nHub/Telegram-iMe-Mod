package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes.dex */
final class zzus extends zzth<Float> implements zzvf<Float>, zzwq {
    private static final zzus zzbsg;
    private int size;
    private float[] zzbsh;

    public static zzus zzrc() {
        return zzbsg;
    }

    zzus() {
        this(new float[10], 0);
    }

    private zzus(float[] fArr, int i) {
        this.zzbsh = fArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzqb();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.zzbsh;
        System.arraycopy(fArr, i2, fArr, i, this.size - i2);
        this.size -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzus)) {
            return super.equals(obj);
        }
        zzus zzusVar = (zzus) obj;
        if (this.size != zzusVar.size) {
            return false;
        }
        float[] fArr = zzusVar.zzbsh;
        for (int i = 0; i < this.size; i++) {
            if (Float.floatToIntBits(this.zzbsh[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.zzbsh[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzu(float f) {
        zzc(this.size, f);
    }

    private final void zzc(int i, float f) {
        int i2;
        zzqb();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzck(i));
        }
        float[] fArr = this.zzbsh;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.zzbsh, i, fArr2, i + 1, this.size - i);
            this.zzbsh = fArr2;
        }
        this.zzbsh[i] = f;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        zzqb();
        zzuw.checkNotNull(collection);
        if (!(collection instanceof zzus)) {
            return super.addAll(collection);
        }
        zzus zzusVar = (zzus) collection;
        int i = zzusVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.zzbsh;
        if (i3 > fArr.length) {
            this.zzbsh = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(zzusVar.zzbsh, 0, this.zzbsh, this.size, zzusVar.size);
        this.size = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzqb();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Float.valueOf(this.zzbsh[i]))) {
                float[] fArr = this.zzbsh;
                System.arraycopy(fArr, i + 1, fArr, i, (this.size - i) - 1);
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
        float floatValue = ((Float) obj).floatValue();
        zzqb();
        zzcj(i);
        float[] fArr = this.zzbsh;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        int i2;
        zzqb();
        zzcj(i);
        float[] fArr = this.zzbsh;
        float f = fArr[i];
        if (i < this.size - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzc(i, ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvf
    public final /* synthetic */ zzvf<Float> zzcl(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzus(Arrays.copyOf(this.zzbsh, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzcj(i);
        return Float.valueOf(this.zzbsh[i]);
    }

    static {
        zzus zzusVar = new zzus(new float[0], 0);
        zzbsg = zzusVar;
        zzusVar.zzqa();
    }
}
