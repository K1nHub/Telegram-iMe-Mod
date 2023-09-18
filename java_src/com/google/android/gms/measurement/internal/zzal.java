package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzal implements Runnable {
    final /* synthetic */ zzgq zza;
    final /* synthetic */ zzam zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzal(zzam zzamVar, zzgq zzgqVar) {
        this.zzb = zzamVar;
        this.zza = zzgqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzaw();
        if (zzaa.zza()) {
            this.zza.zzaz().zzp(this);
            return;
        }
        boolean zze = this.zzb.zze();
        this.zzb.zzd = 0L;
        if (zze) {
            this.zzb.zzc();
        }
    }
}
