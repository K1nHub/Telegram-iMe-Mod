package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public final class zzfn {
    private final zzft zzse;
    private final zzfm zzup;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfn(zzft zzftVar, zzfm zzfmVar) {
        this.zzse = zzftVar;
        this.zzup = zzfmVar;
    }

    public final zzfk zza(String str, zzfc zzfcVar, zzff zzffVar) throws IOException {
        zzfk zzfkVar = new zzfk(this.zzse, null);
        zzfm zzfmVar = this.zzup;
        if (zzfmVar != null) {
            zzfmVar.zza(zzfkVar);
        }
        zzfkVar.zzac(str);
        zzfkVar.zza(zzfcVar);
        if (zzffVar != null) {
            zzfkVar.zza(zzffVar);
        }
        return zzfkVar;
    }
}
