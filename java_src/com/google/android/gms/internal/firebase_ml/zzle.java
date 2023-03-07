package com.google.android.gms.internal.firebase_ml;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes.dex */
public abstract class zzle<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] zzaco = new Object[0];

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: zzib */
    public abstract zzll<E> iterator();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] zzic() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean zzig();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(zzaco);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        zzkv.checkNotNull(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] zzic = zzic();
            if (zzic != null) {
                return (T[]) Arrays.copyOfRange(zzic, zzid(), zzie(), tArr.getClass());
            }
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        zza(tArr, 0);
        return tArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzid() {
        throw new UnsupportedOperationException();
    }

    int zzie() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public zzlh<E> zzif() {
        return isEmpty() ? zzlh.zzih() : zzlh.zza(toArray());
    }

    int zza(Object[] objArr, int i) {
        zzll zzllVar = (zzll) iterator();
        while (zzllVar.hasNext()) {
            objArr[i] = zzllVar.next();
            i++;
        }
        return i;
    }
}
