package p033j$.time;

import com.google.android.exoplayer2.C0485C;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.io.Serializable;
import java.util.Objects;
import p033j$.time.temporal.AbstractC2744n;
import p033j$.time.temporal.AbstractC2753w;
import p033j$.time.temporal.C2730A;
import p033j$.time.temporal.C2746p;
import p033j$.time.temporal.C2747q;
import p033j$.time.temporal.C2748r;
import p033j$.time.temporal.C2749s;
import p033j$.time.temporal.C2750t;
import p033j$.time.temporal.C2751u;
import p033j$.time.temporal.C2752v;
import p033j$.time.temporal.C2756z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2740j;
import p033j$.time.temporal.InterfaceC2742l;
import p033j$.time.temporal.InterfaceC2745o;
import p033j$.time.temporal.InterfaceC2754x;
import p033j$.time.temporal.InterfaceC2755y;
/* renamed from: j$.time.h */
/* loaded from: classes2.dex */
public final class C2719h implements InterfaceC2740j, InterfaceC2742l, Comparable, Serializable {

    /* renamed from: e */
    public static final C2719h f591e;

    /* renamed from: f */
    public static final C2719h f592f;

    /* renamed from: g */
    public static final C2719h f593g;

    /* renamed from: h */
    private static final C2719h[] f594h = new C2719h[24];

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
            C2719h[] c2719hArr = f594h;
            if (i >= c2719hArr.length) {
                f593g = c2719hArr[0];
                C2719h c2719h = c2719hArr[12];
                f591e = c2719hArr[0];
                f592f = new C2719h(23, 59, 59, 999999999);
                return;
            }
            c2719hArr[i] = new C2719h(i, 0, 0, 0);
            i++;
        }
    }

    private C2719h(int i, int i2, int i3, int i4) {
        this.f595a = (byte) i;
        this.f596b = (byte) i2;
        this.f597c = (byte) i3;
        this.f598d = i4;
    }

    /* renamed from: k */
    private static C2719h m815k(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? f594h[i] : new C2719h(i, i2, i3, i4);
    }

    /* renamed from: l */
    private int m814l(InterfaceC2745o interfaceC2745o) {
        switch (AbstractC2718g.f589a[((EnumC2731a) interfaceC2745o).ordinal()]) {
            case 1:
                return this.f598d;
            case 2:
                throw new C2756z("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.f598d / 1000;
            case 4:
                throw new C2756z("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
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
                throw new C2756z("Unsupported field: " + interfaceC2745o);
        }
    }

    /* renamed from: o */
    public static C2719h m811o(int i, int i2) {
        EnumC2731a.HOUR_OF_DAY.m753j(i);
        if (i2 == 0) {
            return f594h[i];
        }
        EnumC2731a.MINUTE_OF_HOUR.m753j(i2);
        return new C2719h(i, i2, 0, 0);
    }

    /* renamed from: p */
    public static C2719h m810p(int i, int i2, int i3, int i4) {
        EnumC2731a.HOUR_OF_DAY.m753j(i);
        EnumC2731a.MINUTE_OF_HOUR.m753j(i2);
        EnumC2731a.SECOND_OF_MINUTE.m753j(i3);
        EnumC2731a.NANO_OF_SECOND.m753j(i4);
        return m815k(i, i2, i3, i4);
    }

    /* renamed from: q */
    public static C2719h m809q(long j) {
        EnumC2731a.NANO_OF_DAY.m753j(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / C0485C.NANOS_PER_SECOND);
        return m815k(i, i2, i3, (int) (j3 - (i3 * C0485C.NANOS_PER_SECOND)));
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: a */
    public InterfaceC2740j mo744a(InterfaceC2742l interfaceC2742l) {
        boolean z = interfaceC2742l instanceof C2719h;
        InterfaceC2740j interfaceC2740j = interfaceC2742l;
        if (!z) {
            interfaceC2740j = ((C2687d) interfaceC2742l).mo736h(this);
        }
        return (C2719h) interfaceC2740j;
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: c */
    public int mo741c(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o instanceof EnumC2731a ? m814l(interfaceC2745o) : AbstractC2744n.m735a(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: d */
    public C2730A mo740d(InterfaceC2745o interfaceC2745o) {
        return AbstractC2744n.m733c(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: e */
    public long mo739e(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o instanceof EnumC2731a ? interfaceC2745o == EnumC2731a.NANO_OF_DAY ? m804v() : interfaceC2745o == EnumC2731a.MICRO_OF_DAY ? m804v() / 1000 : m814l(interfaceC2745o) : interfaceC2745o.mo728d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2719h) {
            C2719h c2719h = (C2719h) obj;
            return this.f595a == c2719h.f595a && this.f596b == c2719h.f596b && this.f597c == c2719h.f597c && this.f598d == c2719h.f598d;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: f */
    public InterfaceC2740j mo742f(long j, InterfaceC2755y interfaceC2755y) {
        long j2;
        long j3;
        if (!(interfaceC2755y instanceof ChronoUnit)) {
            ChronoUnit chronoUnit = (ChronoUnit) interfaceC2755y;
            Objects.requireNonNull(chronoUnit);
            return (C2719h) mo742f(j, chronoUnit);
        }
        switch (AbstractC2718g.f590b[((ChronoUnit) interfaceC2755y).ordinal()]) {
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
                throw new C2756z("Unsupported unit: " + interfaceC2755y);
        }
        return m808r(j);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: g */
    public Object mo738g(InterfaceC2754x interfaceC2754x) {
        int i = AbstractC2753w.f647a;
        if (interfaceC2754x == C2747q.f641a || interfaceC2754x == C2746p.f640a || interfaceC2754x == C2750t.f644a || interfaceC2754x == C2749s.f643a) {
            return null;
        }
        if (interfaceC2754x == C2752v.f646a) {
            return this;
        }
        if (interfaceC2754x == C2751u.f645a) {
            return null;
        }
        return interfaceC2754x == C2748r.f642a ? ChronoUnit.NANOS : interfaceC2754x.mo723a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2742l
    /* renamed from: h */
    public InterfaceC2740j mo736h(InterfaceC2740j interfaceC2740j) {
        return interfaceC2740j.mo743b(EnumC2731a.NANO_OF_DAY, m804v());
    }

    public int hashCode() {
        long m804v = m804v();
        return (int) (m804v ^ (m804v >>> 32));
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o instanceof EnumC2731a ? interfaceC2745o.mo730b() : interfaceC2745o != null && interfaceC2745o.mo727e(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(C2719h c2719h) {
        int compare = Integer.compare(this.f595a, c2719h.f595a);
        if (compare == 0) {
            int compare2 = Integer.compare(this.f596b, c2719h.f596b);
            if (compare2 == 0) {
                int compare3 = Integer.compare(this.f597c, c2719h.f597c);
                return compare3 == 0 ? Integer.compare(this.f598d, c2719h.f598d) : compare3;
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
    public C2719h m808r(long j) {
        return j == 0 ? this : m815k(((((int) (j % 24)) + this.f595a) + 24) % 24, this.f596b, this.f597c, this.f598d);
    }

    /* renamed from: s */
    public C2719h m807s(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.f595a * 60) + this.f596b;
        int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
        return i == i2 ? this : m815k(i2 / 60, i2 % 60, this.f597c, this.f598d);
    }

    /* renamed from: t */
    public C2719h m806t(long j) {
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
    public C2719h m805u(long j) {
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

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: x */
    public C2719h mo743b(InterfaceC2745o interfaceC2745o, long j) {
        int i;
        long j2;
        long j3;
        if (interfaceC2745o instanceof EnumC2731a) {
            EnumC2731a enumC2731a = (EnumC2731a) interfaceC2745o;
            enumC2731a.m753j(j);
            switch (AbstractC2718g.f589a[enumC2731a.ordinal()]) {
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
                        EnumC2731a.SECOND_OF_MINUTE.m753j(i2);
                        return m815k(this.f595a, this.f596b, i2, this.f598d);
                    }
                    return this;
                case 8:
                    return m805u(j - m803w());
                case 9:
                    int i3 = (int) j;
                    if (this.f596b != i3) {
                        EnumC2731a.MINUTE_OF_HOUR.m753j(i3);
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
                    throw new C2756z("Unsupported field: " + interfaceC2745o);
            }
        }
        return (C2719h) interfaceC2745o.mo726f(this, j);
    }

    /* renamed from: y */
    public C2719h m801y(int i) {
        if (this.f595a == i) {
            return this;
        }
        EnumC2731a.HOUR_OF_DAY.m753j(i);
        return m815k(i, this.f596b, this.f597c, this.f598d);
    }

    /* renamed from: z */
    public C2719h m800z(int i) {
        if (this.f598d == i) {
            return this;
        }
        EnumC2731a.NANO_OF_SECOND.m753j(i);
        return m815k(this.f595a, this.f596b, this.f597c, i);
    }
}
