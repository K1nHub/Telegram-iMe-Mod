package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzgm;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzs implements Runnable {
    final /* synthetic */ zzgm zza;
    final /* synthetic */ zzaa zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(zzaa zzaaVar, zzgm zzgmVar) {
        this.zzb = zzaaVar;
        this.zza = zzgmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onPeerConnected(this.zza);
    }
}
