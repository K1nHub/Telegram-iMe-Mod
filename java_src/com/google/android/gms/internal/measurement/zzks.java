package com.google.android.gms.internal.measurement;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzks extends zzku {
    private zzks() {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzks(zzkr zzkrVar) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzku
    public final void zza(Object obj, long j) {
        ((zzkg) zzms.zzf(obj, j)).zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    @Override // com.google.android.gms.internal.measurement.zzku
    public final <E> void zzb(Object obj, Object obj2, long j) {
        zzkg<E> zzkgVar = (zzkg) zzms.zzf(obj, j);
        zzkg<E> zzkgVar2 = (zzkg) zzms.zzf(obj2, j);
        int size = zzkgVar.size();
        int size2 = zzkgVar2.size();
        zzkg<E> zzkgVar3 = zzkgVar;
        zzkgVar3 = zzkgVar;
        if (size > 0 && size2 > 0) {
            boolean zzc = zzkgVar.zzc();
            zzkg<E> zzkgVar4 = zzkgVar;
            if (!zzc) {
                zzkgVar4 = zzkgVar.zzd(size2 + size);
            }
            zzkgVar4.addAll(zzkgVar2);
            zzkgVar3 = zzkgVar4;
        }
        if (size > 0) {
            zzkgVar2 = zzkgVar3;
        }
        zzms.zzs(obj, j, zzkgVar2);
    }
}
