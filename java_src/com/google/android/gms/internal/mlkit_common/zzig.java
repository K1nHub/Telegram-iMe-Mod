package com.google.android.gms.internal.mlkit_common;

import java.util.List;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public final class zzig extends RuntimeException {
    private final List<String> zza;

    public zzig(zzhb zzhbVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.zza = null;
    }
}
