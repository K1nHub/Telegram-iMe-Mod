package com.google.android.gms.wearable;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes4.dex */
final class zzu implements Runnable {
    final /* synthetic */ List zza;
    final /* synthetic */ zzaa zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(zzaa zzaaVar, List list) {
        this.zzb = zzaaVar;
        this.zza = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onConnectedNodes(this.zza);
    }
}
