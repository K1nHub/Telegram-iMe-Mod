package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzkd extends zzf {
    protected final zzkc zza;
    protected final zzkb zzb;
    protected final zzjz zzc;
    private Handler zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkd(zzfv zzfvVar) {
        super(zzfvVar);
        this.zza = new zzkc(this);
        this.zzb = new zzkb(this);
        this.zzc = new zzjz(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzj(zzkd zzkdVar, long j) {
        zzkdVar.zzg();
        zzkdVar.zzm();
        zzkdVar.zzs.zzay().zzj().zzb("Activity paused, time", Long.valueOf(j));
        zzkdVar.zzc.zza(j);
        if (zzkdVar.zzs.zzf().zzu()) {
            zzkdVar.zzb.zzb(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzl(zzkd zzkdVar, long j) {
        zzkdVar.zzg();
        zzkdVar.zzm();
        zzkdVar.zzs.zzay().zzj().zzb("Activity resumed, time", Long.valueOf(j));
        if (zzkdVar.zzs.zzf().zzu() || zzkdVar.zzs.zzm().zzl.zzb()) {
            zzkdVar.zzb.zzc(j);
        }
        zzkdVar.zzc.zzb();
        zzkc zzkcVar = zzkdVar.zza;
        zzkcVar.zza.zzg();
        if (zzkcVar.zza.zzs.zzJ()) {
            zzkcVar.zzb(zzkcVar.zza.zzs.zzav().currentTimeMillis(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm() {
        zzg();
        if (this.zzd == null) {
            this.zzd = new com.google.android.gms.internal.measurement.zzby(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return false;
    }
}
