package com.google.android.gms.measurement.internal;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes3.dex */
final class zzfy implements Runnable {
    final /* synthetic */ zzab zza;
    final /* synthetic */ zzgn zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfy(zzgn zzgnVar, zzab zzabVar) {
        this.zzb = zzgnVar;
        this.zza = zzabVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks zzksVar;
        zzks zzksVar2;
        zzks zzksVar3;
        zzksVar = this.zzb.zza;
        zzksVar.zzA();
        if (this.zza.zzc.zza() == null) {
            zzksVar3 = this.zzb.zza;
            zzksVar3.zzM(this.zza);
            return;
        }
        zzksVar2 = this.zzb.zza;
        zzksVar2.zzR(this.zza);
    }
}
