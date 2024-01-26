package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
final class zzeq implements zzfq {
    private final /* synthetic */ zzfq zzsp;
    private final /* synthetic */ zzfk zzsq;
    private final /* synthetic */ zzer zzsr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeq(zzer zzerVar, zzfq zzfqVar, zzfk zzfkVar) {
        this.zzsr = zzerVar;
        this.zzsp = zzfqVar;
        this.zzsq = zzfkVar;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfq
    public final void zza(zzfp zzfpVar) throws IOException {
        zzfq zzfqVar = this.zzsp;
        if (zzfqVar != null) {
            zzfqVar.zza(zzfpVar);
        }
        if (!zzfpVar.zzfc() && this.zzsq.zzez()) {
            throw this.zzsr.zzb(zzfpVar);
        }
    }
}
