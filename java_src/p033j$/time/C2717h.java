package p033j$.time;

import com.google.android.exoplayer2.C0483C;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.io.Serializable;
import java.util.Objects;
import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2728A;
import p033j$.time.temporal.C2744p;
import p033j$.time.temporal.C2745q;
import p033j$.time.temporal.C2746r;
import p033j$.time.temporal.C2747s;
import p033j$.time.temporal.C2748t;
import p033j$.time.temporal.C2749u;
import p033j$.time.temporal.C2750v;
import p033j$.time.temporal.C2754z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2738j;
import p033j$.time.temporal.InterfaceC2740l;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
import p033j$.time.temporal.InterfaceC2753y;
/* renamed from: j$.time.h */
/* loaded from: classes2.dex */
public final class C2717h implements InterfaceC2738j, InterfaceC2740l, Comparable, Serializable {

    /* renamed from: e */
    public static final C2717h f591e;

    /* renamed from: f */
    public static final C2717h f592f;

    /* renamed from: g */
    public static final C2717h f593g;

    /* renamed from: h */
    private static final C2717h[] f594h = new C2717h[24];

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
            C2717h[] c2717hArr = f594h;
            if (i >= c2717hArr.length) {
                f593g = c2717hArr[0];
                C2717h c2717h = c2717hArr[12];
                f591e = c2717hArr[0];
                f592f = new C2717h(23, 59, 59, 999999999);
                return;
            }
            c2717hArr[i] = new C2717h(i, 0, 0, 0);
            i++;
        }
    }

    private C2717h(int i, int i2, int i3, int i4) {
        this.f595a = (byte) i;
        this.f596b = (byte) i2;
        this.f597c = (byte) i3;
        this.f598d = i4;
    }

    /* renamed from: k */
    private static C2717h m818k(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? f594h[i] : new C2717h(i, i2, i3, i4);
    }

    /* renamed from: l */
    private int m817l(InterfaceC2743o interfaceC2743o) {
        switch (AbstractC2716g.f589a[((EnumC2729a) interfaceC2743o).ordinal()]) {
            case 1:
                return this.f598d;
            case 2:
                throw new C2754z("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.f598d / 1000;
            case 4:
                throw new C2754z("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.f598d / 1000000;
            case 6:
                return (int) (m807v() / 1000000);
            case 7:
                return this.f597c;
            case 8:
                return m806w();
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
                throw new C2754z("Unsupported field: " + interfaceC2743o);
        }
    }

    /* renamed from: o */
    public static C2717h m814o(int i, int i2) {
        EnumC2729a.HOUR_OF_DAY.m756j(i);
        if (i2 == 0) {
            return f594h[i];
        }
        EnumC2729a.MINUTE_OF_HOUR.m756j(i2);
        return new C2717h(i, i2, 0, 0);
    }

    /* renamed from: p */
    public static C2717h m813p(int i, int i2, int i3, int i4) {
        EnumC2729a.HOUR_OF_DAY.m756j(i);
        EnumC2729a.MINUTE_OF_HOUR.m756j(i2);
        EnumC2729a.SECOND_OF_MINUTE.m756j(i3);
        EnumC2729a.NANO_OF_SECOND.m756j(i4);
        return m818k(i, i2, i3, i4);
    }

    /* renamed from: q */
    public static C2717h m812q(long j) {
        EnumC2729a.NANO_OF_DAY.m756j(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / C0483C.NANOS_PER_SECOND);
        return m818k(i, i2, i3, (int) (j3 - (i3 * C0483C.NANOS_PER_SECOND)));
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: a */
    public InterfaceC2738j mo747a(InterfaceC2740l interfaceC2740l) {
        boolean z = interfaceC2740l instanceof C2717h;
        InterfaceC2738j interfaceC2738j = interfaceC2740l;
        if (!z) {
            interfaceC2738j = ((C2685d) interfaceC2740l).mo739h(this);
        }
        return (C2717h) interfaceC2738j;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public int mo744c(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? m817l(interfaceC2743o) : AbstractC2742n.m738a(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        return AbstractC2742n.m736c(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? interfaceC2743o == EnumC2729a.NANO_OF_DAY ? m807v() : interfaceC2743o == EnumC2729a.MICRO_OF_DAY ? m807v() / 1000 : m817l(interfaceC2743o) : interfaceC2743o.mo731d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2717h) {
            C2717h c2717h = (C2717h) obj;
            return this.f595a == c2717h.f595a && this.f596b == c2717h.f596b && this.f597c == c2717h.f597c && this.f598d == c2717h.f598d;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: f */
    public InterfaceC2738j mo745f(long j, InterfaceC2753y interfaceC2753y) {
        long j2;
        long j3;
        if (!(interfaceC2753y instanceof ChronoUnit)) {
            ChronoUnit chronoUnit = (ChronoUnit) interfaceC2753y;
            Objects.requireNonNull(chronoUnit);
            return (C2717h) mo745f(j, chronoUnit);
        }
        switch (AbstractC2716g.f590b[((ChronoUnit) interfaceC2753y).ordinal()]) {
            case 1:
                return m809t(j);
            case 2:
                j2 = j % 86400000000L;
                j3 = 1000;
                j = j2 * j3;
                return m809t(j);
            case 3:
                j2 = j % 86400000;
                j3 = 1000000;
                j = j2 * j3;
                return m809t(j);
            case 4:
                return m808u(j);
            case 5:
                return m810s(j);
            case 6:
                break;
            case 7:
                j = (j % 2) * 12;
                break;
            default:
                throw new C2754z("Unsupported unit: " + interfaceC2753y);
        }
        return m811r(j);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: g */
    public Object mo741g(InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        if (interfaceC2752x == C2745q.f641a || interfaceC2752x == C2744p.f640a || interfaceC2752x == C2748t.f644a || interfaceC2752x == C2747s.f643a) {
            return null;
        }
        if (interfaceC2752x == C2750v.f646a) {
            return this;
        }
        if (interfaceC2752x == C2749u.f645a) {
            return null;
        }
        return interfaceC2752x == C2746r.f642a ? ChronoUnit.NANOS : interfaceC2752x.mo726a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2740l
    /* renamed from: h */
    public InterfaceC2738j mo739h(InterfaceC2738j interfaceC2738j) {
        return interfaceC2738j.mo746b(EnumC2729a.NANO_OF_DAY, m807v());
    }

    public int hashCode() {
        long m807v = m807v();
        return (int) (m807v ^ (m807v >>> 32));
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? interfaceC2743o.mo733b() : interfaceC2743o != null && interfaceC2743o.mo730e(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(C2717h c2717h) {
        int compare = Integer.compare(this.f595a, c2717h.f595a);
        if (compare == 0) {
            int compare2 = Integer.compare(this.f596b, c2717h.f596b);
            if (compare2 == 0) {
                int compare3 = Integer.compare(this.f597c, c2717h.f597c);
                return compare3 == 0 ? Integer.compare(this.f598d, c2717h.f598d) : compare3;
            }
            return compare2;
        }
        return compare;
    }

    /* renamed from: m */
    public int m816m() {
        return this.f598d;
    }

    /* renamed from: n */
    public int m815n() {
        return this.f597c;
    }

    /* renamed from: r */
    public C2717h m811r(long j) {
        return j == 0 ? this : m818k(((((int) (j % 24)) + this.f595a) + 24) % 24, this.f596b, this.f597c, this.f598d);
    }

    /* renamed from: s */
    public C2717h m810s(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.f595a * 60) + this.f596b;
        int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
        return i == i2 ? this : m818k(i2 / 60, i2 % 60, this.f597c, this.f598d);
    }

    /* renamed from: t */
    public C2717h m809t(long j) {
        if (j == 0) {
            return this;
        }
        long m807v = m807v();
        long j2 = (((j % 86400000000000L) + m807v) + 86400000000000L) % 86400000000000L;
        return m807v == j2 ? this : m818k((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / C0483C.NANOS_PER_SECOND) % 60), (int) (j2 % C0483C.NANOS_PER_SECOND));
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
    public C2717h m808u(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.f596b * 60) + (this.f595a * 3600) + this.f597c;
        int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
        return i == i2 ? this : m818k(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.f598d);
    }

    /* renamed from: v */
    public long m807v() {
        return (this.f597c * C0483C.NANOS_PER_SECOND) + (this.f596b * 60000000000L) + (this.f595a * 3600000000000L) + this.f598d;
    }

    /* renamed from: w */
    public int m806w() {
        return (this.f596b * 60) + (this.f595a * 3600) + this.f597c;
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: x */
    public C2717h mo746b(InterfaceC2743o interfaceC2743o, long j) {
        int i;
        long j2;
        long j3;
        if (interfaceC2743o instanceof EnumC2729a) {
            EnumC2729a enumC2729a = (EnumC2729a) interfaceC2743o;
            enumC2729a.m756j(j);
            switch (AbstractC2716g.f589a[enumC2729a.ordinal()]) {
                case 1:
                    i = (int) j;
                    return m803z(i);
                case 2:
                    return m812q(j);
                case 3:
                    i = ((int) j) * 1000;
                    return m803z(i);
                case 4:
                    j2 = 1000;
                    j *= j2;
                    return m812q(j);
                case 5:
                    i = ((int) j) * 1000000;
                    return m803z(i);
                case 6:
                    j2 = 1000000;
                    j *= j2;
                    return m812q(j);
                case 7:
                    int i2 = (int) j;
                    if (this.f597c != i2) {
                        EnumC2729a.SECOND_OF_MINUTE.m756j(i2);
                        return m818k(this.f595a, this.f596b, i2, this.f598d);
                    }
                    return this;
                case 8:
                    return m808u(j - m806w());
                case 9:
                    int i3 = (int) j;
                    if (this.f596b != i3) {
                        EnumC2729a.MINUTE_OF_HOUR.m756j(i3);
                        return m818k(this.f595a, i3, this.f597c, this.f598d);
                    }
                    return this;
                case 10:
                    return m810s(j - ((this.f595a * 60) + this.f596b));
                case 11:
                    j3 = j - (this.f595a % 12);
                    return m811r(j3);
                case 12:
                    if (j == 12) {
                        j = 0;
                    }
                    j3 = j - (this.f595a % 12);
                    return m811r(j3);
                case 13:
                    return m804y((int) j);
                case 14:
                    if (j == 24) {
                        j = 0;
                    }
                    return m804y((int) j);
                case 15:
                    j3 = (j - (this.f595a / 12)) * 12;
                    return m811r(j3);
                default:
                    throw new C2754z("Unsupported field: " + interfaceC2743o);
            }
        }
        return (C2717h) interfaceC2743o.mo729f(this, j);
    }

    /* renamed from: y */
    public C2717h m804y(int i) {
        if (this.f595a == i) {
            return this;
        }
        EnumC2729a.HOUR_OF_DAY.m756j(i);
        return m818k(i, this.f596b, this.f597c, this.f598d);
    }

    /* renamed from: z */
    public C2717h m803z(int i) {
        if (this.f598d == i) {
            return this;
        }
        EnumC2729a.NANO_OF_SECOND.m756j(i);
        return m818k(this.f595a, this.f596b, this.f597c, i);
    }
}
