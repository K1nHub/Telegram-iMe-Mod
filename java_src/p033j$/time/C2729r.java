package p033j$.time;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import p033j$.time.chrono.AbstractC2682d;
import p033j$.time.chrono.C2686h;
import p033j$.time.chrono.InterfaceC2680b;
import p033j$.time.chrono.InterfaceC2681c;
import p033j$.time.chrono.InterfaceC2684f;
import p033j$.time.chrono.InterfaceC2685g;
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
import p033j$.time.zone.C2757a;
import p033j$.time.zone.C2759c;
/* renamed from: j$.time.r */
/* loaded from: classes2.dex */
public final class C2729r implements InterfaceC2740j, InterfaceC2684f, Serializable {

    /* renamed from: a */
    private final C2689f f618a;

    /* renamed from: b */
    private final C2726o f619b;

    /* renamed from: c */
    private final AbstractC2725n f620c;

    private C2729r(C2689f c2689f, C2726o c2726o, AbstractC2725n abstractC2725n) {
        this.f618a = c2689f;
        this.f619b = c2726o;
        this.f620c = abstractC2725n;
    }

    /* renamed from: h */
    private static C2729r m777h(long j, int i, AbstractC2725n abstractC2725n) {
        C2726o m709d = abstractC2725n.mo779k().m709d(Instant.ofEpochSecond(j, i));
        return new C2729r(C2689f.m912u(j, i, m709d), m709d, abstractC2725n);
    }

    /* renamed from: m */
    public static C2729r m773m(Instant instant, AbstractC2725n abstractC2725n) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(abstractC2725n, "zone");
        return m777h(instant.getEpochSecond(), instant.getNano(), abstractC2725n);
    }

    /* renamed from: n */
    public static C2729r m772n(C2689f c2689f, AbstractC2725n abstractC2725n, C2726o c2726o) {
        Objects.requireNonNull(c2689f, "localDateTime");
        Objects.requireNonNull(abstractC2725n, "zone");
        if (abstractC2725n instanceof C2726o) {
            return new C2729r(c2689f, (C2726o) abstractC2725n, abstractC2725n);
        }
        C2759c mo779k = abstractC2725n.mo779k();
        List m706g = mo779k.m706g(c2689f);
        if (m706g.size() == 1) {
            c2726o = (C2726o) m706g.get(0);
        } else if (m706g.size() == 0) {
            C2757a m707f = mo779k.m707f(c2689f);
            c2689f = c2689f.m908y(m707f.m719c().m983b());
            c2726o = m707f.m717e();
        } else if (c2726o == null || !m706g.contains(c2726o)) {
            c2726o = (C2726o) m706g.get(0);
            Objects.requireNonNull(c2726o, "offset");
        }
        return new C2729r(c2689f, c2726o, abstractC2725n);
    }

    /* renamed from: o */
    private C2729r m771o(C2689f c2689f) {
        return m772n(c2689f, this.f620c, this.f619b);
    }

    /* renamed from: p */
    private C2729r m770p(C2726o c2726o) {
        return (c2726o.equals(this.f619b) || !this.f620c.mo779k().m706g(this.f618a).contains(c2726o)) ? this : new C2729r(this.f618a, c2726o, this.f620c);
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: a */
    public InterfaceC2740j mo744a(InterfaceC2742l interfaceC2742l) {
        return m772n(C2689f.m913t((C2687d) interfaceC2742l, this.f618a.m927D()), this.f620c, this.f619b);
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: b */
    public InterfaceC2740j mo743b(InterfaceC2745o interfaceC2745o, long j) {
        if (interfaceC2745o instanceof EnumC2731a) {
            EnumC2731a enumC2731a = (EnumC2731a) interfaceC2745o;
            int i = AbstractC2728q.f617a[enumC2731a.ordinal()];
            if (i != 1) {
                return i != 2 ? m771o(this.f618a.mo743b(interfaceC2745o, j)) : m770p(C2726o.m782s(enumC2731a.m754i(j)));
            }
            return m777h(j, this.f618a.m920m(), this.f620c);
        }
        return (C2729r) interfaceC2745o.mo726f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: c */
    public int mo741c(InterfaceC2745o interfaceC2745o) {
        if (interfaceC2745o instanceof EnumC2731a) {
            int i = AbstractC2728q.f617a[((EnumC2731a) interfaceC2745o).ordinal()];
            if (i != 1) {
                return i != 2 ? this.f618a.mo741c(interfaceC2745o) : this.f619b.m785p();
            }
            throw new C2756z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2682d.m956a(this, interfaceC2745o);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        C2729r c2729r = (C2729r) ((InterfaceC2684f) obj);
        int compare = Long.compare(m769q(), c2729r.m769q());
        if (compare == 0) {
            int m813m = m766t().m813m() - c2729r.m766t().m813m();
            if (m813m == 0) {
                int compareTo = ((C2689f) m767s()).compareTo(c2729r.m767s());
                if (compareTo == 0) {
                    int compareTo2 = m774l().mo780j().compareTo(c2729r.m774l().mo780j());
                    if (compareTo2 == 0) {
                        m776j();
                        C2686h c2686h = C2686h.f501a;
                        c2729r.m776j();
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

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: d */
    public C2730A mo740d(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o instanceof EnumC2731a ? (interfaceC2745o == EnumC2731a.INSTANT_SECONDS || interfaceC2745o == EnumC2731a.OFFSET_SECONDS) ? interfaceC2745o.mo731a() : this.f618a.mo740d(interfaceC2745o) : interfaceC2745o.mo725g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: e */
    public long mo739e(InterfaceC2745o interfaceC2745o) {
        if (interfaceC2745o instanceof EnumC2731a) {
            int i = AbstractC2728q.f617a[((EnumC2731a) interfaceC2745o).ordinal()];
            return i != 1 ? i != 2 ? this.f618a.mo739e(interfaceC2745o) : this.f619b.m785p() : m769q();
        }
        return interfaceC2745o.mo728d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2729r) {
            C2729r c2729r = (C2729r) obj;
            return this.f618a.equals(c2729r.f618a) && this.f619b.equals(c2729r.f619b) && this.f620c.equals(c2729r.f620c);
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: f */
    public InterfaceC2740j mo742f(long j, InterfaceC2755y interfaceC2755y) {
        boolean z = interfaceC2755y instanceof ChronoUnit;
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2755y;
        if (!z) {
            Objects.requireNonNull(chronoUnit);
            return (C2729r) mo742f(j, chronoUnit);
        } else if (chronoUnit.m755b()) {
            return m771o(this.f618a.mo742f(j, chronoUnit));
        } else {
            C2689f mo742f = this.f618a.mo742f(j, chronoUnit);
            C2726o c2726o = this.f619b;
            AbstractC2725n abstractC2725n = this.f620c;
            Objects.requireNonNull(mo742f, "localDateTime");
            Objects.requireNonNull(c2726o, "offset");
            Objects.requireNonNull(abstractC2725n, "zone");
            return abstractC2725n.mo779k().m706g(mo742f).contains(c2726o) ? new C2729r(mo742f, c2726o, abstractC2725n) : m777h(mo742f.m930A(c2726o), mo742f.m920m(), abstractC2725n);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: g */
    public Object mo738g(InterfaceC2754x interfaceC2754x) {
        int i = AbstractC2753w.f647a;
        if (interfaceC2754x == C2751u.f645a) {
            return this.f618a.m929B();
        }
        if (interfaceC2754x == C2750t.f644a || interfaceC2754x == C2746p.f640a) {
            return this.f620c;
        }
        if (interfaceC2754x == C2749s.f643a) {
            return this.f619b;
        }
        if (interfaceC2754x == C2752v.f646a) {
            return m766t();
        }
        if (interfaceC2754x != C2747q.f641a) {
            return interfaceC2754x == C2748r.f642a ? ChronoUnit.NANOS : interfaceC2754x.mo723a(this);
        }
        m776j();
        return C2686h.f501a;
    }

    public int hashCode() {
        return (this.f618a.hashCode() ^ this.f619b.hashCode()) ^ Integer.rotateLeft(this.f620c.hashCode(), 3);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2745o interfaceC2745o) {
        return (interfaceC2745o instanceof EnumC2731a) || (interfaceC2745o != null && interfaceC2745o.mo727e(this));
    }

    /* renamed from: j */
    public InterfaceC2685g m776j() {
        Objects.requireNonNull((C2687d) m768r());
        return C2686h.f501a;
    }

    /* renamed from: k */
    public C2726o m775k() {
        return this.f619b;
    }

    /* renamed from: l */
    public AbstractC2725n m774l() {
        return this.f620c;
    }

    /* renamed from: q */
    public long m769q() {
        return ((((C2687d) m768r()).m952A() * 86400) + m766t().m803w()) - m775k().m785p();
    }

    /* renamed from: r */
    public InterfaceC2680b m768r() {
        return this.f618a.m929B();
    }

    /* renamed from: s */
    public InterfaceC2681c m767s() {
        return this.f618a;
    }

    /* renamed from: t */
    public C2719h m766t() {
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
