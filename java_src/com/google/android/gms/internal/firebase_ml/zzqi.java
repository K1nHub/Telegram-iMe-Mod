package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzqi extends zzir {
    private final /* synthetic */ zzqf zzbar;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqi(zzqf zzqfVar) {
        this.zzbar = zzqfVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.firebase_ml.zzir
    public final void zza(zzis<?> zzisVar) throws IOException {
        String str;
        super.zza(zzisVar);
        zzfj zzeh = zzisVar.zzeh();
        str = this.zzbar.zzbak;
        zzeh.put("X-Goog-Spatula", str);
    }
}
