package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
public final class zzfh implements zzic {
    private final zzic zztm;
    private final zzfe zztn;

    public zzfh(zzic zzicVar, zzfe zzfeVar) {
        this.zztm = (zzic) zzkv.checkNotNull(zzicVar);
        this.zztn = (zzfe) zzkv.checkNotNull(zzfeVar);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzic
    public final void writeTo(OutputStream outputStream) throws IOException {
        this.zztn.zza(this.zztm, outputStream);
    }
}
