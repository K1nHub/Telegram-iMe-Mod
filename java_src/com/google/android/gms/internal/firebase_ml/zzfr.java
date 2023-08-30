package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public final class zzfr {
    String content;
    String message;
    int statusCode;
    zzfj zztt;
    String zzuq;

    public zzfr(int i, String str, zzfj zzfjVar) {
        zzkv.checkArgument(i >= 0);
        this.statusCode = i;
        this.zzuq = str;
        this.zztt = (zzfj) zzkv.checkNotNull(zzfjVar);
    }

    public zzfr(zzfp zzfpVar) {
        this(zzfpVar.getStatusCode(), zzfpVar.getStatusMessage(), zzfpVar.zzev());
        try {
            String zzfd = zzfpVar.zzfd();
            this.content = zzfd;
            if (zzfd.length() == 0) {
                this.content = null;
            }
        } catch (IOException e) {
            zzlm.zzb(e);
        }
        StringBuilder zzc = zzfo.zzc(zzfpVar);
        if (this.content != null) {
            zzc.append(zzib.zzzx);
            zzc.append(this.content);
        }
        this.message = zzc.toString();
    }

    public final zzfr zzae(String str) {
        this.message = str;
        return this;
    }

    public final zzfr zzaf(String str) {
        this.content = str;
        return this;
    }
}
