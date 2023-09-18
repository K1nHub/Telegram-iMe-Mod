package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzkl implements zzen {
    final /* synthetic */ String zza;
    final /* synthetic */ zzks zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkl(zzks zzksVar, String str) {
        this.zzb = zzksVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzen
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.zzb.zzJ(i, th, bArr, this.zza);
    }
}
