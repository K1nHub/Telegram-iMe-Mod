package com.google.android.gms.internal.measurement;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzm extends zzai {
    final /* synthetic */ zzo zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzm(zzn zznVar, String str, zzo zzoVar) {
        super("getValue");
        this.zza = zzoVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap zza(zzg zzgVar, List<zzap> list) {
        zzh.zzh("getValue", 2, list);
        zzap zzb = zzgVar.zzb(list.get(0));
        zzap zzb2 = zzgVar.zzb(list.get(1));
        String zza = this.zza.zza(zzb.zzi());
        return zza != null ? new zzat(zza) : zzb2;
    }
}
