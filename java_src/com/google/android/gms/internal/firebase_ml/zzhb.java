package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* loaded from: classes.dex */
public class zzhb<K, V> extends AbstractMap<K, V> implements Cloneable {
    int size;
    private Object[] zzxu;

    /* loaded from: classes.dex */
    final class zzb extends AbstractSet<Map.Entry<K, V>> {
        zzb() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new zzc();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return zzhb.this.size;
        }
    }

    /* loaded from: classes.dex */
    final class zzc implements Iterator<Map.Entry<K, V>>, p033j$.util.Iterator {
        private boolean zzxv;
        private int zzxw;

        zzc() {
        }

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public final boolean hasNext() {
            return this.zzxw < zzhb.this.size;
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public final void remove() {
            int i = this.zzxw - 1;
            if (this.zzxv || i < 0) {
                throw new IllegalArgumentException();
            }
            zzhb.this.remove(i);
            this.zzxw--;
            this.zzxv = true;
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public final /* synthetic */ Object next() {
            int i = this.zzxw;
            zzhb zzhbVar = zzhb.this;
            if (i == zzhbVar.size) {
                throw new NoSuchElementException();
            }
            this.zzxw = i + 1;
            this.zzxv = false;
            return new zza(i);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.size;
    }

    /* loaded from: classes.dex */
    final class zza implements Map.Entry<K, V> {
        private int index;

        zza(int i) {
            this.index = i;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return (K) zzhb.this.zzab(this.index);
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return (V) zzhb.this.zzac(this.index);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            return (V) zzhb.this.set(this.index, v);
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            Object key = getKey();
            Object value = getValue();
            return (key != null ? key.hashCode() : 0) ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return zzkq.equal(getKey(), entry.getKey()) && zzkq.equal(getValue(), entry.getValue());
            }
            return false;
        }
    }

    public final K zzab(int i) {
        if (i < 0 || i >= this.size) {
            return null;
        }
        return (K) this.zzxu[i << 1];
    }

    public final V zzac(int i) {
        if (i < 0 || i >= this.size) {
            return null;
        }
        return zzad((i << 1) + 1);
    }

    public final V set(int i, V v) {
        int i2 = this.size;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = (i << 1) + 1;
        V zzad = zzad(i3);
        this.zzxu[i3] = v;
        return zzad;
    }

    public final V remove(int i) {
        return zzae(i << 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return -2 != zze(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        return zzad(zze(obj) + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int zze = zze(k) >> 1;
        if (zze == -1) {
            zze = this.size;
        }
        if (zze >= 0) {
            int i = zze + 1;
            if (i < 0) {
                throw new IndexOutOfBoundsException();
            }
            Object[] objArr = this.zzxu;
            int i2 = i << 1;
            int length = objArr == null ? 0 : objArr.length;
            if (i2 > length) {
                int i3 = ((length / 2) * 3) + 1;
                if (i3 % 2 != 0) {
                    i3++;
                }
                if (i3 >= i2) {
                    i2 = i3;
                }
                if (i2 == 0) {
                    this.zzxu = null;
                } else {
                    int i4 = this.size;
                    if (i4 == 0 || i2 != objArr.length) {
                        Object[] objArr2 = new Object[i2];
                        this.zzxu = objArr2;
                        if (i4 != 0) {
                            System.arraycopy(objArr, 0, objArr2, 0, i4 << 1);
                        }
                    }
                }
            }
            int i5 = zze << 1;
            V zzad = zzad(i5 + 1);
            zzb(i5, k, v);
            if (i > this.size) {
                this.size = i;
            }
            return zzad;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        return zzae(zze(obj));
    }

    private final void zzb(int i, K k, V v) {
        Object[] objArr = this.zzxu;
        objArr[i] = k;
        objArr[i + 1] = v;
    }

    private final V zzad(int i) {
        if (i < 0) {
            return null;
        }
        return (V) this.zzxu[i];
    }

    private final int zze(Object obj) {
        int i = this.size << 1;
        Object[] objArr = this.zzxu;
        for (int i2 = 0; i2 < i; i2 += 2) {
            Object obj2 = objArr[i2];
            if (obj == null) {
                if (obj2 == null) {
                    return i2;
                }
            } else if (obj.equals(obj2)) {
                return i2;
            }
        }
        return -2;
    }

    private final V zzae(int i) {
        int i2 = this.size << 1;
        if (i < 0 || i >= i2) {
            return null;
        }
        V zzad = zzad(i + 1);
        Object[] objArr = this.zzxu;
        int i3 = (i2 - i) - 2;
        if (i3 != 0) {
            System.arraycopy(objArr, i + 2, objArr, i, i3);
        }
        this.size--;
        zzb(i2 - 2, null, null);
        return zzad;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.size = 0;
        this.zzxu = null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        int i = this.size << 1;
        Object[] objArr = this.zzxu;
        for (int i2 = 1; i2 < i; i2 += 2) {
            Object obj2 = objArr[i2];
            if (obj == null) {
                if (obj2 == null) {
                    return true;
                }
            } else if (obj.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return new zzb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.AbstractMap
    /* renamed from: zzgr */
    public final zzhb<K, V> clone() {
        try {
            zzhb<K, V> zzhbVar = (zzhb) super.clone();
            Object[] objArr = this.zzxu;
            if (objArr != null) {
                int length = objArr.length;
                Object[] objArr2 = new Object[length];
                zzhbVar.zzxu = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
            }
            return zzhbVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }
}
