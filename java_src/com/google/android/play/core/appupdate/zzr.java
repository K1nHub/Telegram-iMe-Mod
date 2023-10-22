package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.zzcs;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzr implements zzcs<zzq> {
    private final zzcs<Context> zza;
    private final zzcs<zzs> zzb;

    public zzr(zzcs<Context> zzcsVar, zzcs<zzs> zzcsVar2) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzq zza() {
        return new zzq(((zzj) this.zza).zzb(), this.zzb.zza());
    }
}
