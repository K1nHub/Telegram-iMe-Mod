package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
public final class zzow {
    public static final zzow zzavh = new zzow(zzov.OK, null);
    private final zzov zzavi;
    private final String zzavj;

    public zzow(zzov zzovVar, String str) {
        this.zzavi = zzovVar;
        this.zzavj = str;
    }

    public final boolean isValid() {
        return this.zzavi == zzov.OK;
    }

    public final zzov zzma() {
        return this.zzavi;
    }
}
