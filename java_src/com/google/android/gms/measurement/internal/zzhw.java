package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzhw implements Runnable {
    final /* synthetic */ zzag zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzia zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhw(zzia zziaVar, zzag zzagVar, int i, long j, boolean z) {
        this.zze = zziaVar;
        this.zza = zzagVar;
        this.zzb = i;
        this.zzc = j;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzW(this.zza);
        zzia.zzv(this.zze, this.zza, this.zzb, this.zzc, false, this.zzd);
    }
}
