package com.google.android.play.core.assetpacks;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzdi implements com.google.android.play.core.internal.zzcs<zzdh> {
    private final com.google.android.play.core.internal.zzcs<zzde> zza;
    private final com.google.android.play.core.internal.zzcs<zzbh> zzb;
    private final com.google.android.play.core.internal.zzcs<zzbu> zzc;
    private final com.google.android.play.core.internal.zzcs<com.google.android.play.core.common.zza> zzd;

    public zzdi(com.google.android.play.core.internal.zzcs<zzde> zzcsVar, com.google.android.play.core.internal.zzcs<zzbh> zzcsVar2, com.google.android.play.core.internal.zzcs<zzbu> zzcsVar3, com.google.android.play.core.internal.zzcs<com.google.android.play.core.common.zza> zzcsVar4) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
        this.zzd = zzcsVar4;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzdh zza() {
        zzde zza = this.zza.zza();
        zzbh zza2 = this.zzb.zza();
        return new zzdh(zza, zza2, this.zzc.zza(), this.zzd.zza());
    }
}
