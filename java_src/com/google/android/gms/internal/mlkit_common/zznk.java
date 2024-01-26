package com.google.android.gms.internal.mlkit_common;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zznk {
    private zznw zza;
    private Long zzb;
    private zznf zzc;
    private Long zzd;
    private zznl zze;
    private Long zzf;

    public static /* bridge */ /* synthetic */ zznf zza(zznk zznkVar) {
        return zznkVar.zzc;
    }

    public static /* bridge */ /* synthetic */ zznl zzh(zznk zznkVar) {
        return zznkVar.zze;
    }

    public static /* bridge */ /* synthetic */ zznw zzj(zznk zznkVar) {
        return zznkVar.zza;
    }

    public static /* bridge */ /* synthetic */ Long zzk(zznk zznkVar) {
        return zznkVar.zzf;
    }

    public static /* bridge */ /* synthetic */ Long zzl(zznk zznkVar) {
        return zznkVar.zzd;
    }

    public static /* bridge */ /* synthetic */ Long zzm(zznk zznkVar) {
        return zznkVar.zzb;
    }

    public final zznk zzb(Long l) {
        this.zzf = l;
        return this;
    }

    public final zznk zzc(zznl zznlVar) {
        this.zze = zznlVar;
        return this;
    }

    public final zznk zzd(zznf zznfVar) {
        this.zzc = zznfVar;
        return this;
    }

    public final zznk zze(Long l) {
        this.zzd = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zznk zzf(zznw zznwVar) {
        this.zza = zznwVar;
        return this;
    }

    public final zznk zzg(Long l) {
        this.zzb = Long.valueOf(l.longValue() & Long.MAX_VALUE);
        return this;
    }

    public final zznn zzi() {
        return new zznn(this, null);
    }
}
