package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes4.dex */
final class zzge implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ zzgn zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzge(zzgn zzgnVar, zzp zzpVar) {
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
        zzp zzpVar = this.zza;
        zzksVar2.zzaz().zzg();
        zzksVar2.zzB();
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzksVar2.zzd(zzpVar);
    }
}
