package com.google.android.play.core.assetpacks;

import android.content.Context;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzax implements com.google.android.play.core.internal.zzcs<zzaw> {
    private final com.google.android.play.core.internal.zzcs<Context> zza;
    private final com.google.android.play.core.internal.zzcs<zzco> zzb;
    private final com.google.android.play.core.internal.zzcs<zzeb> zzc;

    public zzax(com.google.android.play.core.internal.zzcs<Context> zzcsVar, com.google.android.play.core.internal.zzcs<zzco> zzcsVar2, com.google.android.play.core.internal.zzcs<zzeb> zzcsVar3) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzaw zza() {
        return new zzaw(((zzu) this.zza).zzb(), this.zzb.zza(), this.zzc.zza());
    }
}
