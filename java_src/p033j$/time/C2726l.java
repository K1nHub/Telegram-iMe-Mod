package p033j$.time;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.regex.Pattern;
import p033j$.time.temporal.ChronoUnit;
/* renamed from: j$.time.l */
/* loaded from: classes2.dex */
public final class C2726l implements Serializable {

    /* renamed from: d */
    public static final C2726l f603d = new C2726l(0, 0, 0);

    /* renamed from: a */
    private final int f604a;

    /* renamed from: b */
    private final int f605b;

    /* renamed from: c */
    private final int f606c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        Collections.unmodifiableList(Arrays.asList(ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS));
    }

    private C2726l(int i, int i2, int i3) {
        this.f604a = i;
        this.f605b = i2;
        this.f606c = i3;
    }

    /* renamed from: d */
    public static C2726l m791d(int i) {
        return (0 | i) == 0 ? f603d : new C2726l(0, 0, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p033j$.time.temporal.InterfaceC2743j m794a(p033j$.time.temporal.InterfaceC2743j r7) {
        /*
            r6 = this;
            int r0 = p033j$.time.temporal.AbstractC2756w.f647a
            j$.time.temporal.q r0 = p033j$.time.temporal.C2750q.f641a
            r1 = r7
            j$.time.d r1 = (p033j$.time.C2690d) r1
            java.lang.Object r0 = r1.mo738g(r0)
            j$.time.chrono.g r0 = (p033j$.time.chrono.InterfaceC2688g) r0
            if (r0 == 0) goto L20
            j$.time.chrono.h r2 = p033j$.time.chrono.C2689h.f501a
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L18
            goto L20
        L18:
            j$.time.DateTimeException r7 = new j$.time.DateTimeException
            java.lang.String r0 = "Chronology mismatch, expected: ISO, actual: ISO"
            r7.<init>(r0)
            throw r7
        L20:
            int r0 = r6.f605b
            if (r0 != 0) goto L30
            int r0 = r6.f604a
            if (r0 == 0) goto L41
            long r2 = (long) r0
            j$.time.temporal.ChronoUnit r7 = p033j$.time.temporal.ChronoUnit.YEARS
        L2b:
            j$.time.d r7 = r1.mo742f(r2, r7)
            goto L41
        L30:
            int r2 = r6.f604a
            long r2 = (long) r2
            r4 = 12
            long r2 = r2 * r4
            long r4 = (long) r0
            long r2 = r2 + r4
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L41
            j$.time.temporal.ChronoUnit r7 = p033j$.time.temporal.ChronoUnit.MONTHS
            goto L2b
        L41:
            int r0 = r6.f606c
            if (r0 == 0) goto L4e
            long r0 = (long) r0
            j$.time.temporal.ChronoUnit r2 = p033j$.time.temporal.ChronoUnit.DAYS
            j$.time.d r7 = (p033j$.time.C2690d) r7
            j$.time.d r7 = r7.mo742f(r0, r2)
        L4e:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.C2726l.m794a(j$.time.temporal.j):j$.time.temporal.j");
    }

    /* renamed from: b */
    public int m793b() {
        return this.f606c;
    }

    /* renamed from: c */
    public boolean m792c() {
        return this == f603d;
    }

    /* renamed from: e */
    public long m790e() {
        return (this.f604a * 12) + this.f605b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2726l) {
            C2726l c2726l = (C2726l) obj;
            return this.f604a == c2726l.f604a && this.f605b == c2726l.f605b && this.f606c == c2726l.f606c;
        }
        return false;
    }

    public int hashCode() {
        return Integer.rotateLeft(this.f606c, 16) + Integer.rotateLeft(this.f605b, 8) + this.f604a;
    }

    public String toString() {
        if (this == f603d) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('P');
        int i = this.f604a;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f605b;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f606c;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }
}
