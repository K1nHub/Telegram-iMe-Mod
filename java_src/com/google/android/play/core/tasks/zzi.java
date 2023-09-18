package com.google.android.play.core.tasks;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzi<ResultT> {
    private final zzm<ResultT> zza = new zzm<>();

    public final Task<ResultT> zza() {
        return this.zza;
    }

    public final void zzb(Exception exc) {
        this.zza.zza(exc);
    }

    public final void zzc(ResultT resultt) {
        this.zza.zzb(resultt);
    }

    public final boolean zzd(Exception exc) {
        return this.zza.zzc(exc);
    }

    public final boolean zze(ResultT resultt) {
        return this.zza.zzd(resultt);
    }
}
