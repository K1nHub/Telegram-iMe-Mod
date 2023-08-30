package com.google.android.gms.internal.firebase_ml;

import java.nio.charset.Charset;
/* loaded from: classes.dex */
public final class zzgz {
    public static String zzd(byte[] bArr) {
        Charset charset = zzgv.UTF_8;
        if (bArr == null) {
            return null;
        }
        return new String(bArr, charset);
    }
}
