package com.google.android.gms.measurement.internal;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes4.dex */
final class zzgl implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ zzgn zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgl(zzgn zzgnVar, zzp zzpVar) {
        this.zzb = zzgnVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks zzksVar;
        zzks zzksVar2;
        zzksVar = this.zzb.zza;
        zzksVar.zzA();
        zzksVar2 = this.zzb.zza;
        zzksVar2.zzK(this.zza);
    }
}
