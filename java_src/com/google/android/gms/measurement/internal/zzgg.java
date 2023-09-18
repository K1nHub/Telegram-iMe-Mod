package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpo;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes4.dex */
final class zzgg implements Runnable {
    final /* synthetic */ zzat zza;
    final /* synthetic */ zzp zzb;
    final /* synthetic */ zzgn zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgg(zzgn zzgnVar, zzat zzatVar, zzp zzpVar) {
        this.zzc = zzgnVar;
        this.zza = zzatVar;
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzks zzksVar;
        zzat zzb = this.zzc.zzb(this.zza, this.zzb);
        zzpo.zzc();
        zzksVar = this.zzc.zza;
        if (!zzksVar.zzg().zzs(null, zzdy.zzav)) {
            this.zzc.zzB(zzb, this.zzb);
        } else {
            this.zzc.zzw(zzb, this.zzb);
        }
    }
}
