package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.zzcs;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzc implements zzcs<zzb> {
    private final zzcs<Context> zza;

    public zzc(zzcs<Context> zzcsVar) {
        this.zza = zzcsVar;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzb zza() {
        return new zzb(((zzj) this.zza).zzb());
    }
}
