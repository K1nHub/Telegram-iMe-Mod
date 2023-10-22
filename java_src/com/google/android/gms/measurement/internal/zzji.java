package com.google.android.gms.measurement.internal;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
final class zzji implements Runnable {
    final /* synthetic */ zzeb zza;
    final /* synthetic */ zzjn zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzji(zzjn zzjnVar, zzeb zzebVar) {
        this.zzb = zzjnVar;
        this.zza = zzebVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb) {
            this.zzb.zzb = false;
            if (!this.zzb.zza.zzL()) {
                this.zzb.zza.zzs.zzay().zzj().zza("Connected to service");
                this.zzb.zza.zzJ(this.zza);
            }
        }
    }
}
