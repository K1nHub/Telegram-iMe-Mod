package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public final class zzgl implements zzhy {
    private final zzgj zzvw;
    private final Set<String> zzwb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzgl(zzgk zzgkVar) {
        this.zzvw = zzgkVar.zzvw;
        this.zzwb = new HashSet(zzgkVar.zzwa);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzhy
    public final <T> T zza(InputStream inputStream, Charset charset, Class<T> cls) throws IOException {
        zzgn zza = this.zzvw.zza(inputStream, charset);
        if (!this.zzwb.isEmpty()) {
            try {
                boolean z = (zza.zza(this.zzwb) == null || zza.zzga() == zzgp.END_OBJECT) ? false : true;
                Object[] objArr = {this.zzwb};
                if (!z) {
                    throw new IllegalArgumentException(zzld.zzb("wrapper key(s) not found: %s", objArr));
                }
            } catch (Throwable th) {
                zza.close();
                throw th;
            }
        }
        return (T) zza.zza(cls, true, null);
    }

    public final zzgj zzel() {
        return this.zzvw;
    }

    public final Set<String> zzfx() {
        return Collections.unmodifiableSet(this.zzwb);
    }
}
