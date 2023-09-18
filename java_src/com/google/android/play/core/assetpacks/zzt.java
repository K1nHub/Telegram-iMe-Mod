package com.google.android.play.core.assetpacks;

import android.content.Context;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzt implements com.google.android.play.core.internal.zzcs<zzy> {
    private final com.google.android.play.core.internal.zzcs<Context> zza;
    private final com.google.android.play.core.internal.zzcs<zzaw> zzb;
    private final com.google.android.play.core.internal.zzcs<zzdo> zzc;

    public zzt(com.google.android.play.core.internal.zzcs<Context> zzcsVar, com.google.android.play.core.internal.zzcs<zzaw> zzcsVar2, com.google.android.play.core.internal.zzcs<zzdo> zzcsVar3) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzy zza() {
        zzy zzyVar;
        Context zzb = ((zzu) this.zza).zzb();
        com.google.android.play.core.internal.zzco zzb2 = com.google.android.play.core.internal.zzcq.zzb(this.zzb);
        com.google.android.play.core.internal.zzco zzb3 = com.google.android.play.core.internal.zzcq.zzb(this.zzc);
        if (zzp.zzb(zzb) == null) {
            zzyVar = (zzy) zzb2.zza();
        } else {
            zzyVar = (zzy) zzb3.zza();
        }
        com.google.android.play.core.internal.zzcr.zza(zzyVar);
        return zzyVar;
    }
}
