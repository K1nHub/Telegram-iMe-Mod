package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzir implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ zzp zzb;
    final /* synthetic */ boolean zzc;
    final /* synthetic */ zzjo zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzir(zzjo zzjoVar, AtomicReference atomicReference, zzp zzpVar, boolean z) {
        this.zzd = zzjoVar;
        this.zza = atomicReference;
        this.zzb = zzpVar;
        this.zzc = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzeb zzebVar;
        synchronized (this.zza) {
            try {
                zzebVar = this.zzd.zzb;
            } catch (RemoteException e) {
                this.zzd.zzs.zzay().zzd().zzb("Failed to get all user properties; remote exception", e);
                atomicReference = this.zza;
            }
            if (zzebVar == null) {
                this.zzd.zzs.zzay().zzd().zza("Failed to get all user properties; not connected to service");
                this.zza.notify();
                return;
            }
            Preconditions.checkNotNull(this.zzb);
            this.zza.set(zzebVar.zze(this.zzb, this.zzc));
            this.zzd.zzQ();
            atomicReference = this.zza;
            atomicReference.notify();
        }
    }
}
