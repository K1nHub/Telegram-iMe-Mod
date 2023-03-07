package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public final class zzvw<K, V> {
    private final V value;
    private final zzvz<K, V> zzbut;
    private final K zzbuu;

    private zzvw(zzyd zzydVar, K k, zzyd zzydVar2, V v) {
        this.zzbut = new zzvz<>(zzydVar, k, zzydVar2, v);
        this.zzbuu = k;
        this.value = v;
    }

    public static <K, V> zzvw<K, V> zza(zzyd zzydVar, K k, zzyd zzydVar2, V v) {
        return new zzvw<>(zzydVar, k, zzydVar2, v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void zza(zzue zzueVar, zzvz<K, V> zzvzVar, K k, V v) throws IOException {
        zzum.zza(zzueVar, zzvzVar.zzbux, 1, k);
        zzum.zza(zzueVar, zzvzVar.zzbuz, 2, v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> int zza(zzvz<K, V> zzvzVar, K k, V v) {
        return zzum.zza(zzvzVar.zzbux, 1, k) + zzum.zza(zzvzVar.zzbuz, 2, v);
    }

    public final int zzc(int i, K k, V v) {
        return zzue.zzcv(i) + zzue.zzdc(zza(this.zzbut, k, v));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzvz<K, V> zzsh() {
        return this.zzbut;
    }
}
