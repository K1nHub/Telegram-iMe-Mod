package com.google.android.play.core.assetpacks;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzec implements com.google.android.play.core.internal.zzcs<zzeb> {
    private final com.google.android.play.core.internal.zzcs<zzbh> zza;
    private final com.google.android.play.core.internal.zzcs<zzed> zzb;
    private final com.google.android.play.core.internal.zzcs<com.google.android.play.core.common.zza> zzc;

    public zzec(com.google.android.play.core.internal.zzcs<zzbh> zzcsVar, com.google.android.play.core.internal.zzcs<zzed> zzcsVar2, com.google.android.play.core.internal.zzcs<com.google.android.play.core.common.zza> zzcsVar3) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzeb zza() {
        zzbh zza = this.zza.zza();
        return new zzeb(zza, this.zzb.zza(), this.zzc.zza());
    }
}
