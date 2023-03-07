package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzjc implements Runnable {
    final /* synthetic */ zzp zza;
    final /* synthetic */ zzjo zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjc(zzjo zzjoVar, zzp zzpVar) {
        this.zzb = zzjoVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeb zzebVar;
        zzebVar = this.zzb.zzb;
        if (zzebVar == null) {
            this.zzb.zzs.zzay().zzd().zza("Failed to send consent settings to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzebVar.zzp(this.zza);
            this.zzb.zzQ();
        } catch (RemoteException e) {
            this.zzb.zzs.zzay().zzd().zzb("Failed to send consent settings to the service", e);
        }
    }
}
