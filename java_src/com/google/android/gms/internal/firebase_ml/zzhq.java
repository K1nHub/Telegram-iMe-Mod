package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public final class zzhq {
    public static long zzb(zzic zzicVar) throws IOException {
        zzhf zzhfVar = new zzhf();
        try {
            zzicVar.writeTo(zzhfVar);
            zzhfVar.close();
            return zzhfVar.zzyc;
        } catch (Throwable th) {
            zzhfVar.close();
            throw th;
        }
    }
}
