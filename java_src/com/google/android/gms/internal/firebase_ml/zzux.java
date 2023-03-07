package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzux extends zzth<Integer> implements zzvd, zzwq, RandomAccess {
    private static final zzux zzbtn;
    private int size;
    private int[] zzbto;

    public static zzux zzrs() {
        return zzbtn;
    }

    zzux() {
        this(new int[10], 0);
    }

    private zzux(int[] iArr, int i) {
        this.zzbto = iArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzqb();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.zzbto;
        System.arraycopy(iArr, i2, iArr, i, this.size - i2);
        this.size -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzux)) {
            return super.equals(obj);
        }
        zzux zzuxVar = (zzux) obj;
        if (this.size != zzuxVar.size) {
            return false;
        }
        int[] iArr = zzuxVar.zzbto;
        for (int i = 0; i < this.size; i++) {
            if (this.zzbto[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + this.zzbto[i2];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvf
    /* renamed from: zzdh */
    public final zzvd zzcl(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzux(Arrays.copyOf(this.zzbto, i), this.size);
    }

    public final int getInt(int i) {
        zzcj(i);
        return this.zzbto[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzvd
    public final void zzdi(int i) {
        zzu(this.size, i);
    }

    private final void zzu(int i, int i2) {
        int i3;
        zzqb();
        if (i < 0 || i > (i3 = this.size)) {
            throw new IndexOutOfBoundsException(zzck(i));
        }
        int[] iArr = this.zzbto;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.zzbto, i, iArr2, i + 1, this.size - i);
            this.zzbto = iArr2;
        }
        this.zzbto[i] = i2;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzqb();
        zzuw.checkNotNull(collection);
        if (!(collection instanceof zzux)) {
            return super.addAll(collection);
        }
        zzux zzuxVar = (zzux) collection;
        int i = zzuxVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.zzbto;
        if (i3 > iArr.length) {
            this.zzbto = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(zzuxVar.zzbto, 0, this.zzbto, this.size, zzuxVar.size);
        this.size = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzqb();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Integer.valueOf(this.zzbto[i]))) {
                int[] iArr = this.zzbto;
                System.arraycopy(iArr, i + 1, iArr, i, (this.size - i) - 1);
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
        int intValue = ((Integer) obj).intValue();
        zzqb();
        zzcj(i);
        int[] iArr = this.zzbto;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        int i2;
        zzqb();
        zzcj(i);
        int[] iArr = this.zzbto;
        int i3 = iArr[i];
        if (i < this.size - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzth, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzu(i, ((Integer) obj).intValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    static {
        zzux zzuxVar = new zzux(new int[0], 0);
        zzbtn = zzuxVar;
        zzuxVar.zzqa();
    }
}
