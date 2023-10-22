package com.google.android.play.core.assetpacks;

import android.content.Context;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzc implements com.google.android.play.core.internal.zzcs<zzb> {
    private final com.google.android.play.core.internal.zzcs<Context> zza;
    private final com.google.android.play.core.internal.zzcs<zzbh> zzb;
    private final com.google.android.play.core.internal.zzcs<zzl> zzc;
    private final com.google.android.play.core.internal.zzcs<zzci> zzd;

    public zzc(com.google.android.play.core.internal.zzcs<Context> zzcsVar, com.google.android.play.core.internal.zzcs<zzbh> zzcsVar2, com.google.android.play.core.internal.zzcs<zzl> zzcsVar3, com.google.android.play.core.internal.zzcs<zzci> zzcsVar4) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
        this.zzd = zzcsVar4;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzb zza() {
        return new zzb(((zzu) this.zza).zzb(), this.zzb.zza(), this.zzc.zza(), this.zzd.zza());
    }
}
