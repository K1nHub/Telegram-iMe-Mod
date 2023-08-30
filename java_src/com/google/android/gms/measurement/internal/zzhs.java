package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzhs implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ zzia zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhs(zzia zziaVar, AtomicReference atomicReference) {
        this.zzb = zziaVar;
        this.zza = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zza) {
            this.zza.set(Double.valueOf(this.zzb.zzs.zzf().zza(this.zzb.zzs.zzh().zzl(), zzdy.zzN)));
            this.zza.notify();
        }
    }
}
