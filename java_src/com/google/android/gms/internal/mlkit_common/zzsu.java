package com.google.android.gms.internal.mlkit_common;

import com.google.mlkit.common.sdkinternal.ModelType;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public abstract class zzsu {
    public static zzst zzh() {
        zzsg zzsgVar = new zzsg();
        zzsgVar.zzg("NA");
        zzsgVar.zzf(false);
        zzsgVar.zze(false);
        zzsgVar.zzd(ModelType.UNKNOWN);
        zzsgVar.zzb(zznf.NO_ERROR);
        zzsgVar.zza(zznl.UNKNOWN_STATUS);
        zzsgVar.zzc(0);
        return zzsgVar;
    }

    public abstract int zza();

    public abstract ModelType zzb();

    public abstract zznf zzc();

    public abstract zznl zzd();

    public abstract String zze();

    public abstract boolean zzf();

    public abstract boolean zzg();
}
