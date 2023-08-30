package com.google.android.gms.internal.firebase_ml;

import java.util.Map;
/* loaded from: classes.dex */
final class zzvl<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzvj> zzbuf;

    private zzvl(Map.Entry<K, zzvj> entry) {
        this.zzbuf = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zzbuf.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zzbuf.getValue() == null) {
            return null;
        }
        return zzvj.zzsa();
    }

    public final zzvj zzsb() {
        return this.zzbuf.getValue();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof zzwe)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        return this.zzbuf.getValue().zzi((zzwe) obj);
    }
}
