package com.google.android.gms.internal.firebase_ml;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzwz<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zzbpr;
    private final int zzbwg;
    private List<zzxe> zzbwh;
    private Map<K, V> zzbwi;
    private volatile zzxg zzbwj;
    private Map<K, V> zzbwk;
    private volatile zzxa zzbwl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends zzuo<FieldDescriptorType>> zzwz<FieldDescriptorType, Object> zzdp(int i) {
        return new zzwy(i);
    }

    private zzwz(int i) {
        this.zzbwg = i;
        this.zzbwh = Collections.emptyList();
        this.zzbwi = Collections.emptyMap();
        this.zzbwk = Collections.emptyMap();
    }

    public void zzqa() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (this.zzbpr) {
            return;
        }
        if (this.zzbwi.isEmpty()) {
            unmodifiableMap = Collections.emptyMap();
        } else {
            unmodifiableMap = Collections.unmodifiableMap(this.zzbwi);
        }
        this.zzbwi = unmodifiableMap;
        if (this.zzbwk.isEmpty()) {
            unmodifiableMap2 = Collections.emptyMap();
        } else {
            unmodifiableMap2 = Collections.unmodifiableMap(this.zzbwk);
        }
        this.zzbwk = unmodifiableMap2;
        this.zzbpr = true;
    }

    public final boolean isImmutable() {
        return this.zzbpr;
    }

    public final int zzte() {
        return this.zzbwh.size();
    }

    public final Map.Entry<K, V> zzdq(int i) {
        return this.zzbwh.get(i);
    }

    public final Iterable<Map.Entry<K, V>> zztf() {
        if (this.zzbwi.isEmpty()) {
            return zzxd.zztk();
        }
        return this.zzbwi.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzbwh.size() + this.zzbwi.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza((zzwz<K, V>) comparable) >= 0 || this.zzbwi.containsKey(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzwz<K, V>) comparable);
        if (zza >= 0) {
            return (V) this.zzbwh.get(zza).getValue();
        }
        return this.zzbwi.get(comparable);
    }

    public final V zza(K k, V v) {
        zzth();
        int zza = zza((zzwz<K, V>) k);
        if (zza >= 0) {
            return (V) this.zzbwh.get(zza).setValue(v);
        }
        zzth();
        if (this.zzbwh.isEmpty() && !(this.zzbwh instanceof ArrayList)) {
            this.zzbwh = new ArrayList(this.zzbwg);
        }
        int i = -(zza + 1);
        if (i >= this.zzbwg) {
            return zzti().put(k, v);
        }
        int size = this.zzbwh.size();
        int i2 = this.zzbwg;
        if (size == i2) {
            zzxe remove = this.zzbwh.remove(i2 - 1);
            zzti().put((K) remove.getKey(), (V) remove.getValue());
        }
        this.zzbwh.add(i, new zzxe(this, k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzth();
        if (!this.zzbwh.isEmpty()) {
            this.zzbwh.clear();
        }
        if (this.zzbwi.isEmpty()) {
            return;
        }
        this.zzbwi.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzth();
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzwz<K, V>) comparable);
        if (zza >= 0) {
            return (V) zzdr(zza);
        }
        if (this.zzbwi.isEmpty()) {
            return null;
        }
        return this.zzbwi.remove(comparable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzdr(int i) {
        zzth();
        V v = (V) this.zzbwh.remove(i).getValue();
        if (!this.zzbwi.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzti().entrySet().iterator();
            this.zzbwh.add(new zzxe(this, it.next()));
            it.remove();
        }
        return v;
    }

    private final int zza(K k) {
        int size = this.zzbwh.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.zzbwh.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo((Comparable) this.zzbwh.get(i2).getKey());
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else if (compareTo2 <= 0) {
                return i2;
            } else {
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zzbwj == null) {
            this.zzbwj = new zzxg(this, null);
        }
        return this.zzbwj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Map.Entry<K, V>> zztg() {
        if (this.zzbwl == null) {
            this.zzbwl = new zzxa(this, null);
        }
        return this.zzbwl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzth() {
        if (this.zzbpr) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> zzti() {
        zzth();
        if (this.zzbwi.isEmpty() && !(this.zzbwi instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zzbwi = treeMap;
            this.zzbwk = treeMap.descendingMap();
        }
        return (SortedMap) this.zzbwi;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzwz)) {
            return super.equals(obj);
        }
        zzwz zzwzVar = (zzwz) obj;
        int size = size();
        if (size != zzwzVar.size()) {
            return false;
        }
        int zzte = zzte();
        if (zzte != zzwzVar.zzte()) {
            return entrySet().equals(zzwzVar.entrySet());
        }
        for (int i = 0; i < zzte; i++) {
            if (!zzdq(i).equals(zzwzVar.zzdq(i))) {
                return false;
            }
        }
        if (zzte != size) {
            return this.zzbwi.equals(zzwzVar.zzbwi);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int zzte = zzte();
        int i = 0;
        for (int i2 = 0; i2 < zzte; i2++) {
            i += this.zzbwh.get(i2).hashCode();
        }
        return this.zzbwi.size() > 0 ? i + this.zzbwi.hashCode() : i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zzwz<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzwz(int i, zzwy zzwyVar) {
        this(i);
    }
}
