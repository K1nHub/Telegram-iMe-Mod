package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public final class zzen implements zzfg, zzfm {
    private final boolean zzsc;

    public zzen() {
        this(false);
    }

    private zzen(boolean z) {
        this.zzsc = false;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfm
    public final void zza(zzfk zzfkVar) {
        zzfkVar.zza(this);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfg
    public final void zzb(zzfk zzfkVar) throws IOException {
        String requestMethod = zzfkVar.getRequestMethod();
        boolean z = true;
        if (requestMethod.equals("POST") || ((!requestMethod.equals("GET") || zzfkVar.zzer().zzep().length() <= 2048) && zzfkVar.zzeq().zzag(requestMethod))) {
            z = false;
        }
        if (z) {
            String requestMethod2 = zzfkVar.getRequestMethod();
            zzfkVar.zzac("POST");
            zzfkVar.zzev().zzb("X-HTTP-Method-Override", requestMethod2);
            if (requestMethod2.equals("GET")) {
                zzfkVar.zza(new zzfw((zzfc) zzfkVar.zzer().clone()));
                zzfkVar.zzer().clear();
            } else if (zzfkVar.zzes() == null) {
                zzfkVar.zza(new zzfb());
            }
        }
    }
}
