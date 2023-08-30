package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
final class zzia<K, V> implements Iterator<Map.Entry<K, V>>, p033j$.util.Iterator {
    private int zza;
    private boolean zzb;
    private Iterator<Map.Entry<K, V>> zzc;
    private final /* synthetic */ zzhs zzd;

    private zzia(zzhs zzhsVar) {
        this.zzd = zzhsVar;
        this.zza = -1;
    }

    @Override // p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.zza + 1;
        list = this.zzd.zzb;
        if (i >= list.size()) {
            map = this.zzd.zzc;
            if (map.isEmpty() || !zza().hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final void remove() {
        List list;
        if (!this.zzb) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzb = false;
        this.zzd.zzf();
        int i = this.zza;
        list = this.zzd.zzb;
        if (i < list.size()) {
            zzhs zzhsVar = this.zzd;
            int i2 = this.zza;
            this.zza = i2 - 1;
            zzhsVar.zzc(i2);
            return;
        }
        zza().remove();
    }

    private final java.util.Iterator<Map.Entry<K, V>> zza() {
        Map map;
        if (this.zzc == null) {
            map = this.zzd.zzc;
            this.zzc = map.entrySet().iterator();
        }
        return this.zzc;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.zzb = true;
        int i = this.zza + 1;
        this.zza = i;
        list = this.zzd.zzb;
        if (i >= list.size()) {
            return zza().next();
        }
        list2 = this.zzd.zzb;
        return (Map.Entry) list2.get(this.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzia(zzhs zzhsVar, zzhv zzhvVar) {
        this(zzhsVar);
    }
}
