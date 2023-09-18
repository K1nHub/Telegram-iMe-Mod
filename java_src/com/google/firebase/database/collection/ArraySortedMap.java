package com.google.firebase.database.collection;

import com.google.firebase.database.collection.ImmutableSortedMap;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* loaded from: classes4.dex */
public class ArraySortedMap<K, V> extends ImmutableSortedMap<K, V> {
    private final Comparator<K> comparator;
    private final K[] keys;
    private final V[] values;

    public static <A, B, C> ArraySortedMap<A, C> buildFrom(List<A> list, Map<B, C> map, ImmutableSortedMap.Builder.KeyTranslator<A, B> keyTranslator, Comparator<A> comparator) {
        Collections.sort(list, comparator);
        int size = list.size();
        Object[] objArr = new Object[size];
        Object[] objArr2 = new Object[size];
        int i = 0;
        for (A a : list) {
            objArr[i] = a;
            objArr2[i] = map.get(keyTranslator.translate(a));
            i++;
        }
        return new ArraySortedMap<>(comparator, objArr, objArr2);
    }

    public ArraySortedMap(Comparator<K> comparator) {
        this.keys = (K[]) new Object[0];
        this.values = (V[]) new Object[0];
        this.comparator = comparator;
    }

    private ArraySortedMap(Comparator<K> comparator, K[] kArr, V[] vArr) {
        this.keys = kArr;
        this.values = vArr;
        this.comparator = comparator;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public boolean containsKey(K k) {
        return findKey(k) != -1;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public V get(K k) {
        int findKey = findKey(k);
        if (findKey != -1) {
            return this.values[findKey];
        }
        return null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public ImmutableSortedMap<K, V> remove(K k) {
        int findKey = findKey(k);
        if (findKey == -1) {
            return this;
        }
        return new ArraySortedMap(this.comparator, removeFromArray(this.keys, findKey), removeFromArray(this.values, findKey));
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public ImmutableSortedMap<K, V> insert(K k, V v) {
        int findKey = findKey(k);
        if (findKey != -1) {
            K[] kArr = this.keys;
            if (kArr[findKey] == k && this.values[findKey] == v) {
                return this;
            }
            return new ArraySortedMap(this.comparator, replaceInArray(kArr, findKey, k), replaceInArray(this.values, findKey, v));
        } else if (this.keys.length > 25) {
            HashMap hashMap = new HashMap(this.keys.length + 1);
            int i = 0;
            while (true) {
                K[] kArr2 = this.keys;
                if (i < kArr2.length) {
                    hashMap.put(kArr2[i], this.values[i]);
                    i++;
                } else {
                    hashMap.put(k, v);
                    return RBTreeSortedMap.fromMap(hashMap, this.comparator);
                }
            }
        } else {
            int findKeyOrInsertPosition = findKeyOrInsertPosition(k);
            return new ArraySortedMap(this.comparator, addToArray(this.keys, findKeyOrInsertPosition, k), addToArray(this.values, findKeyOrInsertPosition, v));
        }
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public K getMinKey() {
        K[] kArr = this.keys;
        if (kArr.length > 0) {
            return kArr[0];
        }
        return null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public K getMaxKey() {
        K[] kArr = this.keys;
        if (kArr.length > 0) {
            return kArr[kArr.length - 1];
        }
        return null;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public int size() {
        return this.keys.length;
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public boolean isEmpty() {
        return this.keys.length == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.database.collection.ArraySortedMap$1 */
    /* loaded from: classes4.dex */
    public class C10001 implements Iterator<Map.Entry<K, V>>, p033j$.util.Iterator {
        int currentPos;
        final /* synthetic */ int val$pos;
        final /* synthetic */ boolean val$reverse;

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        C10001(int i, boolean z) {
            this.val$pos = i;
            this.val$reverse = z;
            this.currentPos = i;
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public boolean hasNext() {
            if (this.val$reverse) {
                if (this.currentPos >= 0) {
                    return true;
                }
            } else if (this.currentPos < ArraySortedMap.this.keys.length) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public Map.Entry<K, V> next() {
            Object obj = ArraySortedMap.this.keys[this.currentPos];
            Object[] objArr = ArraySortedMap.this.values;
            int i = this.currentPos;
            Object obj2 = objArr[i];
            this.currentPos = this.val$reverse ? i - 1 : i + 1;
            return new AbstractMap.SimpleImmutableEntry(obj, obj2);
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Can't remove elements from ImmutableSortedMap");
        }
    }

    private java.util.Iterator<Map.Entry<K, V>> iterator(int i, boolean z) {
        return new C10001(i, z);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap, java.lang.Iterable
    public java.util.Iterator<Map.Entry<K, V>> iterator() {
        return iterator(0, false);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public java.util.Iterator<Map.Entry<K, V>> iteratorFrom(K k) {
        return iterator(findKeyOrInsertPosition(k), false);
    }

    @Override // com.google.firebase.database.collection.ImmutableSortedMap
    public Comparator<K> getComparator() {
        return this.comparator;
    }

    private static <T> T[] removeFromArray(T[] tArr, int i) {
        int length = tArr.length - 1;
        T[] tArr2 = (T[]) new Object[length];
        System.arraycopy(tArr, 0, tArr2, 0, i);
        System.arraycopy(tArr, i + 1, tArr2, i, length - i);
        return tArr2;
    }

    private static <T> T[] addToArray(T[] tArr, int i, T t) {
        int length = tArr.length + 1;
        T[] tArr2 = (T[]) new Object[length];
        System.arraycopy(tArr, 0, tArr2, 0, i);
        tArr2[i] = t;
        System.arraycopy(tArr, i, tArr2, i + 1, (length - i) - 1);
        return tArr2;
    }

    private static <T> T[] replaceInArray(T[] tArr, int i, T t) {
        int length = tArr.length;
        T[] tArr2 = (T[]) new Object[length];
        System.arraycopy(tArr, 0, tArr2, 0, length);
        tArr2[i] = t;
        return tArr2;
    }

    private int findKeyOrInsertPosition(K k) {
        int i = 0;
        while (true) {
            K[] kArr = this.keys;
            if (i >= kArr.length || this.comparator.compare(kArr[i], k) >= 0) {
                break;
            }
            i++;
        }
        return i;
    }

    private int findKey(K k) {
        int i = 0;
        for (K k2 : this.keys) {
            if (this.comparator.compare(k, k2) == 0) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
