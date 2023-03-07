package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.zzcs;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzg implements zzcs<zzf> {
    private final zzcs<zzq> zza;
    private final zzcs<zzb> zzb;
    private final zzcs<Context> zzc;

    public zzg(zzcs<zzq> zzcsVar, zzcs<zzb> zzcsVar2, zzcs<Context> zzcsVar3) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
        this.zzc = zzcsVar3;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzf zza() {
        return new zzf(this.zza.zza(), this.zzb.zza(), ((zzj) this.zzc).zzb());
    }
}
