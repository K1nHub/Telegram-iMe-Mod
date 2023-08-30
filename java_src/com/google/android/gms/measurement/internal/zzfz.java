package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes3.dex */
final class zzfz implements Callable<List<zzkx>> {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzgn zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfz(zzgn zzgnVar, String str, String str2, String str3) {
        this.zzd = zzgnVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<zzkx> call() throws Exception {
        zzks zzksVar;
        zzks zzksVar2;
        zzksVar = this.zzd.zza;
        zzksVar.zzA();
        zzksVar2 = this.zzd.zza;
        return zzksVar2.zzi().zzv(this.zza, this.zzb, this.zzc);
    }
}
