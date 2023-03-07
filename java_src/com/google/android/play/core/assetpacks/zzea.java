package com.google.android.play.core.assetpacks;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzea implements com.google.android.play.core.internal.zzcs<zzdz> {
    private final com.google.android.play.core.internal.zzcs<zzbh> zza;
    private final com.google.android.play.core.internal.zzcs<zzy> zzb;
    private final com.google.android.play.core.internal.zzcs<zzde> zzc;
    private final com.google.android.play.core.internal.zzcs<Executor> zzd;
    private final com.google.android.play.core.internal.zzcs<zzco> zze;
    private final com.google.android.play.core.internal.zzcs<com.google.android.play.core.common.zza> zzf;
    private final com.google.android.play.core.internal.zzcs<zzeb> zzg;

    public zzea(com.google.android.play.core.internal.zzcs<zzbh> zzcsVar, com.google.android.play.core.internal.zzcs<zzy> zzcsVar2, com.google.android.play.core.internal.zzcs<zzde> zzcsVar3, com.google.android.play.core.internal.zzcs<Executor> zzcsVar4, com.google.android.play.core.internal.zzcs<zzco> zzcsVar5, com.google.android.play.core.internal.zzcs<com.google.android.play.core.common.zza> zzcsVar6, com.google.android.play.core.internal.zzcs<zzeb> zzcsVar7) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
        this.zzd = zzcsVar4;
        this.zze = zzcsVar5;
        this.zzf = zzcsVar6;
        this.zzg = zzcsVar7;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzdz zza() {
        zzbh zza = this.zza.zza();
        com.google.android.play.core.internal.zzco zzb = com.google.android.play.core.internal.zzcq.zzb(this.zzb);
        zzde zza2 = this.zzc.zza();
        return new zzdz(zza, zzb, zza2, com.google.android.play.core.internal.zzcq.zzb(this.zzd), this.zze.zza(), this.zzf.zza(), this.zzg.zza());
    }
}
