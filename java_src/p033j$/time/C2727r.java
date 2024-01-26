package p033j$.time;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import p033j$.time.chrono.AbstractC2680d;
import p033j$.time.chrono.C2684h;
import p033j$.time.chrono.InterfaceC2678b;
import p033j$.time.chrono.InterfaceC2679c;
import p033j$.time.chrono.InterfaceC2682f;
import p033j$.time.chrono.InterfaceC2683g;
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
import p033j$.time.zone.C2755a;
import p033j$.time.zone.C2757c;
/* renamed from: j$.time.r */
/* loaded from: classes2.dex */
public final class C2727r implements InterfaceC2738j, InterfaceC2682f, Serializable {

    /* renamed from: a */
    private final C2687f f618a;

    /* renamed from: b */
    private final C2724o f619b;

    /* renamed from: c */
    private final AbstractC2723n f620c;

    private C2727r(C2687f c2687f, C2724o c2724o, AbstractC2723n abstractC2723n) {
        this.f618a = c2687f;
        this.f619b = c2724o;
        this.f620c = abstractC2723n;
    }

    /* renamed from: h */
    private static C2727r m780h(long j, int i, AbstractC2723n abstractC2723n) {
        C2724o m712d = abstractC2723n.mo782k().m712d(Instant.ofEpochSecond(j, i));
        return new C2727r(C2687f.m915u(j, i, m712d), m712d, abstractC2723n);
    }

    /* renamed from: m */
    public static C2727r m776m(Instant instant, AbstractC2723n abstractC2723n) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(abstractC2723n, "zone");
        return m780h(instant.getEpochSecond(), instant.getNano(), abstractC2723n);
    }

    /* renamed from: n */
    public static C2727r m775n(C2687f c2687f, AbstractC2723n abstractC2723n, C2724o c2724o) {
        Objects.requireNonNull(c2687f, "localDateTime");
        Objects.requireNonNull(abstractC2723n, "zone");
        if (abstractC2723n instanceof C2724o) {
            return new C2727r(c2687f, (C2724o) abstractC2723n, abstractC2723n);
        }
        C2757c mo782k = abstractC2723n.mo782k();
        List m709g = mo782k.m709g(c2687f);
        if (m709g.size() == 1) {
            c2724o = (C2724o) m709g.get(0);
        } else if (m709g.size() == 0) {
            C2755a m710f = mo782k.m710f(c2687f);
            c2687f = c2687f.m911y(m710f.m722c().m986b());
            c2724o = m710f.m720e();
        } else if (c2724o == null || !m709g.contains(c2724o)) {
            c2724o = (C2724o) m709g.get(0);
            Objects.requireNonNull(c2724o, "offset");
        }
        return new C2727r(c2687f, c2724o, abstractC2723n);
    }

    /* renamed from: o */
    private C2727r m774o(C2687f c2687f) {
        return m775n(c2687f, this.f620c, this.f619b);
    }

    /* renamed from: p */
    private C2727r m773p(C2724o c2724o) {
        return (c2724o.equals(this.f619b) || !this.f620c.mo782k().m709g(this.f618a).contains(c2724o)) ? this : new C2727r(this.f618a, c2724o, this.f620c);
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: a */
    public InterfaceC2738j mo747a(InterfaceC2740l interfaceC2740l) {
        return m775n(C2687f.m916t((C2685d) interfaceC2740l, this.f618a.m930D()), this.f620c, this.f619b);
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: b */
    public InterfaceC2738j mo746b(InterfaceC2743o interfaceC2743o, long j) {
        if (interfaceC2743o instanceof EnumC2729a) {
            EnumC2729a enumC2729a = (EnumC2729a) interfaceC2743o;
            int i = AbstractC2726q.f617a[enumC2729a.ordinal()];
            if (i != 1) {
                return i != 2 ? m774o(this.f618a.mo746b(interfaceC2743o, j)) : m773p(C2724o.m785s(enumC2729a.m757i(j)));
            }
            return m780h(j, this.f618a.m923m(), this.f620c);
        }
        return (C2727r) interfaceC2743o.mo729f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public int mo744c(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o instanceof EnumC2729a) {
            int i = AbstractC2726q.f617a[((EnumC2729a) interfaceC2743o).ordinal()];
            if (i != 1) {
                return i != 2 ? this.f618a.mo744c(interfaceC2743o) : this.f619b.m788p();
            }
            throw new C2754z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2680d.m959a(this, interfaceC2743o);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        C2727r c2727r = (C2727r) ((InterfaceC2682f) obj);
        int compare = Long.compare(m772q(), c2727r.m772q());
        if (compare == 0) {
            int m816m = m769t().m816m() - c2727r.m769t().m816m();
            if (m816m == 0) {
                int compareTo = ((C2687f) m770s()).compareTo(c2727r.m770s());
                if (compareTo == 0) {
                    int compareTo2 = m777l().mo783j().compareTo(c2727r.m777l().mo783j());
                    if (compareTo2 == 0) {
                        m779j();
                        C2684h c2684h = C2684h.f501a;
                        c2727r.m779j();
                        return 0;
                    }
                    return compareTo2;
                }
                return compareTo;
            }
            return m816m;
        }
        return compare;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? (interfaceC2743o == EnumC2729a.INSTANT_SECONDS || interfaceC2743o == EnumC2729a.OFFSET_SECONDS) ? interfaceC2743o.mo734a() : this.f618a.mo743d(interfaceC2743o) : interfaceC2743o.mo728g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o instanceof EnumC2729a) {
            int i = AbstractC2726q.f617a[((EnumC2729a) interfaceC2743o).ordinal()];
            return i != 1 ? i != 2 ? this.f618a.mo742e(interfaceC2743o) : this.f619b.m788p() : m772q();
        }
        return interfaceC2743o.mo731d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2727r) {
            C2727r c2727r = (C2727r) obj;
            return this.f618a.equals(c2727r.f618a) && this.f619b.equals(c2727r.f619b) && this.f620c.equals(c2727r.f620c);
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: f */
    public InterfaceC2738j mo745f(long j, InterfaceC2753y interfaceC2753y) {
        boolean z = interfaceC2753y instanceof ChronoUnit;
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2753y;
        if (!z) {
            Objects.requireNonNull(chronoUnit);
            return (C2727r) mo745f(j, chronoUnit);
        } else if (chronoUnit.m758b()) {
            return m774o(this.f618a.mo745f(j, chronoUnit));
        } else {
            C2687f mo745f = this.f618a.mo745f(j, chronoUnit);
            C2724o c2724o = this.f619b;
            AbstractC2723n abstractC2723n = this.f620c;
            Objects.requireNonNull(mo745f, "localDateTime");
            Objects.requireNonNull(c2724o, "offset");
            Objects.requireNonNull(abstractC2723n, "zone");
            return abstractC2723n.mo782k().m709g(mo745f).contains(c2724o) ? new C2727r(mo745f, c2724o, abstractC2723n) : m780h(mo745f.m933A(c2724o), mo745f.m923m(), abstractC2723n);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: g */
    public Object mo741g(InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        if (interfaceC2752x == C2749u.f645a) {
            return this.f618a.m932B();
        }
        if (interfaceC2752x == C2748t.f644a || interfaceC2752x == C2744p.f640a) {
            return this.f620c;
        }
        if (interfaceC2752x == C2747s.f643a) {
            return this.f619b;
        }
        if (interfaceC2752x == C2750v.f646a) {
            return m769t();
        }
        if (interfaceC2752x != C2745q.f641a) {
            return interfaceC2752x == C2746r.f642a ? ChronoUnit.NANOS : interfaceC2752x.mo726a(this);
        }
        m779j();
        return C2684h.f501a;
    }

    public int hashCode() {
        return (this.f618a.hashCode() ^ this.f619b.hashCode()) ^ Integer.rotateLeft(this.f620c.hashCode(), 3);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        return (interfaceC2743o instanceof EnumC2729a) || (interfaceC2743o != null && interfaceC2743o.mo730e(this));
    }

    /* renamed from: j */
    public InterfaceC2683g m779j() {
        Objects.requireNonNull((C2685d) m771r());
        return C2684h.f501a;
    }

    /* renamed from: k */
    public C2724o m778k() {
        return this.f619b;
    }

    /* renamed from: l */
    public AbstractC2723n m777l() {
        return this.f620c;
    }

    /* renamed from: q */
    public long m772q() {
        return ((((C2685d) m771r()).m955A() * 86400) + m769t().m806w()) - m778k().m788p();
    }

    /* renamed from: r */
    public InterfaceC2678b m771r() {
        return this.f618a.m932B();
    }

    /* renamed from: s */
    public InterfaceC2679c m770s() {
        return this.f618a;
    }

    /* renamed from: t */
    public C2717h m769t() {
        return this.f618a.m930D();
    }

    public String toString() {
        String str = this.f618a.toString() + this.f619b.toString();
        if (this.f619b != this.f620c) {
            return str + '[' + this.f620c.toString() + ']';
        }
        return str;
    }
}
