package com.google.android.gms.measurement.internal;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
final class zzhe implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzia zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhe(zzia zziaVar, long j) {
        this.zzb = zziaVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzs.zzm().zzf.zzb(this.zza);
        this.zzb.zzs.zzay().zzc().zzb("Session timeout duration set", Long.valueOf(this.zza));
    }
}
