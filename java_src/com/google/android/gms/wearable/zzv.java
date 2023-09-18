package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzao;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes4.dex */
final class zzv implements Runnable {
    final /* synthetic */ zzao zza;
    final /* synthetic */ zzaa zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(zzaa zzaaVar, zzao zzaoVar) {
        this.zzb = zzaaVar;
        this.zza = zzaoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onCapabilityChanged(this.zza);
    }
}
