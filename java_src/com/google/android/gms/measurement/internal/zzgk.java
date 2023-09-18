package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes4.dex */
final class zzgk implements Callable<List<zzkx>> {
    final /* synthetic */ String zza;
    final /* synthetic */ zzgn zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgk(zzgn zzgnVar, String str) {
        this.zzb = zzgnVar;
        this.zza = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<zzkx> call() throws Exception {
        zzks zzksVar;
        zzks zzksVar2;
        zzksVar = this.zzb.zza;
        zzksVar.zzA();
        zzksVar2 = this.zzb.zza;
        return zzksVar2.zzi().zzu(this.zza);
    }
}
