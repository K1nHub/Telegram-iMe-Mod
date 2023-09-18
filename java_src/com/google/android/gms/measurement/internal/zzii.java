package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzii implements Runnable {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzih zzb;
    final /* synthetic */ zzih zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzio zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzii(zzio zzioVar, Bundle bundle, zzih zzihVar, zzih zzihVar2, long j) {
        this.zze = zzioVar;
        this.zza = bundle;
        this.zzb = zzihVar;
        this.zzc = zzihVar2;
        this.zzd = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzio.zzp(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
