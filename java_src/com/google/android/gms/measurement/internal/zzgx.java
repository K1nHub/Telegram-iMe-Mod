package com.google.android.gms.measurement.internal;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes4.dex */
public final class zzgx implements zzef {
    final /* synthetic */ zzfv zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgx(zzgy zzgyVar, zzfv zzfvVar) {
        this.zza = zzfvVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzef
    public final boolean zza() {
        return this.zza.zzL() && Log.isLoggable(this.zza.zzay().zzq(), 3);
    }
}
