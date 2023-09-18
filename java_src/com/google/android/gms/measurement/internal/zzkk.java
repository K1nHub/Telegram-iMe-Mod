package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzkk implements Runnable {
    final /* synthetic */ zzkt zza;
    final /* synthetic */ zzks zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkk(zzks zzksVar, zzkt zzktVar) {
        this.zzb = zzksVar;
        this.zza = zzktVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks.zzy(this.zzb, this.zza);
        this.zzb.zzQ();
    }
}
