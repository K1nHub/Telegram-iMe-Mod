package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
public final class zzge extends zzey {
    private final Object data;
    private final zzgj zzvw;
    private String zzvx;

    public zzge(zzgj zzgjVar, Object obj) {
        super("application/json; charset=UTF-8");
        this.zzvw = (zzgj) zzkv.checkNotNull(zzgjVar);
        this.data = zzkv.checkNotNull(obj);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzic
    public final void writeTo(OutputStream outputStream) throws IOException {
        zzgi zza = this.zzvw.zza(outputStream, zzen());
        if (this.zzvx != null) {
            zza.zzfs();
            zza.zzaj(this.zzvx);
        }
        zza.zzc(this.data);
        if (this.zzvx != null) {
            zza.zzft();
        }
        zza.flush();
    }

    public final zzge zzai(String str) {
        this.zzvx = str;
        return this;
    }
}
