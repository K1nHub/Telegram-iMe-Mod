package p033j$.time;

import com.google.android.exoplayer2.C0485C;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.io.Serializable;
import java.util.Objects;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.C2749p;
import p033j$.time.temporal.C2750q;
import p033j$.time.temporal.C2751r;
import p033j$.time.temporal.C2752s;
import p033j$.time.temporal.C2753t;
import p033j$.time.temporal.C2754u;
import p033j$.time.temporal.C2755v;
import p033j$.time.temporal.C2759z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2743j;
import p033j$.time.temporal.InterfaceC2745l;
import p033j$.time.temporal.InterfaceC2748o;
import p033j$.time.temporal.InterfaceC2757x;
import p033j$.time.temporal.InterfaceC2758y;
/* renamed from: j$.time.h */
/* loaded from: classes2.dex */
public final class C2722h implements InterfaceC2743j, InterfaceC2745l, Comparable, Serializable {

    /* renamed from: e */
    public static final C2722h f591e;

    /* renamed from: f */
    public static final C2722h f592f;

    /* renamed from: g */
    public static final C2722h f593g;

    /* renamed from: h */
    private static final C2722h[] f594h = new C2722h[24];

    /* renamed from: a */
    private final byte f595a;

    /* renamed from: b */
    private final byte f596b;

    /* renamed from: c */
    private final byte f597c;

    /* renamed from: d */
    private final int f598d;

    static {
        int i = 0;
        while (true) {
            C2722h[] c2722hArr = f594h;
            if (i >= c2722hArr.length) {
                f593g = c2722hArr[0];
                C2722h c2722h = c2722hArr[12];
                f591e = c2722hArr[0];
                f592f = new C2722h(23, 59, 59, 999999999);
                return;
            }
            c2722hArr[i] = new C2722h(i, 0, 0, 0);
            i++;
        }
    }

    private C2722h(int i, int i2, int i3, int i4) {
        this.f595a = (byte) i;
        this.f596b = (byte) i2;
        this.f597c = (byte) i3;
        this.f598d = i4;
    }

    /* renamed from: k */
    private static C2722h m815k(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? f594h[i] : new C2722h(i, i2, i3, i4);
    }

    /* renamed from: l */
    private int m814l(InterfaceC2748o interfaceC2748o) {
        switch (AbstractC2721g.f589a[((EnumC2734a) interfaceC2748o).ordinal()]) {
            case 1:
                return this.f598d;
            case 2:
                throw new C2759z("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.f598d / 1000;
            case 4:
                throw new C2759z("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.f598d / 1000000;
            case 6:
                return (int) (m804v() / 1000000);
            case 7:
                return this.f597c;
            case 8:
                return m803w();
            case 9:
                return this.f596b;
            case 10:
                return (this.f595a * 60) + this.f596b;
            case 11:
                return this.f595a % 12;
            case 12:
                int i = this.f595a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case 13:
                return this.f595a;
            case 14:
                byte b = this.f595a;
                if (b == 0) {
                    return 24;
                }
                return b;
            case 15:
                return this.f595a / 12;
            default:
                throw new C2759z("Unsupported field: " + interfaceC2748o);
        }
    }

    /* renamed from: o */
    public static C2722h m811o(int i, int i2) {
        EnumC2734a.HOUR_OF_DAY.m753j(i);
        if (i2 == 0) {
            return f594h[i];
        }
        EnumC2734a.MINUTE_OF_HOUR.m753j(i2);
        return new C2722h(i, i2, 0, 0);
    }

    /* renamed from: p */
    public static C2722h m810p(int i, int i2, int i3, int i4) {
        EnumC2734a.HOUR_OF_DAY.m753j(i);
        EnumC2734a.MINUTE_OF_HOUR.m753j(i2);
        EnumC2734a.SECOND_OF_MINUTE.m753j(i3);
        EnumC2734a.NANO_OF_SECOND.m753j(i4);
        return m815k(i, i2, i3, i4);
    }

    /* renamed from: q */
    public static C2722h m809q(long j) {
        EnumC2734a.NANO_OF_DAY.m753j(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / C0485C.NANOS_PER_SECOND);
        return m815k(i, i2, i3, (int) (j3 - (i3 * C0485C.NANOS_PER_SECOND)));
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: a */
    public InterfaceC2743j mo744a(InterfaceC2745l interfaceC2745l) {
        boolean z = interfaceC2745l instanceof C2722h;
        InterfaceC2743j interfaceC2743j = interfaceC2745l;
        if (!z) {
            interfaceC2743j = ((C2690d) interfaceC2745l).mo736h(this);
        }
        return (C2722h) interfaceC2743j;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public int mo741c(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? m814l(interfaceC2748o) : AbstractC2747n.m735a(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        return AbstractC2747n.m733c(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? interfaceC2748o == EnumC2734a.NANO_OF_DAY ? m804v() : interfaceC2748o == EnumC2734a.MICRO_OF_DAY ? m804v() / 1000 : m814l(interfaceC2748o) : interfaceC2748o.mo728d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2722h) {
            C2722h c2722h = (C2722h) obj;
            return this.f595a == c2722h.f595a && this.f596b == c2722h.f596b && this.f597c == c2722h.f597c && this.f598d == c2722h.f598d;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: f */
    public InterfaceC2743j mo742f(long j, InterfaceC2758y interfaceC2758y) {
        long j2;
        long j3;
        if (!(interfaceC2758y instanceof ChronoUnit)) {
            ChronoUnit chronoUnit = (ChronoUnit) interfaceC2758y;
            Objects.requireNonNull(chronoUnit);
            return (C2722h) mo742f(j, chronoUnit);
        }
        switch (AbstractC2721g.f590b[((ChronoUnit) interfaceC2758y).ordinal()]) {
            case 1:
                return m806t(j);
            case 2:
                j2 = j % 86400000000L;
                j3 = 1000;
                j = j2 * j3;
                return m806t(j);
            case 3:
                j2 = j % 86400000;
                j3 = 1000000;
                j = j2 * j3;
                return m806t(j);
            case 4:
                return m805u(j);
            case 5:
                return m807s(j);
            case 6:
                break;
            case 7:
                j = (j % 2) * 12;
                break;
            default:
                throw new C2759z("Unsupported unit: " + interfaceC2758y);
        }
        return m808r(j);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: g */
    public Object mo738g(InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        if (interfaceC2757x == C2750q.f641a || interfaceC2757x == C2749p.f640a || interfaceC2757x == C2753t.f644a || interfaceC2757x == C2752s.f643a) {
            return null;
        }
        if (interfaceC2757x == C2755v.f646a) {
            return this;
        }
        if (interfaceC2757x == C2754u.f645a) {
            return null;
        }
        return interfaceC2757x == C2751r.f642a ? ChronoUnit.NANOS : interfaceC2757x.mo723a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2745l
    /* renamed from: h */
    public InterfaceC2743j mo736h(InterfaceC2743j interfaceC2743j) {
        return interfaceC2743j.mo743b(EnumC2734a.NANO_OF_DAY, m804v());
    }

    public int hashCode() {
        long m804v = m804v();
        return (int) (m804v ^ (m804v >>> 32));
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? interfaceC2748o.mo730b() : interfaceC2748o != null && interfaceC2748o.mo727e(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(C2722h c2722h) {
        int compare = Integer.compare(this.f595a, c2722h.f595a);
        if (compare == 0) {
            int compare2 = Integer.compare(this.f596b, c2722h.f596b);
            if (compare2 == 0) {
                int compare3 = Integer.compare(this.f597c, c2722h.f597c);
                return compare3 == 0 ? Integer.compare(this.f598d, c2722h.f598d) : compare3;
            }
            return compare2;
        }
        return compare;
    }

    /* renamed from: m */
    public int m813m() {
        return this.f598d;
    }

    /* renamed from: n */
    public int m812n() {
        return this.f597c;
    }

    /* renamed from: r */
    public C2722h m808r(long j) {
        return j == 0 ? this : m815k(((((int) (j % 24)) + this.f595a) + 24) % 24, this.f596b, this.f597c, this.f598d);
    }

    /* renamed from: s */
    public C2722h m807s(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.f595a * 60) + this.f596b;
        int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
        return i == i2 ? this : m815k(i2 / 60, i2 % 60, this.f597c, this.f598d);
    }

    /* renamed from: t */
    public C2722h m806t(long j) {
        if (j == 0) {
            return this;
        }
        long m804v = m804v();
        long j2 = (((j % 86400000000000L) + m804v) + 86400000000000L) % 86400000000000L;
        return m804v == j2 ? this : m815k((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / C0485C.NANOS_PER_SECOND) % 60), (int) (j2 % C0485C.NANOS_PER_SECOND));
    }

    public String toString() {
        int i;
        StringBuilder sb = new StringBuilder(18);
        byte b = this.f595a;
        byte b2 = this.f596b;
        byte b3 = this.f597c;
        int i2 = this.f598d;
        sb.append(b < 10 ? SessionDescription.SUPPORTED_SDP_VERSION : "");
        sb.append((int) b);
        sb.append(b2 < 10 ? ":0" : ":");
        sb.append((int) b2);
        if (b3 > 0 || i2 > 0) {
            sb.append(b3 >= 10 ? ":" : ":0");
            sb.append((int) b3);
            if (i2 > 0) {
                sb.append('.');
                int i3 = 1000000;
                if (i2 % 1000000 == 0) {
                    i = (i2 / 1000000) + 1000;
                } else {
                    if (i2 % 1000 == 0) {
                        i2 /= 1000;
                    } else {
                        i3 = 1000000000;
                    }
                    i = i2 + i3;
                }
                sb.append(Integer.toString(i).substring(1));
            }
        }
        return sb.toString();
    }

    /* renamed from: u */
    public C2722h m805u(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.f596b * 60) + (this.f595a * 3600) + this.f597c;
        int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
        return i == i2 ? this : m815k(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.f598d);
    }

    /* renamed from: v */
    public long m804v() {
        return (this.f597c * C0485C.NANOS_PER_SECOND) + (this.f596b * 60000000000L) + (this.f595a * 3600000000000L) + this.f598d;
    }

    /* renamed from: w */
    public int m803w() {
        return (this.f596b * 60) + (this.f595a * 3600) + this.f597c;
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: x */
    public C2722h mo743b(InterfaceC2748o interfaceC2748o, long j) {
        int i;
        long j2;
        long j3;
        if (interfaceC2748o instanceof EnumC2734a) {
            EnumC2734a enumC2734a = (EnumC2734a) interfaceC2748o;
            enumC2734a.m753j(j);
            switch (AbstractC2721g.f589a[enumC2734a.ordinal()]) {
                case 1:
                    i = (int) j;
                    return m800z(i);
                case 2:
                    return m809q(j);
                case 3:
                    i = ((int) j) * 1000;
                    return m800z(i);
                case 4:
                    j2 = 1000;
                    j *= j2;
                    return m809q(j);
                case 5:
                    i = ((int) j) * 1000000;
                    return m800z(i);
                case 6:
                    j2 = 1000000;
                    j *= j2;
                    return m809q(j);
                case 7:
                    int i2 = (int) j;
                    if (this.f597c != i2) {
                        EnumC2734a.SECOND_OF_MINUTE.m753j(i2);
                        return m815k(this.f595a, this.f596b, i2, this.f598d);
                    }
                    return this;
                case 8:
                    return m805u(j - m803w());
                case 9:
                    int i3 = (int) j;
                    if (this.f596b != i3) {
                        EnumC2734a.MINUTE_OF_HOUR.m753j(i3);
                        return m815k(this.f595a, i3, this.f597c, this.f598d);
                    }
                    return this;
                case 10:
                    return m807s(j - ((this.f595a * 60) + this.f596b));
                case 11:
                    j3 = j - (this.f595a % 12);
                    return m808r(j3);
                case 12:
                    if (j == 12) {
                        j = 0;
                    }
                    j3 = j - (this.f595a % 12);
                    return m808r(j3);
                case 13:
                    return m801y((int) j);
                case 14:
                    if (j == 24) {
                        j = 0;
                    }
                    return m801y((int) j);
                case 15:
                    j3 = (j - (this.f595a / 12)) * 12;
                    return m808r(j3);
                default:
                    throw new C2759z("Unsupported field: " + interfaceC2748o);
            }
        }
        return (C2722h) interfaceC2748o.mo726f(this, j);
    }

    /* renamed from: y */
    public C2722h m801y(int i) {
        if (this.f595a == i) {
            return this;
        }
        EnumC2734a.HOUR_OF_DAY.m753j(i);
        return m815k(i, this.f596b, this.f597c, this.f598d);
    }

    /* renamed from: z */
    public C2722h m800z(int i) {
        if (this.f598d == i) {
            return this;
        }
        EnumC2734a.NANO_OF_SECOND.m753j(i);
        return m815k(this.f595a, this.f596b, this.f597c, i);
    }
}
