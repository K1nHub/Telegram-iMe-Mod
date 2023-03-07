package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zzvt extends zzvo {
    private zzvt() {
        super();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zzvo
    public final void zzb(Object obj, long j) {
        zzd(obj, j).zzqa();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    @Override // com.google.android.gms.internal.firebase_ml.zzvo
    public final <E> void zza(Object obj, Object obj2, long j) {
        zzvf<E> zzd = zzd(obj, j);
        zzvf<E> zzd2 = zzd(obj2, j);
        int size = zzd.size();
        int size2 = zzd2.size();
        zzvf<E> zzvfVar = zzd;
        zzvfVar = zzd;
        if (size > 0 && size2 > 0) {
            boolean zzpz = zzd.zzpz();
            zzvf<E> zzvfVar2 = zzd;
            if (!zzpz) {
                zzvfVar2 = zzd.zzcl(size2 + size);
            }
            zzvfVar2.addAll(zzd2);
            zzvfVar = zzvfVar2;
        }
        if (size > 0) {
            zzd2 = zzvfVar;
        }
        zzxs.zza(obj, j, zzd2);
    }

    private static <E> zzvf<E> zzd(Object obj, long j) {
        return (zzvf) zzxs.zzp(obj, j);
    }
}
