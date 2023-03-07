package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.util.Arrays;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class zzft {
    static final Logger zzuz = Logger.getLogger(zzft.class.getName());
    private static final String[] zzva;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract zzfs zzc(String str, String str2) throws IOException;

    public final zzfn zza(zzfm zzfmVar) {
        return new zzfn(this, zzfmVar);
    }

    public boolean zzag(String str) throws IOException {
        return Arrays.binarySearch(zzva, str) >= 0;
    }

    static {
        String[] strArr = {"DELETE", "GET", "POST", "PUT"};
        zzva = strArr;
        Arrays.sort(strArr);
    }
}
