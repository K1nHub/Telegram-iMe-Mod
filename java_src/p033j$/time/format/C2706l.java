package p033j$.time.format;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Objects;
import p033j$.time.AbstractC2679a;
import p033j$.time.temporal.EnumC2734a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.l */
/* loaded from: classes2.dex */
public final class C2706l implements InterfaceC2702h {

    /* renamed from: c */
    static final String[] f542c = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};

    /* renamed from: d */
    static final C2706l f543d = new C2706l("+HH:MM:ss", "Z");

    /* renamed from: e */
    static final C2706l f544e = new C2706l("+HH:MM:ss", SessionDescription.SUPPORTED_SDP_VERSION);

    /* renamed from: a */
    private final String f545a;

    /* renamed from: b */
    private final int f546b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2706l(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        int i = 0;
        while (true) {
            String[] strArr = f542c;
            if (i >= strArr.length) {
                throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
            } else if (strArr[i].equals(str)) {
                this.f546b = i;
                this.f545a = str2;
                return;
            } else {
                i++;
            }
        }
    }

    /* renamed from: c */
    private boolean m891c(int[] iArr, int i, CharSequence charSequence, boolean z) {
        int i2 = this.f546b;
        if ((i2 + 3) / 2 < i) {
            return false;
        }
        int i3 = iArr[0];
        if (i2 % 2 == 0 && i > 1) {
            int i4 = i3 + 1;
            if (i4 > charSequence.length() || charSequence.charAt(i3) != ':') {
                return z;
            }
            i3 = i4;
        }
        if (i3 + 2 > charSequence.length()) {
            return z;
        }
        int i5 = i3 + 1;
        char charAt = charSequence.charAt(i3);
        int i6 = i5 + 1;
        char charAt2 = charSequence.charAt(i5);
        if (charAt >= '0' && charAt <= '9' && charAt2 >= '0' && charAt2 <= '9') {
            int i7 = (charAt2 - '0') + ((charAt - '0') * 10);
            if (i7 >= 0 && i7 <= 59) {
                iArr[i] = i7;
                iArr[0] = i6;
                return false;
            }
        }
        return z;
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: a */
    public boolean mo883a(C2716v c2716v, StringBuilder sb) {
        Long m836e = c2716v.m836e(EnumC2734a.OFFSET_SECONDS);
        if (m836e == null) {
            return false;
        }
        long longValue = m836e.longValue();
        int i = (int) longValue;
        if (longValue == i) {
            if (i != 0) {
                int abs = Math.abs((i / 3600) % 100);
                int abs2 = Math.abs((i / 60) % 60);
                int abs3 = Math.abs(i % 60);
                int length = sb.length();
                sb.append(i < 0 ? "-" : "+");
                sb.append((char) ((abs / 10) + 48));
                sb.append((char) ((abs % 10) + 48));
                int i2 = this.f546b;
                if (i2 >= 3 || (i2 >= 1 && abs2 > 0)) {
                    sb.append(i2 % 2 == 0 ? ":" : "");
                    sb.append((char) ((abs2 / 10) + 48));
                    sb.append((char) ((abs2 % 10) + 48));
                    abs += abs2;
                    int i3 = this.f546b;
                    if (i3 >= 7 || (i3 >= 5 && abs3 > 0)) {
                        sb.append(i3 % 2 != 0 ? "" : ":");
                        sb.append((char) ((abs3 / 10) + 48));
                        sb.append((char) ((abs3 % 10) + 48));
                        abs += abs3;
                    }
                }
                if (abs == 0) {
                    sb.setLength(length);
                }
                return true;
            }
            sb.append(this.f545a);
            return true;
        }
        throw new ArithmeticException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        if (r16.m842r(r17, r18, r15.f545a, 0, r9) != false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007c  */
    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo882b(p033j$.time.format.C2714t r16, java.lang.CharSequence r17, int r18) {
        /*
            r15 = this;
            r0 = r15
            r7 = r17
            r8 = r18
            int r1 = r17.length()
            java.lang.String r2 = r0.f545a
            int r9 = r2.length()
            if (r9 != 0) goto L22
            if (r8 != r1) goto L41
            j$.time.temporal.a r2 = p033j$.time.temporal.EnumC2734a.OFFSET_SECONDS
            r3 = 0
            r1 = r16
            r5 = r18
            r6 = r18
        L1d:
            int r1 = r1.m846n(r2, r3, r5, r6)
            return r1
        L22:
            if (r8 != r1) goto L26
            int r1 = ~r8
            return r1
        L26:
            java.lang.String r4 = r0.f545a
            r5 = 0
            r1 = r16
            r2 = r17
            r3 = r18
            r6 = r9
            boolean r1 = r1.m842r(r2, r3, r4, r5, r6)
            if (r1 == 0) goto L41
        L36:
            j$.time.temporal.a r2 = p033j$.time.temporal.EnumC2734a.OFFSET_SECONDS
            int r6 = r8 + r9
            r3 = 0
            r1 = r16
            r5 = r18
            goto L1d
        L41:
            char r1 = r17.charAt(r18)
            r2 = 43
            r3 = 45
            if (r1 == r2) goto L4d
            if (r1 != r3) goto L9a
        L4d:
            r2 = 1
            if (r1 != r3) goto L52
            r1 = -1
            goto L53
        L52:
            r1 = r2
        L53:
            r3 = 4
            int[] r3 = new int[r3]
            int r4 = r8 + 1
            r5 = 0
            r3[r5] = r4
            boolean r4 = r15.m891c(r3, r2, r7, r2)
            r6 = 2
            r10 = 3
            if (r4 != 0) goto L79
            int r4 = r0.f546b
            if (r4 < r10) goto L69
            r4 = r2
            goto L6a
        L69:
            r4 = r5
        L6a:
            boolean r4 = r15.m891c(r3, r6, r7, r4)
            if (r4 != 0) goto L79
            boolean r4 = r15.m891c(r3, r10, r7, r5)
            if (r4 == 0) goto L77
            goto L79
        L77:
            r4 = r5
            goto L7a
        L79:
            r4 = r2
        L7a:
            if (r4 != 0) goto L9a
            long r11 = (long) r1
            r1 = r3[r2]
            long r1 = (long) r1
            r13 = 3600(0xe10, double:1.7786E-320)
            long r1 = r1 * r13
            r4 = r3[r6]
            long r6 = (long) r4
            r13 = 60
            long r6 = r6 * r13
            long r6 = r6 + r1
            r1 = r3[r10]
            long r1 = (long) r1
            long r6 = r6 + r1
            long r6 = r6 * r11
            j$.time.temporal.a r2 = p033j$.time.temporal.EnumC2734a.OFFSET_SECONDS
            r9 = r3[r5]
            r1 = r16
            r3 = r6
            r5 = r18
            r6 = r9
            goto L1d
        L9a:
            if (r9 != 0) goto L9d
            goto L36
        L9d:
            int r1 = ~r8
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.format.C2706l.mo882b(j$.time.format.t, java.lang.CharSequence, int):int");
    }

    public String toString() {
        String replace = this.f545a.replace("'", "''");
        StringBuilder m961a = AbstractC2679a.m961a("Offset(");
        m961a.append(f542c[this.f546b]);
        m961a.append(",'");
        m961a.append(replace);
        m961a.append("')");
        return m961a.toString();
    }
}
