package com.google.android.gms.measurement.internal;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes4.dex */
final class zzes implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzet zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzes(zzet zzetVar, boolean z) {
        this.zzb = zzetVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks zzksVar;
        zzksVar = this.zzb.zzb;
        zzksVar.zzI(this.zza);
    }
}
