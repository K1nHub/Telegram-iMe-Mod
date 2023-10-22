package com.google.android.play.core.assetpacks;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzm implements com.google.android.play.core.internal.zzcs<zzl> {
    private final com.google.android.play.core.internal.zzcs<zzbh> zza;
    private final com.google.android.play.core.internal.zzcs<zzy> zzb;
    private final com.google.android.play.core.internal.zzcs<zzbb> zzc;
    private final com.google.android.play.core.internal.zzcs<com.google.android.play.core.splitinstall.zzs> zzd;
    private final com.google.android.play.core.internal.zzcs<zzde> zze;
    private final com.google.android.play.core.internal.zzcs<zzco> zzf;
    private final com.google.android.play.core.internal.zzcs<zzbx> zzg;
    private final com.google.android.play.core.internal.zzcs<Executor> zzh;
    private final com.google.android.play.core.internal.zzcs<com.google.android.play.core.common.zza> zzi;
    private final com.google.android.play.core.internal.zzcs<zzeb> zzj;

    public zzm(com.google.android.play.core.internal.zzcs<zzbh> zzcsVar, com.google.android.play.core.internal.zzcs<zzy> zzcsVar2, com.google.android.play.core.internal.zzcs<zzbb> zzcsVar3, com.google.android.play.core.internal.zzcs<com.google.android.play.core.splitinstall.zzs> zzcsVar4, com.google.android.play.core.internal.zzcs<zzde> zzcsVar5, com.google.android.play.core.internal.zzcs<zzco> zzcsVar6, com.google.android.play.core.internal.zzcs<zzbx> zzcsVar7, com.google.android.play.core.internal.zzcs<Executor> zzcsVar8, com.google.android.play.core.internal.zzcs<com.google.android.play.core.common.zza> zzcsVar9, com.google.android.play.core.internal.zzcs<zzeb> zzcsVar10) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
        this.zzd = zzcsVar4;
        this.zze = zzcsVar5;
        this.zzf = zzcsVar6;
        this.zzg = zzcsVar7;
        this.zzh = zzcsVar8;
        this.zzi = zzcsVar9;
        this.zzj = zzcsVar10;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzl zza() {
        zzbh zza = this.zza.zza();
        com.google.android.play.core.internal.zzco zzb = com.google.android.play.core.internal.zzcq.zzb(this.zzb);
        zzbb zza2 = this.zzc.zza();
        com.google.android.play.core.splitinstall.zzs zza3 = this.zzd.zza();
        zzde zza4 = this.zze.zza();
        zzco zza5 = this.zzf.zza();
        return new zzl(zza, zzb, zza2, zza3, zza4, zza5, this.zzg.zza(), com.google.android.play.core.internal.zzcq.zzb(this.zzh), this.zzi.zza(), this.zzj.zza());
    }
}
