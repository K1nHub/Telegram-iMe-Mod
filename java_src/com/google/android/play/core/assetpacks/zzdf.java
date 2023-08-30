package com.google.android.play.core.assetpacks;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzdf implements com.google.android.play.core.internal.zzcs<zzde> {
    private final com.google.android.play.core.internal.zzcs<zzbh> zza;
    private final com.google.android.play.core.internal.zzcs<zzy> zzb;
    private final com.google.android.play.core.internal.zzcs<zzco> zzc;
    private final com.google.android.play.core.internal.zzcs<Executor> zzd;

    public zzdf(com.google.android.play.core.internal.zzcs<zzbh> zzcsVar, com.google.android.play.core.internal.zzcs<zzy> zzcsVar2, com.google.android.play.core.internal.zzcs<zzco> zzcsVar3, com.google.android.play.core.internal.zzcs<Executor> zzcsVar4) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
        this.zzd = zzcsVar4;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzde zza() {
        zzbh zza = this.zza.zza();
        return new zzde(zza, com.google.android.play.core.internal.zzcq.zzb(this.zzb), this.zzc.zza(), com.google.android.play.core.internal.zzcq.zzb(this.zzd));
    }
}
