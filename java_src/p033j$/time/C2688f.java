package p033j$.time;

import com.google.android.exoplayer2.C0479C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2669d;
import p033j$.time.chrono.C2685h;
import p033j$.time.chrono.InterfaceC2679b;
import p033j$.time.chrono.InterfaceC2680c;
import p033j$.time.chrono.InterfaceC2684g;
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
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2739j;
import p033j$.time.temporal.InterfaceC2741l;
import p033j$.time.temporal.InterfaceC2744o;
import p033j$.time.temporal.InterfaceC2753x;
import p033j$.time.temporal.InterfaceC2754y;
/* renamed from: j$.time.f */
/* loaded from: classes2.dex */
public final class C2688f implements InterfaceC2739j, InterfaceC2741l, InterfaceC2680c, Serializable {

    /* renamed from: c */
    public static final C2688f f508c = m912t(C2686d.f502d, C2718h.f591e);

    /* renamed from: d */
    public static final C2688f f509d = m912t(C2686d.f503e, C2718h.f592f);

    /* renamed from: a */
    private final C2686d f510a;

    /* renamed from: b */
    private final C2718h f511b;

    private C2688f(C2686d c2686d, C2718h c2718h) {
        this.f510a = c2686d;
        this.f511b = c2718h;
    }

    /* renamed from: E */
    private C2688f m925E(C2686d c2686d, C2718h c2718h) {
        return (this.f510a == c2686d && this.f511b == c2718h) ? this : new C2688f(c2686d, c2718h);
    }

    /* renamed from: k */
    private int m921k(C2688f c2688f) {
        int m945k = this.f510a.m945k(c2688f.f510a);
        return m945k == 0 ? this.f511b.compareTo(c2688f.f511b) : m945k;
    }

    /* renamed from: r */
    public static C2688f m914r(int i, int i2, int i3, int i4, int i5) {
        return new C2688f(C2686d.m938r(i, i2, i3), C2718h.m810o(i4, i5));
    }

    /* renamed from: s */
    public static C2688f m913s(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new C2688f(C2686d.m938r(i, i2, i3), C2718h.m809p(i4, i5, i6, i7));
    }

    /* renamed from: t */
    public static C2688f m912t(C2686d c2686d, C2718h c2718h) {
        Objects.requireNonNull(c2686d, "date");
        Objects.requireNonNull(c2718h, "time");
        return new C2688f(c2686d, c2718h);
    }

    /* renamed from: u */
    public static C2688f m911u(long j, int i, C2725o c2725o) {
        long m784p;
        Objects.requireNonNull(c2725o, "offset");
        long j2 = i;
        EnumC2730a.NANO_OF_SECOND.m752j(j2);
        return new C2688f(C2686d.m937s(AbstractC2669d.m987e(j + c2725o.m784p(), 86400L)), C2718h.m808q((((int) AbstractC2669d.m988d(m784p, 86400L)) * C0479C.NANOS_PER_SECOND) + j2));
    }

    /* renamed from: z */
    private C2688f m906z(C2686d c2686d, long j, long j2, long j3, long j4, int i) {
        C2718h m808q;
        C2686d c2686d2 = c2686d;
        if ((j | j2 | j3 | j4) == 0) {
            m808q = this.f511b;
        } else {
            long j5 = i;
            long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * C0479C.NANOS_PER_SECOND) + (j4 % 86400000000000L);
            long m803v = this.f511b.m803v();
            long j7 = (j6 * j5) + m803v;
            long m987e = AbstractC2669d.m987e(j7, 86400000000000L) + (((j / 24) + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L)) * j5);
            long m988d = AbstractC2669d.m988d(j7, 86400000000000L);
            m808q = m988d == m803v ? this.f511b : C2718h.m808q(m988d);
            c2686d2 = c2686d2.m934v(m987e);
        }
        return m925E(c2686d2, m808q);
    }

    /* renamed from: A */
    public long m929A(C2725o c2725o) {
        Objects.requireNonNull(c2725o, "offset");
        return ((((C2686d) m927C()).m951A() * 86400) + m926D().m802w()) - c2725o.m784p();
    }

    /* renamed from: B */
    public C2686d m928B() {
        return this.f510a;
    }

    /* renamed from: C */
    public InterfaceC2679b m927C() {
        return this.f510a;
    }

    /* renamed from: D */
    public C2718h m926D() {
        return this.f511b;
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: F */
    public C2688f mo743a(InterfaceC2741l interfaceC2741l) {
        return interfaceC2741l instanceof C2686d ? m925E((C2686d) interfaceC2741l, this.f511b) : interfaceC2741l instanceof C2718h ? m925E(this.f510a, (C2718h) interfaceC2741l) : interfaceC2741l instanceof C2688f ? (C2688f) interfaceC2741l : (C2688f) interfaceC2741l.mo735h(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: G */
    public C2688f mo742b(InterfaceC2744o interfaceC2744o, long j) {
        return interfaceC2744o instanceof EnumC2730a ? ((EnumC2730a) interfaceC2744o).mo729b() ? m925E(this.f510a, this.f511b.mo742b(interfaceC2744o, j)) : m925E(this.f510a.mo742b(interfaceC2744o, j), this.f511b) : (C2688f) interfaceC2744o.mo725f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public int mo740c(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? ((EnumC2730a) interfaceC2744o).mo729b() ? this.f511b.mo740c(interfaceC2744o) : this.f510a.mo740c(interfaceC2744o) : AbstractC2743n.m734a(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o instanceof EnumC2730a) {
            if (((EnumC2730a) interfaceC2744o).mo729b()) {
                C2718h c2718h = this.f511b;
                Objects.requireNonNull(c2718h);
                return AbstractC2743n.m732c(c2718h, interfaceC2744o);
            }
            return this.f510a.mo739d(interfaceC2744o);
        }
        return interfaceC2744o.mo724g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? ((EnumC2730a) interfaceC2744o).mo729b() ? this.f511b.mo738e(interfaceC2744o) : this.f510a.mo738e(interfaceC2744o) : interfaceC2744o.mo727d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2688f) {
            C2688f c2688f = (C2688f) obj;
            return this.f510a.equals(c2688f.f510a) && this.f511b.equals(c2688f.f511b);
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: g */
    public Object mo737g(InterfaceC2753x interfaceC2753x) {
        int i = AbstractC2752w.f647a;
        if (interfaceC2753x == C2750u.f645a) {
            return this.f510a;
        }
        if (interfaceC2753x == C2745p.f640a || interfaceC2753x == C2749t.f644a || interfaceC2753x == C2748s.f643a) {
            return null;
        }
        if (interfaceC2753x == C2751v.f646a) {
            return m926D();
        }
        if (interfaceC2753x != C2746q.f641a) {
            return interfaceC2753x == C2747r.f642a ? ChronoUnit.NANOS : interfaceC2753x.mo722a(this);
        }
        m920l();
        return C2685h.f501a;
    }

    @Override // p033j$.time.temporal.InterfaceC2741l
    /* renamed from: h */
    public InterfaceC2739j mo735h(InterfaceC2739j interfaceC2739j) {
        return interfaceC2739j.mo742b(EnumC2730a.EPOCH_DAY, this.f510a.m951A()).mo742b(EnumC2730a.NANO_OF_DAY, this.f511b.m803v());
    }

    public int hashCode() {
        return this.f510a.hashCode() ^ this.f511b.hashCode();
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        if (!(interfaceC2744o instanceof EnumC2730a)) {
            return interfaceC2744o != null && interfaceC2744o.mo726e(this);
        }
        EnumC2730a enumC2730a = (EnumC2730a) interfaceC2744o;
        return enumC2730a.mo723h() || enumC2730a.mo729b();
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(InterfaceC2680c interfaceC2680c) {
        if (interfaceC2680c instanceof C2688f) {
            return m921k((C2688f) interfaceC2680c);
        }
        C2688f c2688f = (C2688f) interfaceC2680c;
        int compareTo = ((C2686d) m927C()).compareTo(c2688f.m927C());
        if (compareTo == 0) {
            int compareTo2 = m926D().compareTo(c2688f.m926D());
            if (compareTo2 == 0) {
                m920l();
                C2685h c2685h = C2685h.f501a;
                c2688f.m920l();
                return 0;
            }
            return compareTo2;
        }
        return compareTo;
    }

    /* renamed from: l */
    public InterfaceC2684g m920l() {
        Objects.requireNonNull((C2686d) m927C());
        return C2685h.f501a;
    }

    /* renamed from: m */
    public int m919m() {
        return this.f511b.m812m();
    }

    /* renamed from: n */
    public int m918n() {
        return this.f511b.m811n();
    }

    /* renamed from: o */
    public int m917o() {
        return this.f510a.m940p();
    }

    /* renamed from: p */
    public boolean m916p(InterfaceC2680c interfaceC2680c) {
        if (interfaceC2680c instanceof C2688f) {
            return m921k((C2688f) interfaceC2680c) > 0;
        }
        C2688f c2688f = (C2688f) interfaceC2680c;
        int i = (((C2686d) m927C()).m951A() > ((C2686d) c2688f.m927C()).m951A() ? 1 : (((C2686d) m927C()).m951A() == ((C2686d) c2688f.m927C()).m951A() ? 0 : -1));
        return i > 0 || (i == 0 && m926D().m803v() > c2688f.m926D().m803v());
    }

    /* renamed from: q */
    public boolean m915q(InterfaceC2680c interfaceC2680c) {
        if (interfaceC2680c instanceof C2688f) {
            return m921k((C2688f) interfaceC2680c) < 0;
        }
        C2688f c2688f = (C2688f) interfaceC2680c;
        int i = (((C2686d) m927C()).m951A() > ((C2686d) c2688f.m927C()).m951A() ? 1 : (((C2686d) m927C()).m951A() == ((C2686d) c2688f.m927C()).m951A() ? 0 : -1));
        return i < 0 || (i == 0 && m926D().m803v() < c2688f.m926D().m803v());
    }

    public String toString() {
        return this.f510a.toString() + 'T' + this.f511b.toString();
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: v */
    public C2688f mo741f(long j, InterfaceC2754y interfaceC2754y) {
        if (interfaceC2754y instanceof ChronoUnit) {
            switch (AbstractC2687e.f507a[((ChronoUnit) interfaceC2754y).ordinal()]) {
                case 1:
                    return m908x(j);
                case 2:
                    return m909w(j / 86400000000L).m908x((j % 86400000000L) * 1000);
                case 3:
                    return m909w(j / 86400000).m908x((j % 86400000) * 1000000);
                case 4:
                    return m907y(j);
                case 5:
                    return m906z(this.f510a, 0L, j, 0L, 0L, 1);
                case 6:
                    return m906z(this.f510a, j, 0L, 0L, 0L, 1);
                case 7:
                    C2688f m909w = m909w(j / 256);
                    return m909w.m906z(m909w.f510a, (j % 256) * 12, 0L, 0L, 0L, 1);
                default:
                    return m925E(this.f510a.mo741f(j, interfaceC2754y), this.f511b);
            }
        }
        return (C2688f) interfaceC2754y.mo721a(this, j);
    }

    /* renamed from: w */
    public C2688f m909w(long j) {
        return m925E(this.f510a.m934v(j), this.f511b);
    }

    /* renamed from: x */
    public C2688f m908x(long j) {
        return m906z(this.f510a, 0L, 0L, 0L, j, 1);
    }

    /* renamed from: y */
    public C2688f m907y(long j) {
        return m906z(this.f510a, 0L, 0L, j, 0L, 1);
    }
}
