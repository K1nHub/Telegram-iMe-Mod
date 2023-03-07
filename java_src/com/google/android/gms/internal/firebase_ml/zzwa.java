package com.google.android.gms.internal.firebase_ml;

import java.util.Map;
/* loaded from: classes.dex */
final class zzwa implements zzwb {
    @Override // com.google.android.gms.internal.firebase_ml.zzwb
    public final Map<?, ?> zzu(Object obj) {
        return (zzvy) obj;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwb
    public final zzvz<?, ?> zzv(Object obj) {
        return ((zzvw) obj).zzsh();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwb
    public final Map<?, ?> zzw(Object obj) {
        return (zzvy) obj;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwb
    public final boolean zzx(Object obj) {
        return !((zzvy) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwb
    public final Object zzy(Object obj) {
        ((zzvy) obj).zzqa();
        return obj;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwb
    public final Object zzz(Object obj) {
        return zzvy.zzsi().zzsj();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwb
    public final Object zzd(Object obj, Object obj2) {
        zzvy zzvyVar = (zzvy) obj;
        zzvy zzvyVar2 = (zzvy) obj2;
        if (!zzvyVar2.isEmpty()) {
            if (!zzvyVar.isMutable()) {
                zzvyVar = zzvyVar.zzsj();
            }
            zzvyVar.zza(zzvyVar2);
        }
        return zzvyVar;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwb
    public final int zzd(int i, Object obj, Object obj2) {
        zzvy zzvyVar = (zzvy) obj;
        zzvw zzvwVar = (zzvw) obj2;
        int i2 = 0;
        if (zzvyVar.isEmpty()) {
            return 0;
        }
        for (Map.Entry entry : zzvyVar.entrySet()) {
            i2 += zzvwVar.zzc(i, entry.getKey(), entry.getValue());
        }
        return i2;
    }
}
