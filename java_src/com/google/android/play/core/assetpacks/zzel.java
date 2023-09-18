package com.google.android.play.core.assetpacks;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzel implements com.google.android.play.core.internal.zzcs<zzek> {
    private final com.google.android.play.core.internal.zzcs<zzbh> zza;
    private final com.google.android.play.core.internal.zzcs<zzy> zzb;
    private final com.google.android.play.core.internal.zzcs<zzde> zzc;
    private final com.google.android.play.core.internal.zzcs<Executor> zzd;
    private final com.google.android.play.core.internal.zzcs<zzco> zze;

    public zzel(com.google.android.play.core.internal.zzcs<zzbh> zzcsVar, com.google.android.play.core.internal.zzcs<zzy> zzcsVar2, com.google.android.play.core.internal.zzcs<zzde> zzcsVar3, com.google.android.play.core.internal.zzcs<Executor> zzcsVar4, com.google.android.play.core.internal.zzcs<zzco> zzcsVar5) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
        this.zzd = zzcsVar4;
        this.zze = zzcsVar5;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzek zza() {
        zzbh zza = this.zza.zza();
        return new zzek(zza, com.google.android.play.core.internal.zzcq.zzb(this.zzb), this.zzc.zza(), com.google.android.play.core.internal.zzcq.zzb(this.zzd), this.zze.zza());
    }
}
