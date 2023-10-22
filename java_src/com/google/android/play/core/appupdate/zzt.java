package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.zzcs;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzt implements zzcs<zzs> {
    private final zzcs<Context> zza;

    public zzt(zzcs<Context> zzcsVar) {
        this.zza = zzcsVar;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ zzs zza() {
        return new zzs(((zzj) this.zza).zzb());
    }
}
