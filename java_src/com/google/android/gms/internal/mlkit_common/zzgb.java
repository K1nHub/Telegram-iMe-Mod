package com.google.android.gms.internal.mlkit_common;

import java.io.IOException;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public class zzgb extends IOException {
    private zzhb zza;

    public zzgb(String str) {
        super(str);
        this.zza = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzga zza() {
        return new zzga("Protocol message tag had invalid wire type.");
    }
}
