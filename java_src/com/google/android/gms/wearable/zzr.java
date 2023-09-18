package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzfx;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes4.dex */
final class zzr implements Runnable {
    final /* synthetic */ zzfx zza;
    final /* synthetic */ zzaa zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzr(zzaa zzaaVar, zzfx zzfxVar) {
        this.zzb = zzaaVar;
        this.zza = zzfxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onMessageReceived(this.zza);
    }
}
