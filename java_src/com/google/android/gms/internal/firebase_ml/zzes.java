package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public class zzes implements zzev {
    private final String key;
    private final String zztb;

    public zzes() {
        this(null);
    }

    public zzes(String str) {
        this(str, null);
    }

    private zzes(String str, String str2) {
        this.key = str;
        this.zztb = null;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzev
    public void zza(zzer<?> zzerVar) throws IOException {
        String str = this.key;
        if (str != null) {
            zzerVar.put("key", str);
        }
    }
}
