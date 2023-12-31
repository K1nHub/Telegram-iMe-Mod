package com.google.android.gms.internal.measurement;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zznu implements zznt {
    public static final zzhu<Boolean> zza;
    public static final zzhu<Boolean> zzb;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zze("measurement.euid.client.dev", false);
        zzb = zzhrVar.zze("measurement.euid.service", false);
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final boolean zza() {
        return zza.zzb().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznt
    public final boolean zzb() {
        return zzb.zzb().booleanValue();
    }
}
