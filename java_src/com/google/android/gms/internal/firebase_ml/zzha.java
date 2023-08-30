package com.google.android.gms.internal.firebase_ml;

import java.util.Arrays;
/* loaded from: classes.dex */
final class zzha {
    byte[] buffer;
    boolean eof;
    int pos;
    int zzxp;
    int zzxq;
    int zzxr;
    int zzxs;

    public final String toString() {
        return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", zzha.class.getSimpleName(), Arrays.toString(this.buffer), Integer.valueOf(this.zzxr), Boolean.valueOf(this.eof), Integer.valueOf(this.zzxp), 0L, Integer.valueOf(this.zzxs), Integer.valueOf(this.pos), Integer.valueOf(this.zzxq));
    }
}
