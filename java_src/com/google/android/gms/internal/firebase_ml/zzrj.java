package com.google.android.gms.internal.firebase_ml;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzrj implements Closeable, Flushable {
    private static final String[] zzbfa = new String[128];
    private static final String[] zzbfb;
    private final Writer out;
    private String separator;
    private boolean zzbec;
    private int[] zzbek = new int[32];
    private int zzbel = 0;
    private String zzbfc;
    private String zzbfd;
    private boolean zzbfe;

    public zzrj(Writer writer) {
        zzbt(6);
        this.separator = ":";
        this.zzbfe = true;
        this.out = writer;
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.zzbfc = null;
            this.separator = ":";
            return;
        }
        this.zzbfc = str;
        this.separator = ": ";
    }

    public final void setLenient(boolean z) {
        this.zzbec = true;
    }

    public final zzrj zzoe() throws IOException {
        zzoi();
        return zza(1, "[");
    }

    public final zzrj zzof() throws IOException {
        return zzc(1, 2, "]");
    }

    public final zzrj zzog() throws IOException {
        zzoi();
        return zza(3, "{");
    }

    public final zzrj zzoh() throws IOException {
        return zzc(3, 5, "}");
    }

    private final zzrj zza(int i, String str) throws IOException {
        zzol();
        zzbt(i);
        this.out.write(str);
        return this;
    }

    private final zzrj zzc(int i, int i2, String str) throws IOException {
        int peek = peek();
        if (peek != i2 && peek != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.zzbfd != null) {
            throw new IllegalStateException("Dangling name: " + this.zzbfd);
        }
        this.zzbel--;
        if (peek == i2) {
            zzok();
        }
        this.out.write(str);
        return this;
    }

    private final void zzbt(int i) {
        int i2 = this.zzbel;
        int[] iArr = this.zzbek;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.zzbek = iArr2;
        }
        int[] iArr3 = this.zzbek;
        int i3 = this.zzbel;
        this.zzbel = i3 + 1;
        iArr3[i3] = i;
    }

    private final int peek() {
        int i = this.zzbel;
        if (i == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        return this.zzbek[i - 1];
    }

    private final void zzbv(int i) {
        this.zzbek[this.zzbel - 1] = i;
    }

    public final zzrj zzcb(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.zzbfd != null) {
            throw new IllegalStateException();
        }
        if (this.zzbel == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.zzbfd = str;
        return this;
    }

    private final void zzoi() throws IOException {
        if (this.zzbfd != null) {
            int peek = peek();
            if (peek == 5) {
                this.out.write(44);
            } else if (peek != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            zzok();
            zzbv(4);
            zzcd(this.zzbfd);
            this.zzbfd = null;
        }
    }

    public final zzrj zzcc(String str) throws IOException {
        if (str == null) {
            return zzoj();
        }
        zzoi();
        zzol();
        zzcd(str);
        return this;
    }

    public final zzrj zzoj() throws IOException {
        if (this.zzbfd != null) {
            if (this.zzbfe) {
                zzoi();
            } else {
                this.zzbfd = null;
                return this;
            }
        }
        zzol();
        this.out.write("null");
        return this;
    }

    public final zzrj zzak(boolean z) throws IOException {
        zzoi();
        zzol();
        this.out.write(z ? "true" : "false");
        return this;
    }

    public final zzrj zzb(double d) throws IOException {
        zzoi();
        if (!this.zzbec && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        zzol();
        this.out.append((CharSequence) Double.toString(d));
        return this;
    }

    public final zzrj zzq(long j) throws IOException {
        zzoi();
        zzol();
        this.out.write(Long.toString(j));
        return this;
    }

    public final zzrj zza(Number number) throws IOException {
        if (number == null) {
            return zzoj();
        }
        zzoi();
        String obj = number.toString();
        if (!this.zzbec && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        zzol();
        this.out.append((CharSequence) obj);
        return this;
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        if (this.zzbel == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.out.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.out.close();
        int i = this.zzbel;
        if (i > 1 || (i == 1 && this.zzbek[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.zzbel = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzcd(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            java.lang.String[] r0 = com.google.android.gms.internal.firebase_ml.zzrj.zzbfa
            java.io.Writer r1 = r8.out
            java.lang.String r2 = "\""
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = r3
        Lf:
            if (r3 >= r1) goto L3e
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 >= r6) goto L1e
            r5 = r0[r5]
            if (r5 != 0) goto L2b
            goto L3b
        L1e:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L25
            java.lang.String r5 = "\\u2028"
            goto L2b
        L25:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L3b
            java.lang.String r5 = "\\u2029"
        L2b:
            if (r4 >= r3) goto L34
            java.io.Writer r6 = r8.out
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L34:
            java.io.Writer r4 = r8.out
            r4.write(r5)
            int r4 = r3 + 1
        L3b:
            int r3 = r3 + 1
            goto Lf
        L3e:
            if (r4 >= r1) goto L46
            java.io.Writer r0 = r8.out
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L46:
            java.io.Writer r9 = r8.out
            r9.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzrj.zzcd(java.lang.String):void");
    }

    private final void zzok() throws IOException {
        if (this.zzbfc == null) {
            return;
        }
        this.out.write("\n");
        int i = this.zzbel;
        for (int i2 = 1; i2 < i; i2++) {
            this.out.write(this.zzbfc);
        }
    }

    private final void zzol() throws IOException {
        int peek = peek();
        if (peek == 1) {
            zzbv(2);
            zzok();
        } else if (peek == 2) {
            this.out.append(',');
            zzok();
        } else if (peek != 4) {
            if (peek != 6) {
                if (peek == 7) {
                    if (!this.zzbec) {
                        throw new IllegalStateException("JSON must have only one top-level value.");
                    }
                } else {
                    throw new IllegalStateException("Nesting problem.");
                }
            }
            zzbv(7);
        } else {
            this.out.append((CharSequence) this.separator);
            zzbv(5);
        }
    }

    static {
        for (int i = 0; i <= 31; i++) {
            zzbfa[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = zzbfa;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        zzbfb = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }
}
