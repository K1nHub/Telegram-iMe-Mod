package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzhh implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzia zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhh(zzia zziaVar, AtomicReference atomicReference, boolean z) {
        this.zzc = zziaVar;
        this.zza = atomicReference;
        this.zzb = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzs.zzt().zzx(this.zza, this.zzb);
    }
}
