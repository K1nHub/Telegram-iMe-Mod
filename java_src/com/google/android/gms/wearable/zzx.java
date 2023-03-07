package com.google.android.gms.wearable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzx implements Runnable {
    final /* synthetic */ com.google.android.gms.wearable.internal.zzi zza;
    final /* synthetic */ zzaa zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(zzaa zzaaVar, com.google.android.gms.wearable.internal.zzi zziVar) {
        this.zzb = zzaaVar;
        this.zza = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onEntityUpdate(this.zza);
    }
}
