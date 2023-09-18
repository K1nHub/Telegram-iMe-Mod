package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.exoplayer2.ExoPlayer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzjz {
    final /* synthetic */ zzkd zza;
    private zzjy zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjz(zzkd zzkdVar) {
        this.zza = zzkdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(long j) {
        Handler handler;
        this.zzb = new zzjy(this, this.zza.zzs.zzav().currentTimeMillis(), j);
        handler = this.zza.zzd;
        handler.postDelayed(this.zzb, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb() {
        Handler handler;
        this.zza.zzg();
        if (this.zzb != null) {
            handler = this.zza.zzd;
            handler.removeCallbacks(this.zzb);
        }
        this.zza.zzs.zzm().zzl.zza(false);
    }
}
