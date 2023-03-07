package com.google.android.gms.measurement.internal;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
final class zzjv implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzkd zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjv(zzkd zzkdVar, long j) {
        this.zzb = zzkdVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkd.zzl(this.zzb, this.zza);
    }
}
