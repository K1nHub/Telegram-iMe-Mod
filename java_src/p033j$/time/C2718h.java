package p033j$.time;

import com.google.android.exoplayer2.C0479C;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.io.Serializable;
import java.util.Objects;
import p033j$.time.temporal.AbstractC2743n;
import p033j$.time.temporal.AbstractC2752w;
import p033j$.time.temporal.C2729A;
import p033j$.time.temporal.C2745p;
import p033j$.time.temporal.C2746q;
import p033j$.time.temporal.C2747r;
import p033j$.time.temporal.C2748s;
import p033j$.time.temporal.C2749t;
import p033j$.time.temporal.C2750u;
import p033j$.time.temporal.C2751v;
import p033j$.time.temporal.C2755z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2739j;
import p033j$.time.temporal.InterfaceC2741l;
import p033j$.time.temporal.InterfaceC2744o;
import p033j$.time.temporal.InterfaceC2753x;
import p033j$.time.temporal.InterfaceC2754y;
/* renamed from: j$.time.h */
/* loaded from: classes2.dex */
public final class C2718h implements InterfaceC2739j, InterfaceC2741l, Comparable, Serializable {

    /* renamed from: e */
    public static final C2718h f591e;

    /* renamed from: f */
    public static final C2718h f592f;

    /* renamed from: g */
    public static final C2718h f593g;

    /* renamed from: h */
    private static final C2718h[] f594h = new C2718h[24];

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
            C2718h[] c2718hArr = f594h;
            if (i >= c2718hArr.length) {
                f593g = c2718hArr[0];
                C2718h c2718h = c2718hArr[12];
                f591e = c2718hArr[0];
                f592f = new C2718h(23, 59, 59, 999999999);
                return;
            }
            c2718hArr[i] = new C2718h(i, 0, 0, 0);
            i++;
        }
    }

    private C2718h(int i, int i2, int i3, int i4) {
        this.f595a = (byte) i;
        this.f596b = (byte) i2;
        this.f597c = (byte) i3;
        this.f598d = i4;
    }

    /* renamed from: k */
    private static C2718h m814k(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? f594h[i] : new C2718h(i, i2, i3, i4);
    }

    /* renamed from: l */
    private int m813l(InterfaceC2744o interfaceC2744o) {
        switch (AbstractC2717g.f589a[((EnumC2730a) interfaceC2744o).ordinal()]) {
            case 1:
                return this.f598d;
            case 2:
                throw new C2755z("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.f598d / 1000;
            case 4:
                throw new C2755z("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.f598d / 1000000;
            case 6:
                return (int) (m803v() / 1000000);
            case 7:
                return this.f597c;
            case 8:
                return m802w();
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
                throw new C2755z("Unsupported field: " + interfaceC2744o);
        }
    }

    /* renamed from: o */
    public static C2718h m810o(int i, int i2) {
        EnumC2730a.HOUR_OF_DAY.m752j(i);
        if (i2 == 0) {
            return f594h[i];
        }
        EnumC2730a.MINUTE_OF_HOUR.m752j(i2);
        return new C2718h(i, i2, 0, 0);
    }

    /* renamed from: p */
    public static C2718h m809p(int i, int i2, int i3, int i4) {
        EnumC2730a.HOUR_OF_DAY.m752j(i);
        EnumC2730a.MINUTE_OF_HOUR.m752j(i2);
        EnumC2730a.SECOND_OF_MINUTE.m752j(i3);
        EnumC2730a.NANO_OF_SECOND.m752j(i4);
        return m814k(i, i2, i3, i4);
    }

    /* renamed from: q */
    public static C2718h m808q(long j) {
        EnumC2730a.NANO_OF_DAY.m752j(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / C0479C.NANOS_PER_SECOND);
        return m814k(i, i2, i3, (int) (j3 - (i3 * C0479C.NANOS_PER_SECOND)));
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: a */
    public InterfaceC2739j mo743a(InterfaceC2741l interfaceC2741l) {
        boolean z = interfaceC2741l instanceof C2718h;
        InterfaceC2739j interfaceC2739j = interfaceC2741l;
        if (!z) {
            interfaceC2739j = ((C2686d) interfaceC2741l).mo735h(this);
        }
        return (C2718h) interfaceC2739j;
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public int mo740c(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? m813l(interfaceC2744o) : AbstractC2743n.m734a(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        return AbstractC2743n.m732c(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? interfaceC2744o == EnumC2730a.NANO_OF_DAY ? m803v() : interfaceC2744o == EnumC2730a.MICRO_OF_DAY ? m803v() / 1000 : m813l(interfaceC2744o) : interfaceC2744o.mo727d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2718h) {
            C2718h c2718h = (C2718h) obj;
            return this.f595a == c2718h.f595a && this.f596b == c2718h.f596b && this.f597c == c2718h.f597c && this.f598d == c2718h.f598d;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: f */
    public InterfaceC2739j mo741f(long j, InterfaceC2754y interfaceC2754y) {
        long j2;
        long j3;
        if (!(interfaceC2754y instanceof ChronoUnit)) {
            ChronoUnit chronoUnit = (ChronoUnit) interfaceC2754y;
            Objects.requireNonNull(chronoUnit);
            return (C2718h) mo741f(j, chronoUnit);
        }
        switch (AbstractC2717g.f590b[((ChronoUnit) interfaceC2754y).ordinal()]) {
            case 1:
                return m805t(j);
            case 2:
                j2 = j % 86400000000L;
                j3 = 1000;
                j = j2 * j3;
                return m805t(j);
            case 3:
                j2 = j % 86400000;
                j3 = 1000000;
                j = j2 * j3;
                return m805t(j);
            case 4:
                return m804u(j);
            case 5:
                return m806s(j);
            case 6:
                break;
            case 7:
                j = (j % 2) * 12;
                break;
            default:
                throw new C2755z("Unsupported unit: " + interfaceC2754y);
        }
        return m807r(j);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: g */
    public Object mo737g(InterfaceC2753x interfaceC2753x) {
        int i = AbstractC2752w.f647a;
        if (interfaceC2753x == C2746q.f641a || interfaceC2753x == C2745p.f640a || interfaceC2753x == C2749t.f644a || interfaceC2753x == C2748s.f643a) {
            return null;
        }
        if (interfaceC2753x == C2751v.f646a) {
            return this;
        }
        if (interfaceC2753x == C2750u.f645a) {
            return null;
        }
        return interfaceC2753x == C2747r.f642a ? ChronoUnit.NANOS : interfaceC2753x.mo722a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2741l
    /* renamed from: h */
    public InterfaceC2739j mo735h(InterfaceC2739j interfaceC2739j) {
        return interfaceC2739j.mo742b(EnumC2730a.NANO_OF_DAY, m803v());
    }

    public int hashCode() {
        long m803v = m803v();
        return (int) (m803v ^ (m803v >>> 32));
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? interfaceC2744o.mo729b() : interfaceC2744o != null && interfaceC2744o.mo726e(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(C2718h c2718h) {
        int compare = Integer.compare(this.f595a, c2718h.f595a);
        if (compare == 0) {
            int compare2 = Integer.compare(this.f596b, c2718h.f596b);
            if (compare2 == 0) {
                int compare3 = Integer.compare(this.f597c, c2718h.f597c);
                return compare3 == 0 ? Integer.compare(this.f598d, c2718h.f598d) : compare3;
            }
            return compare2;
        }
        return compare;
    }

    /* renamed from: m */
    public int m812m() {
        return this.f598d;
    }

    /* renamed from: n */
    public int m811n() {
        return this.f597c;
    }

    /* renamed from: r */
    public C2718h m807r(long j) {
        return j == 0 ? this : m814k(((((int) (j % 24)) + this.f595a) + 24) % 24, this.f596b, this.f597c, this.f598d);
    }

    /* renamed from: s */
    public C2718h m806s(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.f595a * 60) + this.f596b;
        int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
        return i == i2 ? this : m814k(i2 / 60, i2 % 60, this.f597c, this.f598d);
    }

    /* renamed from: t */
    public C2718h m805t(long j) {
        if (j == 0) {
            return this;
        }
        long m803v = m803v();
        long j2 = (((j % 86400000000000L) + m803v) + 86400000000000L) % 86400000000000L;
        return m803v == j2 ? this : m814k((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / C0479C.NANOS_PER_SECOND) % 60), (int) (j2 % C0479C.NANOS_PER_SECOND));
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
    public C2718h m804u(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.f596b * 60) + (this.f595a * 3600) + this.f597c;
        int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
        return i == i2 ? this : m814k(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.f598d);
    }

    /* renamed from: v */
    public long m803v() {
        return (this.f597c * C0479C.NANOS_PER_SECOND) + (this.f596b * 60000000000L) + (this.f595a * 3600000000000L) + this.f598d;
    }

    /* renamed from: w */
    public int m802w() {
        return (this.f596b * 60) + (this.f595a * 3600) + this.f597c;
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: x */
    public C2718h mo742b(InterfaceC2744o interfaceC2744o, long j) {
        int i;
        long j2;
        long j3;
        if (interfaceC2744o instanceof EnumC2730a) {
            EnumC2730a enumC2730a = (EnumC2730a) interfaceC2744o;
            enumC2730a.m752j(j);
            switch (AbstractC2717g.f589a[enumC2730a.ordinal()]) {
                case 1:
                    i = (int) j;
                    return m799z(i);
                case 2:
                    return m808q(j);
                case 3:
                    i = ((int) j) * 1000;
                    return m799z(i);
                case 4:
                    j2 = 1000;
                    j *= j2;
                    return m808q(j);
                case 5:
                    i = ((int) j) * 1000000;
                    return m799z(i);
                case 6:
                    j2 = 1000000;
                    j *= j2;
                    return m808q(j);
                case 7:
                    int i2 = (int) j;
                    if (this.f597c != i2) {
                        EnumC2730a.SECOND_OF_MINUTE.m752j(i2);
                        return m814k(this.f595a, this.f596b, i2, this.f598d);
                    }
                    return this;
                case 8:
                    return m804u(j - m802w());
                case 9:
                    int i3 = (int) j;
                    if (this.f596b != i3) {
                        EnumC2730a.MINUTE_OF_HOUR.m752j(i3);
                        return m814k(this.f595a, i3, this.f597c, this.f598d);
                    }
                    return this;
                case 10:
                    return m806s(j - ((this.f595a * 60) + this.f596b));
                case 11:
                    j3 = j - (this.f595a % 12);
                    return m807r(j3);
                case 12:
                    if (j == 12) {
                        j = 0;
                    }
                    j3 = j - (this.f595a % 12);
                    return m807r(j3);
                case 13:
                    return m800y((int) j);
                case 14:
                    if (j == 24) {
                        j = 0;
                    }
                    return m800y((int) j);
                case 15:
                    j3 = (j - (this.f595a / 12)) * 12;
                    return m807r(j3);
                default:
                    throw new C2755z("Unsupported field: " + interfaceC2744o);
            }
        }
        return (C2718h) interfaceC2744o.mo725f(this, j);
    }

    /* renamed from: y */
    public C2718h m800y(int i) {
        if (this.f595a == i) {
            return this;
        }
        EnumC2730a.HOUR_OF_DAY.m752j(i);
        return m814k(i, this.f596b, this.f597c, this.f598d);
    }

    /* renamed from: z */
    public C2718h m799z(int i) {
        if (this.f598d == i) {
            return this;
        }
        EnumC2730a.NANO_OF_SECOND.m752j(i);
        return m814k(this.f595a, this.f596b, this.f597c, i);
    }
}
