package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzhi implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzia zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhi(zzia zziaVar, long j) {
        this.zzb = zziaVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzL(this.zza, true);
        this.zzb.zzs.zzt().zzu(new AtomicReference<>());
    }
}
