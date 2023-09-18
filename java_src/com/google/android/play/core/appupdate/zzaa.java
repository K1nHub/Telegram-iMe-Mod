package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.zzcq;
import com.google.android.play.core.internal.zzcs;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzaa {
    private final zzcs<Context> zzb;
    private final zzcs<zzs> zzc;
    private final zzcs<zzq> zzd;
    private final zzcs<zzb> zze;
    private final zzcs<zzf> zzf;
    private final zzcs<AppUpdateManager> zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaa(zzh zzhVar, zzz zzzVar) {
        zzj zzjVar = new zzj(zzhVar);
        this.zzb = zzjVar;
        zzcs<zzs> zzc = zzcq.zzc(new zzt(zzjVar));
        this.zzc = zzc;
        zzcs<zzq> zzc2 = zzcq.zzc(new zzr(zzjVar, zzc));
        this.zzd = zzc2;
        zzcs<zzb> zzc3 = zzcq.zzc(new zzc(zzjVar));
        this.zze = zzc3;
        zzcs<zzf> zzc4 = zzcq.zzc(new zzg(zzc2, zzc3, zzjVar));
        this.zzf = zzc4;
        this.zzg = zzcq.zzc(new zzi(zzc4));
    }

    public final AppUpdateManager zza() {
        return this.zzg.zza();
    }
}
