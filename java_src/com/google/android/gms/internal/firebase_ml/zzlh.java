package com.google.android.gms.internal.firebase_ml;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public abstract class zzlh<E> extends zzle<E> implements List<E>, RandomAccess {
    private static final zzlk<Object> zzacq = new zzlg(zzli.zzacr, 0);

    public static <E> zzlh<E> zzih() {
        return (zzlh<E>) zzli.zzacr;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzle
    public final zzlh<E> zzif() {
        return this;
    }

    public static <E> zzlh<E> zzl(E e) {
        Object[] objArr = {e};
        for (int i = 0; i <= 0; i++) {
            if (objArr[0] == null) {
                StringBuilder sb = new StringBuilder(20);
                sb.append("at index 0");
                throw new NullPointerException(sb.toString());
            }
        }
        return new zzli(objArr, 1);
    }

    public static <E> zzlh<E> zzb(Collection<? extends E> collection) {
        if (collection instanceof zzle) {
            zzlh<E> zzif = ((zzle) collection).zzif();
            if (zzif.zzig()) {
                Object[] array = zzif.toArray();
                int length = array.length;
                if (length == 0) {
                    return (zzlh<E>) zzli.zzacr;
                }
                return new zzli(array, length);
            }
            return zzif;
        }
        Object[] array2 = collection.toArray();
        int length2 = array2.length;
        for (int i = 0; i < length2; i++) {
            if (array2[i] == null) {
                StringBuilder sb = new StringBuilder(20);
                sb.append("at index ");
                sb.append(i);
                throw new NullPointerException(sb.toString());
            }
        }
        int length3 = array2.length;
        if (length3 == 0) {
            return (zzlh<E>) zzli.zzacr;
        }
        return new zzli(array2, length3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> zzlh<E> zza(Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return (zzlh<E>) zzli.zzacr;
        }
        return new zzli(objArr, length);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzle
    public final zzll<E> zzib() {
        return (zzlk) listIterator();
    }

    @Override // java.util.List
    public int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public int lastIndexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.List
    /* renamed from: zze */
    public zzlh<E> subList(int i, int i2) {
        zzkv.zza(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        if (i3 == 0) {
            return (zzlh<E>) zzli.zzacr;
        }
        return new zzlj(this, i, i3);
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzle
    int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = get(i2);
        }
        return size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        if (obj == zzkv.checkNotNull(this)) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (zzkq.equal(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                int size2 = size();
                Iterator<E> it = list.iterator();
                int i2 = 0;
                while (true) {
                    if (i2 < size2) {
                        if (!it.hasNext()) {
                            break;
                        }
                        E e = get(i2);
                        i2++;
                        if (!zzkq.equal(e, it.next())) {
                            break;
                        }
                    } else if (!it.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~((i * 31) + get(i2).hashCode()));
        }
        return i;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzle, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        zzkv.zzd(i, size());
        if (isEmpty()) {
            return zzacq;
        }
        return new zzlg(this, i);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (zzlk) listIterator(0);
    }
}
