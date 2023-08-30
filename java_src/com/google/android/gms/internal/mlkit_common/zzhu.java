package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
final class zzhu<K, V> implements Iterator<Map.Entry<K, V>>, p033j$.util.Iterator {
    private int zza;
    private Iterator<Map.Entry<K, V>> zzb;
    private final /* synthetic */ zzhs zzc;

    private zzhu(zzhs zzhsVar) {
        List list;
        this.zzc = zzhsVar;
        list = zzhsVar.zzb;
        this.zza = list.size();
    }

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.zza;
        if (i > 0) {
            list = this.zzc.zzb;
            if (i <= list.size()) {
                return true;
            }
        }
        return zza().hasNext();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    private final java.util.Iterator<Map.Entry<K, V>> zza() {
        Map map;
        if (this.zzb == null) {
            map = this.zzc.zzf;
            this.zzb = map.entrySet().iterator();
        }
        return this.zzb;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (zza().hasNext()) {
            return zza().next();
        }
        list = this.zzc.zzb;
        int i = this.zza - 1;
        this.zza = i;
        return (Map.Entry) list.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhu(zzhs zzhsVar, zzhv zzhvVar) {
        this(zzhsVar);
    }
}
