package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzil implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzio zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzil(zzio zzioVar, long j) {
        this.zzb = zzioVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzs.zzd().zzf(this.zza);
        this.zzb.zza = null;
    }
}
