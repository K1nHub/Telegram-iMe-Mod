package com.google.android.gms.measurement.internal;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes3.dex */
final class zzfx implements Runnable {
    final /* synthetic */ zzab zza;
    final /* synthetic */ zzp zzb;
    final /* synthetic */ zzgn zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfx(zzgn zzgnVar, zzab zzabVar, zzp zzpVar) {
        this.zzc = zzgnVar;
        this.zza = zzabVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks zzksVar;
        zzks zzksVar2;
        zzks zzksVar3;
        zzksVar = this.zzc.zza;
        zzksVar.zzA();
        if (this.zza.zzc.zza() == null) {
            zzksVar3 = this.zzc.zza;
            zzksVar3.zzN(this.zza, this.zzb);
            return;
        }
        zzksVar2 = this.zzc.zza;
        zzksVar2.zzS(this.zza, this.zzb);
    }
}
