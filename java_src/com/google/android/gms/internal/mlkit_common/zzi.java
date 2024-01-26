package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zzi {
    public static final zzi zza;
    public static final zzi zzb;
    public static final zzi zzc;
    private final boolean zzd;
    private final boolean zze = false;
    private final zzaq zzf;

    static {
        zzg zzgVar = new zzg(null);
        zzgVar.zzb();
        zza = zzgVar.zzd();
        zzg zzgVar2 = new zzg(null);
        zzgVar2.zzb();
        zzgVar2.zza(new zze());
        zzb = zzgVar2.zzd();
        zzg zzgVar3 = new zzg(null);
        zzgVar3.zzc();
        zzc = zzgVar3.zzd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzi(boolean z, boolean z2, zzaq zzaqVar, zzh zzhVar) {
        this.zzd = z;
        this.zzf = zzaqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean zza(zzi zziVar) {
        boolean z = zziVar.zze;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ int zzc(zzi zziVar, Context context, zzr zzrVar) {
        zzaq zzaqVar = zziVar.zzf;
        int size = zzaqVar.size();
        int i = 0;
        while (i < size) {
            int zza2 = ((zzs) zzaqVar.get(i)).zza(context, zzrVar, zziVar.zzd) - 1;
            i++;
            if (zza2 == 1) {
                return 2;
            }
        }
        return 3;
    }
}
