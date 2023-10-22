package p033j$.time;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import p033j$.time.chrono.AbstractC2681d;
import p033j$.time.chrono.C2685h;
import p033j$.time.chrono.InterfaceC2679b;
import p033j$.time.chrono.InterfaceC2680c;
import p033j$.time.chrono.InterfaceC2683f;
import p033j$.time.chrono.InterfaceC2684g;
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
import p033j$.time.zone.C2756a;
import p033j$.time.zone.C2758c;
/* renamed from: j$.time.r */
/* loaded from: classes2.dex */
public final class C2728r implements InterfaceC2739j, InterfaceC2683f, Serializable {

    /* renamed from: a */
    private final C2688f f618a;

    /* renamed from: b */
    private final C2725o f619b;

    /* renamed from: c */
    private final AbstractC2724n f620c;

    private C2728r(C2688f c2688f, C2725o c2725o, AbstractC2724n abstractC2724n) {
        this.f618a = c2688f;
        this.f619b = c2725o;
        this.f620c = abstractC2724n;
    }

    /* renamed from: h */
    private static C2728r m776h(long j, int i, AbstractC2724n abstractC2724n) {
        C2725o m708d = abstractC2724n.mo778k().m708d(Instant.ofEpochSecond(j, i));
        return new C2728r(C2688f.m911u(j, i, m708d), m708d, abstractC2724n);
    }

    /* renamed from: m */
    public static C2728r m772m(Instant instant, AbstractC2724n abstractC2724n) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(abstractC2724n, "zone");
        return m776h(instant.getEpochSecond(), instant.getNano(), abstractC2724n);
    }

    /* renamed from: n */
    public static C2728r m771n(C2688f c2688f, AbstractC2724n abstractC2724n, C2725o c2725o) {
        Objects.requireNonNull(c2688f, "localDateTime");
        Objects.requireNonNull(abstractC2724n, "zone");
        if (abstractC2724n instanceof C2725o) {
            return new C2728r(c2688f, (C2725o) abstractC2724n, abstractC2724n);
        }
        C2758c mo778k = abstractC2724n.mo778k();
        List m705g = mo778k.m705g(c2688f);
        if (m705g.size() == 1) {
            c2725o = (C2725o) m705g.get(0);
        } else if (m705g.size() == 0) {
            C2756a m706f = mo778k.m706f(c2688f);
            c2688f = c2688f.m907y(m706f.m718c().m982b());
            c2725o = m706f.m716e();
        } else if (c2725o == null || !m705g.contains(c2725o)) {
            c2725o = (C2725o) m705g.get(0);
            Objects.requireNonNull(c2725o, "offset");
        }
        return new C2728r(c2688f, c2725o, abstractC2724n);
    }

    /* renamed from: o */
    private C2728r m770o(C2688f c2688f) {
        return m771n(c2688f, this.f620c, this.f619b);
    }

    /* renamed from: p */
    private C2728r m769p(C2725o c2725o) {
        return (c2725o.equals(this.f619b) || !this.f620c.mo778k().m705g(this.f618a).contains(c2725o)) ? this : new C2728r(this.f618a, c2725o, this.f620c);
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: a */
    public InterfaceC2739j mo743a(InterfaceC2741l interfaceC2741l) {
        return m771n(C2688f.m912t((C2686d) interfaceC2741l, this.f618a.m926D()), this.f620c, this.f619b);
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: b */
    public InterfaceC2739j mo742b(InterfaceC2744o interfaceC2744o, long j) {
        if (interfaceC2744o instanceof EnumC2730a) {
            EnumC2730a enumC2730a = (EnumC2730a) interfaceC2744o;
            int i = AbstractC2727q.f617a[enumC2730a.ordinal()];
            if (i != 1) {
                return i != 2 ? m770o(this.f618a.mo742b(interfaceC2744o, j)) : m769p(C2725o.m781s(enumC2730a.m753i(j)));
            }
            return m776h(j, this.f618a.m919m(), this.f620c);
        }
        return (C2728r) interfaceC2744o.mo725f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public int mo740c(InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o instanceof EnumC2730a) {
            int i = AbstractC2727q.f617a[((EnumC2730a) interfaceC2744o).ordinal()];
            if (i != 1) {
                return i != 2 ? this.f618a.mo740c(interfaceC2744o) : this.f619b.m784p();
            }
            throw new C2755z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2681d.m955a(this, interfaceC2744o);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        C2728r c2728r = (C2728r) ((InterfaceC2683f) obj);
        int compare = Long.compare(m768q(), c2728r.m768q());
        if (compare == 0) {
            int m812m = m765t().m812m() - c2728r.m765t().m812m();
            if (m812m == 0) {
                int compareTo = ((C2688f) m766s()).compareTo(c2728r.m766s());
                if (compareTo == 0) {
                    int compareTo2 = m773l().mo779j().compareTo(c2728r.m773l().mo779j());
                    if (compareTo2 == 0) {
                        m775j();
                        C2685h c2685h = C2685h.f501a;
                        c2728r.m775j();
                        return 0;
                    }
                    return compareTo2;
                }
                return compareTo;
            }
            return m812m;
        }
        return compare;
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? (interfaceC2744o == EnumC2730a.INSTANT_SECONDS || interfaceC2744o == EnumC2730a.OFFSET_SECONDS) ? interfaceC2744o.mo730a() : this.f618a.mo739d(interfaceC2744o) : interfaceC2744o.mo724g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o instanceof EnumC2730a) {
            int i = AbstractC2727q.f617a[((EnumC2730a) interfaceC2744o).ordinal()];
            return i != 1 ? i != 2 ? this.f618a.mo738e(interfaceC2744o) : this.f619b.m784p() : m768q();
        }
        return interfaceC2744o.mo727d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2728r) {
            C2728r c2728r = (C2728r) obj;
            return this.f618a.equals(c2728r.f618a) && this.f619b.equals(c2728r.f619b) && this.f620c.equals(c2728r.f620c);
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: f */
    public InterfaceC2739j mo741f(long j, InterfaceC2754y interfaceC2754y) {
        boolean z = interfaceC2754y instanceof ChronoUnit;
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2754y;
        if (!z) {
            Objects.requireNonNull(chronoUnit);
            return (C2728r) mo741f(j, chronoUnit);
        } else if (chronoUnit.m754b()) {
            return m770o(this.f618a.mo741f(j, chronoUnit));
        } else {
            C2688f mo741f = this.f618a.mo741f(j, chronoUnit);
            C2725o c2725o = this.f619b;
            AbstractC2724n abstractC2724n = this.f620c;
            Objects.requireNonNull(mo741f, "localDateTime");
            Objects.requireNonNull(c2725o, "offset");
            Objects.requireNonNull(abstractC2724n, "zone");
            return abstractC2724n.mo778k().m705g(mo741f).contains(c2725o) ? new C2728r(mo741f, c2725o, abstractC2724n) : m776h(mo741f.m929A(c2725o), mo741f.m919m(), abstractC2724n);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: g */
    public Object mo737g(InterfaceC2753x interfaceC2753x) {
        int i = AbstractC2752w.f647a;
        if (interfaceC2753x == C2750u.f645a) {
            return this.f618a.m928B();
        }
        if (interfaceC2753x == C2749t.f644a || interfaceC2753x == C2745p.f640a) {
            return this.f620c;
        }
        if (interfaceC2753x == C2748s.f643a) {
            return this.f619b;
        }
        if (interfaceC2753x == C2751v.f646a) {
            return m765t();
        }
        if (interfaceC2753x != C2746q.f641a) {
            return interfaceC2753x == C2747r.f642a ? ChronoUnit.NANOS : interfaceC2753x.mo722a(this);
        }
        m775j();
        return C2685h.f501a;
    }

    public int hashCode() {
        return (this.f618a.hashCode() ^ this.f619b.hashCode()) ^ Integer.rotateLeft(this.f620c.hashCode(), 3);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        return (interfaceC2744o instanceof EnumC2730a) || (interfaceC2744o != null && interfaceC2744o.mo726e(this));
    }

    /* renamed from: j */
    public InterfaceC2684g m775j() {
        Objects.requireNonNull((C2686d) m767r());
        return C2685h.f501a;
    }

    /* renamed from: k */
    public C2725o m774k() {
        return this.f619b;
    }

    /* renamed from: l */
    public AbstractC2724n m773l() {
        return this.f620c;
    }

    /* renamed from: q */
    public long m768q() {
        return ((((C2686d) m767r()).m951A() * 86400) + m765t().m802w()) - m774k().m784p();
    }

    /* renamed from: r */
    public InterfaceC2679b m767r() {
        return this.f618a.m928B();
    }

    /* renamed from: s */
    public InterfaceC2680c m766s() {
        return this.f618a;
    }

    /* renamed from: t */
    public C2718h m765t() {
        return this.f618a.m926D();
    }

    public String toString() {
        String str = this.f618a.toString() + this.f619b.toString();
        if (this.f619b != this.f620c) {
            return str + '[' + this.f620c.toString() + ']';
        }
        return str;
    }
}
