package com.google.android.gms.wearable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzw implements Runnable {
    final /* synthetic */ com.google.android.gms.wearable.internal.zzl zza;
    final /* synthetic */ zzaa zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(zzaa zzaaVar, com.google.android.gms.wearable.internal.zzl zzlVar) {
        this.zzb = zzaaVar;
        this.zza = zzlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onNotificationReceived(this.zza);
    }
}
