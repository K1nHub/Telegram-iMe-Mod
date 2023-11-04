package p033j$.time;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import p033j$.time.chrono.AbstractC2685d;
import p033j$.time.chrono.C2689h;
import p033j$.time.chrono.InterfaceC2683b;
import p033j$.time.chrono.InterfaceC2684c;
import p033j$.time.chrono.InterfaceC2687f;
import p033j$.time.chrono.InterfaceC2688g;
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
import p033j$.time.zone.C2760a;
import p033j$.time.zone.C2762c;
/* renamed from: j$.time.r */
/* loaded from: classes2.dex */
public final class C2732r implements InterfaceC2743j, InterfaceC2687f, Serializable {

    /* renamed from: a */
    private final C2692f f618a;

    /* renamed from: b */
    private final C2729o f619b;

    /* renamed from: c */
    private final AbstractC2728n f620c;

    private C2732r(C2692f c2692f, C2729o c2729o, AbstractC2728n abstractC2728n) {
        this.f618a = c2692f;
        this.f619b = c2729o;
        this.f620c = abstractC2728n;
    }

    /* renamed from: h */
    private static C2732r m777h(long j, int i, AbstractC2728n abstractC2728n) {
        C2729o m709d = abstractC2728n.mo779k().m709d(Instant.ofEpochSecond(j, i));
        return new C2732r(C2692f.m912u(j, i, m709d), m709d, abstractC2728n);
    }

    /* renamed from: m */
    public static C2732r m773m(Instant instant, AbstractC2728n abstractC2728n) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(abstractC2728n, "zone");
        return m777h(instant.getEpochSecond(), instant.getNano(), abstractC2728n);
    }

    /* renamed from: n */
    public static C2732r m772n(C2692f c2692f, AbstractC2728n abstractC2728n, C2729o c2729o) {
        Objects.requireNonNull(c2692f, "localDateTime");
        Objects.requireNonNull(abstractC2728n, "zone");
        if (abstractC2728n instanceof C2729o) {
            return new C2732r(c2692f, (C2729o) abstractC2728n, abstractC2728n);
        }
        C2762c mo779k = abstractC2728n.mo779k();
        List m706g = mo779k.m706g(c2692f);
        if (m706g.size() == 1) {
            c2729o = (C2729o) m706g.get(0);
        } else if (m706g.size() == 0) {
            C2760a m707f = mo779k.m707f(c2692f);
            c2692f = c2692f.m908y(m707f.m719c().m983b());
            c2729o = m707f.m717e();
        } else if (c2729o == null || !m706g.contains(c2729o)) {
            c2729o = (C2729o) m706g.get(0);
            Objects.requireNonNull(c2729o, "offset");
        }
        return new C2732r(c2692f, c2729o, abstractC2728n);
    }

    /* renamed from: o */
    private C2732r m771o(C2692f c2692f) {
        return m772n(c2692f, this.f620c, this.f619b);
    }

    /* renamed from: p */
    private C2732r m770p(C2729o c2729o) {
        return (c2729o.equals(this.f619b) || !this.f620c.mo779k().m706g(this.f618a).contains(c2729o)) ? this : new C2732r(this.f618a, c2729o, this.f620c);
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: a */
    public InterfaceC2743j mo744a(InterfaceC2745l interfaceC2745l) {
        return m772n(C2692f.m913t((C2690d) interfaceC2745l, this.f618a.m927D()), this.f620c, this.f619b);
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: b */
    public InterfaceC2743j mo743b(InterfaceC2748o interfaceC2748o, long j) {
        if (interfaceC2748o instanceof EnumC2734a) {
            EnumC2734a enumC2734a = (EnumC2734a) interfaceC2748o;
            int i = AbstractC2731q.f617a[enumC2734a.ordinal()];
            if (i != 1) {
                return i != 2 ? m771o(this.f618a.mo743b(interfaceC2748o, j)) : m770p(C2729o.m782s(enumC2734a.m754i(j)));
            }
            return m777h(j, this.f618a.m920m(), this.f620c);
        }
        return (C2732r) interfaceC2748o.mo726f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public int mo741c(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o instanceof EnumC2734a) {
            int i = AbstractC2731q.f617a[((EnumC2734a) interfaceC2748o).ordinal()];
            if (i != 1) {
                return i != 2 ? this.f618a.mo741c(interfaceC2748o) : this.f619b.m785p();
            }
            throw new C2759z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2685d.m956a(this, interfaceC2748o);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        C2732r c2732r = (C2732r) ((InterfaceC2687f) obj);
        int compare = Long.compare(m769q(), c2732r.m769q());
        if (compare == 0) {
            int m813m = m766t().m813m() - c2732r.m766t().m813m();
            if (m813m == 0) {
                int compareTo = ((C2692f) m767s()).compareTo(c2732r.m767s());
                if (compareTo == 0) {
                    int compareTo2 = m774l().mo780j().compareTo(c2732r.m774l().mo780j());
                    if (compareTo2 == 0) {
                        m776j();
                        C2689h c2689h = C2689h.f501a;
                        c2732r.m776j();
                        return 0;
                    }
                    return compareTo2;
                }
                return compareTo;
            }
            return m813m;
        }
        return compare;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? (interfaceC2748o == EnumC2734a.INSTANT_SECONDS || interfaceC2748o == EnumC2734a.OFFSET_SECONDS) ? interfaceC2748o.mo731a() : this.f618a.mo740d(interfaceC2748o) : interfaceC2748o.mo725g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o instanceof EnumC2734a) {
            int i = AbstractC2731q.f617a[((EnumC2734a) interfaceC2748o).ordinal()];
            return i != 1 ? i != 2 ? this.f618a.mo739e(interfaceC2748o) : this.f619b.m785p() : m769q();
        }
        return interfaceC2748o.mo728d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2732r) {
            C2732r c2732r = (C2732r) obj;
            return this.f618a.equals(c2732r.f618a) && this.f619b.equals(c2732r.f619b) && this.f620c.equals(c2732r.f620c);
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: f */
    public InterfaceC2743j mo742f(long j, InterfaceC2758y interfaceC2758y) {
        boolean z = interfaceC2758y instanceof ChronoUnit;
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2758y;
        if (!z) {
            Objects.requireNonNull(chronoUnit);
            return (C2732r) mo742f(j, chronoUnit);
        } else if (chronoUnit.m755b()) {
            return m771o(this.f618a.mo742f(j, chronoUnit));
        } else {
            C2692f mo742f = this.f618a.mo742f(j, chronoUnit);
            C2729o c2729o = this.f619b;
            AbstractC2728n abstractC2728n = this.f620c;
            Objects.requireNonNull(mo742f, "localDateTime");
            Objects.requireNonNull(c2729o, "offset");
            Objects.requireNonNull(abstractC2728n, "zone");
            return abstractC2728n.mo779k().m706g(mo742f).contains(c2729o) ? new C2732r(mo742f, c2729o, abstractC2728n) : m777h(mo742f.m930A(c2729o), mo742f.m920m(), abstractC2728n);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: g */
    public Object mo738g(InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        if (interfaceC2757x == C2754u.f645a) {
            return this.f618a.m929B();
        }
        if (interfaceC2757x == C2753t.f644a || interfaceC2757x == C2749p.f640a) {
            return this.f620c;
        }
        if (interfaceC2757x == C2752s.f643a) {
            return this.f619b;
        }
        if (interfaceC2757x == C2755v.f646a) {
            return m766t();
        }
        if (interfaceC2757x != C2750q.f641a) {
            return interfaceC2757x == C2751r.f642a ? ChronoUnit.NANOS : interfaceC2757x.mo723a(this);
        }
        m776j();
        return C2689h.f501a;
    }

    public int hashCode() {
        return (this.f618a.hashCode() ^ this.f619b.hashCode()) ^ Integer.rotateLeft(this.f620c.hashCode(), 3);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        return (interfaceC2748o instanceof EnumC2734a) || (interfaceC2748o != null && interfaceC2748o.mo727e(this));
    }

    /* renamed from: j */
    public InterfaceC2688g m776j() {
        Objects.requireNonNull((C2690d) m768r());
        return C2689h.f501a;
    }

    /* renamed from: k */
    public C2729o m775k() {
        return this.f619b;
    }

    /* renamed from: l */
    public AbstractC2728n m774l() {
        return this.f620c;
    }

    /* renamed from: q */
    public long m769q() {
        return ((((C2690d) m768r()).m952A() * 86400) + m766t().m803w()) - m775k().m785p();
    }

    /* renamed from: r */
    public InterfaceC2683b m768r() {
        return this.f618a.m929B();
    }

    /* renamed from: s */
    public InterfaceC2684c m767s() {
        return this.f618a;
    }

    /* renamed from: t */
    public C2722h m766t() {
        return this.f618a.m927D();
    }

    public String toString() {
        String str = this.f618a.toString() + this.f619b.toString();
        if (this.f619b != this.f620c) {
            return str + '[' + this.f620c.toString() + ']';
        }
        return str;
    }
}
