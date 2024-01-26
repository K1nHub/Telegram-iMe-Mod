package p033j$.time;

import com.google.android.exoplayer2.C0483C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2668d;
import p033j$.time.chrono.C2684h;
import p033j$.time.chrono.InterfaceC2678b;
import p033j$.time.chrono.InterfaceC2679c;
import p033j$.time.chrono.InterfaceC2683g;
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
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2738j;
import p033j$.time.temporal.InterfaceC2740l;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
import p033j$.time.temporal.InterfaceC2753y;
/* renamed from: j$.time.f */
/* loaded from: classes2.dex */
public final class C2687f implements InterfaceC2738j, InterfaceC2740l, InterfaceC2679c, Serializable {

    /* renamed from: c */
    public static final C2687f f508c = m916t(C2685d.f502d, C2717h.f591e);

    /* renamed from: d */
    public static final C2687f f509d = m916t(C2685d.f503e, C2717h.f592f);

    /* renamed from: a */
    private final C2685d f510a;

    /* renamed from: b */
    private final C2717h f511b;

    private C2687f(C2685d c2685d, C2717h c2717h) {
        this.f510a = c2685d;
        this.f511b = c2717h;
    }

    /* renamed from: E */
    private C2687f m929E(C2685d c2685d, C2717h c2717h) {
        return (this.f510a == c2685d && this.f511b == c2717h) ? this : new C2687f(c2685d, c2717h);
    }

    /* renamed from: k */
    private int m925k(C2687f c2687f) {
        int m949k = this.f510a.m949k(c2687f.f510a);
        return m949k == 0 ? this.f511b.compareTo(c2687f.f511b) : m949k;
    }

    /* renamed from: r */
    public static C2687f m918r(int i, int i2, int i3, int i4, int i5) {
        return new C2687f(C2685d.m942r(i, i2, i3), C2717h.m814o(i4, i5));
    }

    /* renamed from: s */
    public static C2687f m917s(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new C2687f(C2685d.m942r(i, i2, i3), C2717h.m813p(i4, i5, i6, i7));
    }

    /* renamed from: t */
    public static C2687f m916t(C2685d c2685d, C2717h c2717h) {
        Objects.requireNonNull(c2685d, "date");
        Objects.requireNonNull(c2717h, "time");
        return new C2687f(c2685d, c2717h);
    }

    /* renamed from: u */
    public static C2687f m915u(long j, int i, C2724o c2724o) {
        long m788p;
        Objects.requireNonNull(c2724o, "offset");
        long j2 = i;
        EnumC2729a.NANO_OF_SECOND.m756j(j2);
        return new C2687f(C2685d.m941s(AbstractC2668d.m991e(j + c2724o.m788p(), 86400L)), C2717h.m812q((((int) AbstractC2668d.m992d(m788p, 86400L)) * C0483C.NANOS_PER_SECOND) + j2));
    }

    /* renamed from: z */
    private C2687f m910z(C2685d c2685d, long j, long j2, long j3, long j4, int i) {
        C2717h m812q;
        C2685d c2685d2 = c2685d;
        if ((j | j2 | j3 | j4) == 0) {
            m812q = this.f511b;
        } else {
            long j5 = i;
            long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * C0483C.NANOS_PER_SECOND) + (j4 % 86400000000000L);
            long m807v = this.f511b.m807v();
            long j7 = (j6 * j5) + m807v;
            long m991e = AbstractC2668d.m991e(j7, 86400000000000L) + (((j / 24) + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L)) * j5);
            long m992d = AbstractC2668d.m992d(j7, 86400000000000L);
            m812q = m992d == m807v ? this.f511b : C2717h.m812q(m992d);
            c2685d2 = c2685d2.m938v(m991e);
        }
        return m929E(c2685d2, m812q);
    }

    /* renamed from: A */
    public long m933A(C2724o c2724o) {
        Objects.requireNonNull(c2724o, "offset");
        return ((((C2685d) m931C()).m955A() * 86400) + m930D().m806w()) - c2724o.m788p();
    }

    /* renamed from: B */
    public C2685d m932B() {
        return this.f510a;
    }

    /* renamed from: C */
    public InterfaceC2678b m931C() {
        return this.f510a;
    }

    /* renamed from: D */
    public C2717h m930D() {
        return this.f511b;
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: F */
    public C2687f mo747a(InterfaceC2740l interfaceC2740l) {
        return interfaceC2740l instanceof C2685d ? m929E((C2685d) interfaceC2740l, this.f511b) : interfaceC2740l instanceof C2717h ? m929E(this.f510a, (C2717h) interfaceC2740l) : interfaceC2740l instanceof C2687f ? (C2687f) interfaceC2740l : (C2687f) interfaceC2740l.mo739h(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: G */
    public C2687f mo746b(InterfaceC2743o interfaceC2743o, long j) {
        return interfaceC2743o instanceof EnumC2729a ? ((EnumC2729a) interfaceC2743o).mo733b() ? m929E(this.f510a, this.f511b.mo746b(interfaceC2743o, j)) : m929E(this.f510a.mo746b(interfaceC2743o, j), this.f511b) : (C2687f) interfaceC2743o.mo729f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public int mo744c(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? ((EnumC2729a) interfaceC2743o).mo733b() ? this.f511b.mo744c(interfaceC2743o) : this.f510a.mo744c(interfaceC2743o) : AbstractC2742n.m738a(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o instanceof EnumC2729a) {
            if (((EnumC2729a) interfaceC2743o).mo733b()) {
                C2717h c2717h = this.f511b;
                Objects.requireNonNull(c2717h);
                return AbstractC2742n.m736c(c2717h, interfaceC2743o);
            }
            return this.f510a.mo743d(interfaceC2743o);
        }
        return interfaceC2743o.mo728g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? ((EnumC2729a) interfaceC2743o).mo733b() ? this.f511b.mo742e(interfaceC2743o) : this.f510a.mo742e(interfaceC2743o) : interfaceC2743o.mo731d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2687f) {
            C2687f c2687f = (C2687f) obj;
            return this.f510a.equals(c2687f.f510a) && this.f511b.equals(c2687f.f511b);
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: g */
    public Object mo741g(InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        if (interfaceC2752x == C2749u.f645a) {
            return this.f510a;
        }
        if (interfaceC2752x == C2744p.f640a || interfaceC2752x == C2748t.f644a || interfaceC2752x == C2747s.f643a) {
            return null;
        }
        if (interfaceC2752x == C2750v.f646a) {
            return m930D();
        }
        if (interfaceC2752x != C2745q.f641a) {
            return interfaceC2752x == C2746r.f642a ? ChronoUnit.NANOS : interfaceC2752x.mo726a(this);
        }
        m924l();
        return C2684h.f501a;
    }

    @Override // p033j$.time.temporal.InterfaceC2740l
    /* renamed from: h */
    public InterfaceC2738j mo739h(InterfaceC2738j interfaceC2738j) {
        return interfaceC2738j.mo746b(EnumC2729a.EPOCH_DAY, this.f510a.m955A()).mo746b(EnumC2729a.NANO_OF_DAY, this.f511b.m807v());
    }

    public int hashCode() {
        return this.f510a.hashCode() ^ this.f511b.hashCode();
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        if (!(interfaceC2743o instanceof EnumC2729a)) {
            return interfaceC2743o != null && interfaceC2743o.mo730e(this);
        }
        EnumC2729a enumC2729a = (EnumC2729a) interfaceC2743o;
        return enumC2729a.mo727h() || enumC2729a.mo733b();
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(InterfaceC2679c interfaceC2679c) {
        if (interfaceC2679c instanceof C2687f) {
            return m925k((C2687f) interfaceC2679c);
        }
        C2687f c2687f = (C2687f) interfaceC2679c;
        int compareTo = ((C2685d) m931C()).compareTo(c2687f.m931C());
        if (compareTo == 0) {
            int compareTo2 = m930D().compareTo(c2687f.m930D());
            if (compareTo2 == 0) {
                m924l();
                C2684h c2684h = C2684h.f501a;
                c2687f.m924l();
                return 0;
            }
            return compareTo2;
        }
        return compareTo;
    }

    /* renamed from: l */
    public InterfaceC2683g m924l() {
        Objects.requireNonNull((C2685d) m931C());
        return C2684h.f501a;
    }

    /* renamed from: m */
    public int m923m() {
        return this.f511b.m816m();
    }

    /* renamed from: n */
    public int m922n() {
        return this.f511b.m815n();
    }

    /* renamed from: o */
    public int m921o() {
        return this.f510a.m944p();
    }

    /* renamed from: p */
    public boolean m920p(InterfaceC2679c interfaceC2679c) {
        if (interfaceC2679c instanceof C2687f) {
            return m925k((C2687f) interfaceC2679c) > 0;
        }
        C2687f c2687f = (C2687f) interfaceC2679c;
        int i = (((C2685d) m931C()).m955A() > ((C2685d) c2687f.m931C()).m955A() ? 1 : (((C2685d) m931C()).m955A() == ((C2685d) c2687f.m931C()).m955A() ? 0 : -1));
        return i > 0 || (i == 0 && m930D().m807v() > c2687f.m930D().m807v());
    }

    /* renamed from: q */
    public boolean m919q(InterfaceC2679c interfaceC2679c) {
        if (interfaceC2679c instanceof C2687f) {
            return m925k((C2687f) interfaceC2679c) < 0;
        }
        C2687f c2687f = (C2687f) interfaceC2679c;
        int i = (((C2685d) m931C()).m955A() > ((C2685d) c2687f.m931C()).m955A() ? 1 : (((C2685d) m931C()).m955A() == ((C2685d) c2687f.m931C()).m955A() ? 0 : -1));
        return i < 0 || (i == 0 && m930D().m807v() < c2687f.m930D().m807v());
    }

    public String toString() {
        return this.f510a.toString() + 'T' + this.f511b.toString();
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: v */
    public C2687f mo745f(long j, InterfaceC2753y interfaceC2753y) {
        if (interfaceC2753y instanceof ChronoUnit) {
            switch (AbstractC2686e.f507a[((ChronoUnit) interfaceC2753y).ordinal()]) {
                case 1:
                    return m912x(j);
                case 2:
                    return m913w(j / 86400000000L).m912x((j % 86400000000L) * 1000);
                case 3:
                    return m913w(j / 86400000).m912x((j % 86400000) * 1000000);
                case 4:
                    return m911y(j);
                case 5:
                    return m910z(this.f510a, 0L, j, 0L, 0L, 1);
                case 6:
                    return m910z(this.f510a, j, 0L, 0L, 0L, 1);
                case 7:
                    C2687f m913w = m913w(j / 256);
                    return m913w.m910z(m913w.f510a, (j % 256) * 12, 0L, 0L, 0L, 1);
                default:
                    return m929E(this.f510a.mo745f(j, interfaceC2753y), this.f511b);
            }
        }
        return (C2687f) interfaceC2753y.mo725a(this, j);
    }

    /* renamed from: w */
    public C2687f m913w(long j) {
        return m929E(this.f510a.m938v(j), this.f511b);
    }

    /* renamed from: x */
    public C2687f m912x(long j) {
        return m910z(this.f510a, 0L, 0L, 0L, j, 1);
    }

    /* renamed from: y */
    public C2687f m911y(long j) {
        return m910z(this.f510a, 0L, 0L, j, 0L, 1);
    }
}
