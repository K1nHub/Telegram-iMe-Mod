package com.google.android.gms.internal.mlkit_language_id;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p034j$.util.Iterator;
import p034j$.util.function.Consumer;
/* compiled from: com.google.mlkit:language-id@@16.1.1 */
/* loaded from: classes3.dex */
final class zzgs implements Iterator<Map.Entry<K, V>>, p034j$.util.Iterator {
    private int zza;
    private Iterator<Map.Entry<K, V>> zzb;
    private final /* synthetic */ zzgq zzc;

    private zzgs(zzgq zzgqVar) {
        List list;
        this.zzc = zzgqVar;
        list = zzgqVar.zzb;
        this.zza = list.size();
    }

    @Override // p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p034j$.util.Iterator
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

    @Override // java.util.Iterator, p034j$.util.Iterator
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

    @Override // java.util.Iterator, p034j$.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (zza().hasNext()) {
            return (Map.Entry) zza().next();
        }
        list = this.zzc.zzb;
        int i = this.zza - 1;
        this.zza = i;
        return (Map.Entry) list.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgs(zzgq zzgqVar, zzgt zzgtVar) {
        this(zzgqVar);
    }
}
