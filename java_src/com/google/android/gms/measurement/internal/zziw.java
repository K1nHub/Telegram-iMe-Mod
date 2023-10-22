package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zziw implements Runnable {
    final /* synthetic */ zzih zza;
    final /* synthetic */ zzjo zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziw(zzjo zzjoVar, zzih zzihVar) {
        this.zzb = zzjoVar;
        this.zza = zzihVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeb zzebVar;
        zzebVar = this.zzb.zzb;
        if (zzebVar == null) {
            this.zzb.zzs.zzay().zzd().zza("Failed to send current screen to service");
            return;
        }
        try {
            zzih zzihVar = this.zza;
            if (zzihVar != null) {
                zzebVar.zzq(zzihVar.zzc, zzihVar.zza, zzihVar.zzb, this.zzb.zzs.zzau().getPackageName());
            } else {
                zzebVar.zzq(0L, null, null, this.zzb.zzs.zzau().getPackageName());
            }
            this.zzb.zzQ();
        } catch (RemoteException e) {
            this.zzb.zzs.zzay().zzd().zzb("Failed to send current screen to the service", e);
        }
    }
}
