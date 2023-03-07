package com.google.android.gms.internal.firebase_ml;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Objects;
/* loaded from: classes.dex */
public final class zzre implements Closeable {
    private static final char[] zzbeb = ")]}'\n".toCharArray();

    /* renamed from: in */
    private final Reader f153in;
    private long zzbeh;
    private int zzbei;
    private String zzbej;
    private int[] zzbek;
    private int zzbel;
    private String[] zzbem;
    private int[] zzben;
    private boolean zzbec = false;
    private final char[] zzbed = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int zzbee = 0;
    private int zzbef = 0;
    private int zzbeg = 0;

    public zzre(Reader reader) {
        int[] iArr = new int[32];
        this.zzbek = iArr;
        this.zzbel = 0;
        this.zzbel = 0 + 1;
        iArr[0] = 6;
        this.zzbem = new String[32];
        this.zzben = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f153in = reader;
    }

    public final void setLenient(boolean z) {
        this.zzbec = true;
    }

    public final void beginArray() throws IOException {
        int i = this.zzbeg;
        if (i == 0) {
            i = zzny();
        }
        if (i == 3) {
            zzbt(1);
            this.zzben[this.zzbel - 1] = 0;
            this.zzbeg = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + zznx() + zzoc());
    }

    public final void endArray() throws IOException {
        int i = this.zzbeg;
        if (i == 0) {
            i = zzny();
        }
        if (i == 4) {
            int i2 = this.zzbel - 1;
            this.zzbel = i2;
            int[] iArr = this.zzben;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
            this.zzbeg = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + zznx() + zzoc());
    }

    public final void beginObject() throws IOException {
        int i = this.zzbeg;
        if (i == 0) {
            i = zzny();
        }
        if (i == 1) {
            zzbt(3);
            this.zzbeg = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + zznx() + zzoc());
    }

    public final void endObject() throws IOException {
        int i = this.zzbeg;
        if (i == 0) {
            i = zzny();
        }
        if (i == 2) {
            int i2 = this.zzbel - 1;
            this.zzbel = i2;
            this.zzbem[i2] = null;
            int[] iArr = this.zzben;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
            this.zzbeg = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + zznx() + zzoc());
    }

    public final zzrg zznx() throws IOException {
        int i = this.zzbeg;
        if (i == 0) {
            i = zzny();
        }
        switch (i) {
            case 1:
                return zzrg.BEGIN_OBJECT;
            case 2:
                return zzrg.END_OBJECT;
            case 3:
                return zzrg.BEGIN_ARRAY;
            case 4:
                return zzrg.END_ARRAY;
            case 5:
            case 6:
                return zzrg.BOOLEAN;
            case 7:
                return zzrg.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return zzrg.STRING;
            case 12:
            case 13:
            case 14:
                return zzrg.NAME;
            case 15:
            case 16:
                return zzrg.NUMBER;
            case 17:
                return zzrg.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x01fb, code lost:
        if (zze(r5) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x01fe, code lost:
        if (r4 != 2) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0200, code lost:
        if (r11 == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0206, code lost:
        if (r12 != Long.MIN_VALUE) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0208, code lost:
        if (r16 == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x020e, code lost:
        if (r12 != 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0210, code lost:
        if (r16 != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0212, code lost:
        if (r16 == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0215, code lost:
        r12 = -r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0216, code lost:
        r19.zzbeh = r12;
        r19.pos += r9;
        r5 = 15;
        r19.zzbeg = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0222, code lost:
        if (r4 == 2) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0225, code lost:
        if (r4 == 4) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0228, code lost:
        if (r4 != 7) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x022d, code lost:
        r19.zzbei = r9;
        r5 = 16;
        r19.zzbeg = 16;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0173 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0259 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x025a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzny() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzre.zzny():int");
    }

    private final boolean zze(char c) throws IOException {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        zzoa();
        return false;
    }

    public final String nextName() throws IOException {
        String zzf;
        int i = this.zzbeg;
        if (i == 0) {
            i = zzny();
        }
        if (i == 14) {
            zzf = zznz();
        } else if (i == 12) {
            zzf = zzf('\'');
        } else if (i == 13) {
            zzf = zzf('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + zznx() + zzoc());
        }
        this.zzbeg = 0;
        this.zzbem[this.zzbel - 1] = zzf;
        return zzf;
    }

    public final String nextString() throws IOException {
        int i = this.zzbeg;
        if (i == 0) {
            i = zzny();
        }
        String str = null;
        if (i == 10) {
            str = zznz();
        } else if (i == 8) {
            str = zzf('\'');
        } else if (i == 9) {
            str = zzf('\"');
        } else if (i == 11) {
            this.zzbej = null;
        } else if (i == 15) {
            str = Long.toString(this.zzbeh);
        } else if (i == 16) {
            str = new String(this.zzbed, this.pos, this.zzbei);
            this.pos += this.zzbei;
        } else {
            throw new IllegalStateException("Expected a string but was " + zznx() + zzoc());
        }
        this.zzbeg = 0;
        int[] iArr = this.zzben;
        int i2 = this.zzbel - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    public final boolean nextBoolean() throws IOException {
        int i = this.zzbeg;
        if (i == 0) {
            i = zzny();
        }
        if (i == 5) {
            this.zzbeg = 0;
            int[] iArr = this.zzben;
            int i2 = this.zzbel - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        } else if (i == 6) {
            this.zzbeg = 0;
            int[] iArr2 = this.zzben;
            int i3 = this.zzbel - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + zznx() + zzoc());
        }
    }

    public final void nextNull() throws IOException {
        int i = this.zzbeg;
        if (i == 0) {
            i = zzny();
        }
        if (i == 7) {
            this.zzbeg = 0;
            int[] iArr = this.zzben;
            int i2 = this.zzbel - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + zznx() + zzoc());
    }

    private final String zzf(char c) throws IOException {
        char[] cArr = this.zzbed;
        StringBuilder sb = null;
        while (true) {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (true) {
                if (i3 < i2) {
                    int i4 = i3 + 1;
                    char c2 = cArr[i3];
                    if (c2 == c) {
                        this.pos = i4;
                        int i5 = (i4 - i) - 1;
                        if (sb == null) {
                            return new String(cArr, i, i5);
                        }
                        sb.append(cArr, i, i5);
                        return sb.toString();
                    } else if (c2 == '\\') {
                        this.pos = i4;
                        int i6 = (i4 - i) - 1;
                        if (sb == null) {
                            sb = new StringBuilder(Math.max((i6 + 1) << 1, 16));
                        }
                        sb.append(cArr, i, i6);
                        sb.append(zzod());
                    } else {
                        if (c2 == '\n') {
                            this.zzbee++;
                            this.zzbef = i4;
                        }
                        i3 = i4;
                    }
                } else {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max((i3 - i) << 1, 16));
                    }
                    sb.append(cArr, i, i3 - i);
                    this.pos = i3;
                    if (!zzbu(1)) {
                        throw zzca("Unterminated string");
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
        zzoa();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String zznz() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = 0
        L3:
            int r3 = r6.pos
            int r4 = r3 + r2
            int r5 = r6.limit
            if (r4 >= r5) goto L4e
            char[] r4 = r6.zzbed
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.zzoa()
            goto L5c
        L4e:
            char[] r3 = r6.zzbed
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.zzbu(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r0 = r2
            goto L7e
        L5e:
            if (r1 != 0) goto L6b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r1.<init>(r3)
        L6b:
            char[] r3 = r6.zzbed
            int r4 = r6.pos
            r1.append(r3, r4, r2)
            int r3 = r6.pos
            int r3 = r3 + r2
            r6.pos = r3
            r2 = 1
            boolean r2 = r6.zzbu(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r1 != 0) goto L8a
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.zzbed
            int r3 = r6.pos
            r1.<init>(r2, r3, r0)
            goto L95
        L8a:
            char[] r2 = r6.zzbed
            int r3 = r6.pos
            r1.append(r2, r3, r0)
            java.lang.String r1 = r1.toString()
        L95:
            int r2 = r6.pos
            int r2 = r2 + r0
            r6.pos = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzre.zznz():java.lang.String");
    }

    private final void zzg(char c) throws IOException {
        char[] cArr = this.zzbed;
        while (true) {
            int i = this.pos;
            int i2 = this.limit;
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    char c2 = cArr[i];
                    if (c2 == c) {
                        this.pos = i3;
                        return;
                    } else if (c2 == '\\') {
                        this.pos = i3;
                        zzod();
                        break;
                    } else {
                        if (c2 == '\n') {
                            this.zzbee++;
                            this.zzbef = i3;
                        }
                        i = i3;
                    }
                } else {
                    this.pos = i;
                    if (!zzbu(1)) {
                        throw zzca("Unterminated string");
                    }
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zzbeg = 0;
        this.zzbek[0] = 8;
        this.zzbel = 1;
        this.f153in.close();
    }

    public final void skipValue() throws IOException {
        int i = 0;
        do {
            int i2 = this.zzbeg;
            if (i2 == 0) {
                i2 = zzny();
            }
            if (i2 == 3) {
                zzbt(1);
            } else if (i2 == 1) {
                zzbt(3);
            } else {
                if (i2 == 4) {
                    this.zzbel--;
                } else if (i2 == 2) {
                    this.zzbel--;
                } else {
                    if (i2 == 14 || i2 == 10) {
                        do {
                            int i3 = 0;
                            while (true) {
                                int i4 = this.pos;
                                if (i4 + i3 < this.limit) {
                                    char c = this.zzbed[i4 + i3];
                                    if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                                        if (c != '#') {
                                            if (c != ',') {
                                                if (c != '/' && c != '=') {
                                                    if (c != '{' && c != '}' && c != ':') {
                                                        if (c != ';') {
                                                            switch (c) {
                                                                case '[':
                                                                case ']':
                                                                    break;
                                                                case '\\':
                                                                    break;
                                                                default:
                                                                    i3++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    this.pos = i4 + i3;
                                }
                            }
                            zzoa();
                            this.pos += i3;
                        } while (zzbu(1));
                    } else if (i2 == 8 || i2 == 12) {
                        zzg('\'');
                    } else if (i2 == 9 || i2 == 13) {
                        zzg('\"');
                    } else if (i2 == 16) {
                        this.pos += this.zzbei;
                    }
                    this.zzbeg = 0;
                }
                i--;
                this.zzbeg = 0;
            }
            i++;
            this.zzbeg = 0;
        } while (i != 0);
        int[] iArr = this.zzben;
        int i5 = this.zzbel;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.zzbem[i5 - 1] = "null";
    }

    private final void zzbt(int i) {
        int i2 = this.zzbel;
        int[] iArr = this.zzbek;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 << 1];
            int[] iArr3 = new int[i2 << 1];
            String[] strArr = new String[i2 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.zzben, 0, iArr3, 0, this.zzbel);
            System.arraycopy(this.zzbem, 0, strArr, 0, this.zzbel);
            this.zzbek = iArr2;
            this.zzben = iArr3;
            this.zzbem = strArr;
        }
        int[] iArr4 = this.zzbek;
        int i3 = this.zzbel;
        this.zzbel = i3 + 1;
        iArr4[i3] = i;
    }

    private final boolean zzbu(int i) throws IOException {
        int i2;
        int i3;
        char[] cArr = this.zzbed;
        int i4 = this.zzbef;
        int i5 = this.pos;
        this.zzbef = i4 - i5;
        int i6 = this.limit;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.limit = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.f153in;
            int i8 = this.limit;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.limit + read;
            this.limit = i2;
            if (this.zzbee == 0 && (i3 = this.zzbef) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.pos++;
                this.zzbef = i3 + 1;
                i++;
                continue;
            }
        } while (i2 < i);
        return true;
    }

    private final int zzaj(boolean z) throws IOException {
        int i;
        char[] cArr = this.zzbed;
        int i2 = this.pos;
        int i3 = this.limit;
        while (true) {
            boolean z2 = true;
            if (i2 == i3) {
                this.pos = i2;
                if (!zzbu(1)) {
                    if (z) {
                        throw new EOFException("End of input" + zzoc());
                    }
                    return -1;
                }
                i2 = this.pos;
                i3 = this.limit;
            }
            int i4 = i2 + 1;
            char c = cArr[i2];
            if (c == '\n') {
                this.zzbee++;
                this.zzbef = i4;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.pos = i4;
                    if (i4 == i3) {
                        this.pos = i4 - 1;
                        boolean zzbu = zzbu(2);
                        this.pos++;
                        if (!zzbu) {
                            return c;
                        }
                    }
                    zzoa();
                    int i5 = this.pos;
                    char c2 = cArr[i5];
                    if (c2 == '*') {
                        this.pos = i5 + 1;
                        while (true) {
                            if (this.pos + 2 > this.limit && !zzbu(2)) {
                                z2 = false;
                                break;
                            }
                            char[] cArr2 = this.zzbed;
                            int i6 = this.pos;
                            if (cArr2[i6] != '\n') {
                                while (i < 2) {
                                    i = this.zzbed[this.pos + i] == "*/".charAt(i) ? i + 1 : 0;
                                }
                                break;
                            }
                            this.zzbee++;
                            this.zzbef = i6 + 1;
                            this.pos++;
                        }
                        if (!z2) {
                            throw zzca("Unterminated comment");
                        }
                        i2 = this.pos + 2;
                        i3 = this.limit;
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.pos = i5 + 1;
                        zzob();
                        i2 = this.pos;
                        i3 = this.limit;
                    }
                } else if (c == '#') {
                    this.pos = i4;
                    zzoa();
                    zzob();
                    i2 = this.pos;
                    i3 = this.limit;
                } else {
                    this.pos = i4;
                    return c;
                }
            }
            i2 = i4;
        }
    }

    private final void zzoa() throws IOException {
        if (!this.zzbec) {
            throw zzca("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private final void zzob() throws IOException {
        char c;
        do {
            if (this.pos >= this.limit && !zzbu(1)) {
                return;
            }
            char[] cArr = this.zzbed;
            int i = this.pos;
            int i2 = i + 1;
            this.pos = i2;
            c = cArr[i];
            if (c == '\n') {
                this.zzbee++;
                this.zzbef = i2;
                return;
            }
        } while (c != '\r');
    }

    public final String toString() {
        return zzre.class.getSimpleName() + zzoc();
    }

    private final String zzoc() {
        StringBuilder sb = new StringBuilder(" at line ");
        sb.append(this.zzbee + 1);
        sb.append(" column ");
        sb.append((this.pos - this.zzbef) + 1);
        sb.append(" path ");
        StringBuilder sb2 = new StringBuilder("$");
        int i = this.zzbel;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.zzbek[i2];
            if (i3 == 1 || i3 == 2) {
                sb2.append('[');
                sb2.append(this.zzben[i2]);
                sb2.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb2.append('.');
                String[] strArr = this.zzbem;
                if (strArr[i2] != null) {
                    sb2.append(strArr[i2]);
                }
            }
        }
        sb.append(sb2.toString());
        return sb.toString();
    }

    private final char zzod() throws IOException {
        int i;
        int i2;
        if (this.pos == this.limit && !zzbu(1)) {
            throw zzca("Unterminated escape sequence");
        }
        char[] cArr = this.zzbed;
        int i3 = this.pos;
        int i4 = i3 + 1;
        this.pos = i4;
        char c = cArr[i3];
        if (c == '\n') {
            this.zzbee++;
            this.zzbef = i4;
        } else if (c != '\"' && c != '\'' && c != '/' && c != '\\') {
            if (c != 'b') {
                if (c != 'f') {
                    if (c != 'n') {
                        if (c != 'r') {
                            if (c != 't') {
                                if (c == 'u') {
                                    if (i4 + 4 > this.limit && !zzbu(4)) {
                                        throw zzca("Unterminated escape sequence");
                                    }
                                    char c2 = 0;
                                    int i5 = this.pos;
                                    int i6 = i5 + 4;
                                    while (i5 < i6) {
                                        char c3 = this.zzbed[i5];
                                        char c4 = (char) (c2 << 4);
                                        if (c3 < '0' || c3 > '9') {
                                            if (c3 >= 'a' && c3 <= 'f') {
                                                i = c3 - 'a';
                                            } else if (c3 < 'A' || c3 > 'F') {
                                                throw new NumberFormatException("\\u" + new String(this.zzbed, this.pos, 4));
                                            } else {
                                                i = c3 - 'A';
                                            }
                                            i2 = i + 10;
                                        } else {
                                            i2 = c3 - '0';
                                        }
                                        c2 = (char) (c4 + i2);
                                        i5++;
                                    }
                                    this.pos += 4;
                                    return c2;
                                }
                                throw zzca("Invalid escape sequence");
                            }
                            return '\t';
                        }
                        return '\r';
                    }
                    return '\n';
                }
                return '\f';
            }
            return '\b';
        }
        return c;
    }

    private final IOException zzca(String str) throws IOException {
        throw new zzri(str + zzoc());
    }

    static {
        zzrf.zzbeo = new zzrh();
    }
}
