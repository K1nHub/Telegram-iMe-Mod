package com.google.android.gms.measurement.internal;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes3.dex */
final class zzgh implements Runnable {
    final /* synthetic */ zzat zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzgn zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgh(zzgn zzgnVar, zzat zzatVar, String str) {
        this.zzc = zzgnVar;
        this.zza = zzatVar;
        this.zzb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks zzksVar;
        zzks zzksVar2;
        zzksVar = this.zzc.zza;
        zzksVar.zzA();
        zzksVar2 = this.zzc.zza;
        zzksVar2.zzE(this.zza, this.zzb);
    }
}
