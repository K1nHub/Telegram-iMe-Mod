package com.google.android.play.core.appupdate;

import com.google.android.play.core.internal.zzcr;
import com.google.android.play.core.internal.zzcs;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzi implements zzcs<AppUpdateManager> {
    private final zzcs<zzf> zza;

    public zzi(zzcs<zzf> zzcsVar) {
        this.zza = zzcsVar;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ AppUpdateManager zza() {
        zzf zza = this.zza.zza();
        zzcr.zza(zza);
        return zza;
    }
}
