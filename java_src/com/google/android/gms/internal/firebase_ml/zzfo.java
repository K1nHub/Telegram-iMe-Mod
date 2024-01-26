package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public class zzfo extends IOException {
    private final String content;
    private final int statusCode;
    private final transient zzfj zztt;
    private final String zzuq;

    public zzfo(zzfp zzfpVar) {
        this(new zzfr(zzfpVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzfo(zzfr zzfrVar) {
        super(zzfrVar.message);
        this.statusCode = zzfrVar.statusCode;
        this.zzuq = zzfrVar.zzuq;
        this.zztt = zzfrVar.zztt;
        this.content = zzfrVar.content;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public static StringBuilder zzc(zzfp zzfpVar) {
        StringBuilder sb = new StringBuilder();
        int statusCode = zzfpVar.getStatusCode();
        if (statusCode != 0) {
            sb.append(statusCode);
        }
        String statusMessage = zzfpVar.getStatusMessage();
        if (statusMessage != null) {
            if (statusCode != 0) {
                sb.append(' ');
            }
            sb.append(statusMessage);
        }
        return sb;
    }
}
