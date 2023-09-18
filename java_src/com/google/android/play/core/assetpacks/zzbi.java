package com.google.android.play.core.assetpacks;

import android.content.Context;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzbi implements com.google.android.play.core.internal.zzcs<zzbh> {
    private final com.google.android.play.core.internal.zzcs<Context> zza;
    private final com.google.android.play.core.internal.zzcs<zzed> zzb;

    public zzbi(com.google.android.play.core.internal.zzcs<Context> zzcsVar, com.google.android.play.core.internal.zzcs<zzed> zzcsVar2) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzbh zza() {
        return new zzbh(((zzu) this.zza).zzb(), this.zzb.zza());
    }
}
