package com.google.android.play.core.assetpacks;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzbc implements com.google.android.play.core.internal.zzcs<zzbb> {
    private final com.google.android.play.core.internal.zzcs<Context> zza;
    private final com.google.android.play.core.internal.zzcs<zzde> zzb;
    private final com.google.android.play.core.internal.zzcs<zzcl> zzc;
    private final com.google.android.play.core.internal.zzcs<zzy> zzd;
    private final com.google.android.play.core.internal.zzcs<zzco> zze;
    private final com.google.android.play.core.internal.zzcs<zzbx> zzf;
    private final com.google.android.play.core.internal.zzcs<Executor> zzg;
    private final com.google.android.play.core.internal.zzcs<Executor> zzh;
    private final com.google.android.play.core.internal.zzcs<zzeb> zzi;

    public zzbc(com.google.android.play.core.internal.zzcs<Context> zzcsVar, com.google.android.play.core.internal.zzcs<zzde> zzcsVar2, com.google.android.play.core.internal.zzcs<zzcl> zzcsVar3, com.google.android.play.core.internal.zzcs<zzy> zzcsVar4, com.google.android.play.core.internal.zzcs<zzco> zzcsVar5, com.google.android.play.core.internal.zzcs<zzbx> zzcsVar6, com.google.android.play.core.internal.zzcs<Executor> zzcsVar7, com.google.android.play.core.internal.zzcs<Executor> zzcsVar8, com.google.android.play.core.internal.zzcs<zzeb> zzcsVar9) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
        this.zzd = zzcsVar4;
        this.zze = zzcsVar5;
        this.zzf = zzcsVar6;
        this.zzg = zzcsVar7;
        this.zzh = zzcsVar8;
        this.zzi = zzcsVar9;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzbb zza() {
        Context zzb = ((zzu) this.zza).zzb();
        zzde zza = this.zzb.zza();
        zzcl zza2 = this.zzc.zza();
        com.google.android.play.core.internal.zzco zzb2 = com.google.android.play.core.internal.zzcq.zzb(this.zzd);
        zzco zza3 = this.zze.zza();
        return new zzbb(zzb, zza, zza2, zzb2, zza3, this.zzf.zza(), com.google.android.play.core.internal.zzcq.zzb(this.zzg), com.google.android.play.core.internal.zzcq.zzb(this.zzh), this.zzi.zza());
    }
}
