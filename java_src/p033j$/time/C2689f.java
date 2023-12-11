package p033j$.time;

import com.google.android.exoplayer2.C0485C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2670d;
import p033j$.time.chrono.C2686h;
import p033j$.time.chrono.InterfaceC2680b;
import p033j$.time.chrono.InterfaceC2681c;
import p033j$.time.chrono.InterfaceC2685g;
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
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2740j;
import p033j$.time.temporal.InterfaceC2742l;
import p033j$.time.temporal.InterfaceC2745o;
import p033j$.time.temporal.InterfaceC2754x;
import p033j$.time.temporal.InterfaceC2755y;
/* renamed from: j$.time.f */
/* loaded from: classes2.dex */
public final class C2689f implements InterfaceC2740j, InterfaceC2742l, InterfaceC2681c, Serializable {

    /* renamed from: c */
    public static final C2689f f508c = m913t(C2687d.f502d, C2719h.f591e);

    /* renamed from: d */
    public static final C2689f f509d = m913t(C2687d.f503e, C2719h.f592f);

    /* renamed from: a */
    private final C2687d f510a;

    /* renamed from: b */
    private final C2719h f511b;

    private C2689f(C2687d c2687d, C2719h c2719h) {
        this.f510a = c2687d;
        this.f511b = c2719h;
    }

    /* renamed from: E */
    private C2689f m926E(C2687d c2687d, C2719h c2719h) {
        return (this.f510a == c2687d && this.f511b == c2719h) ? this : new C2689f(c2687d, c2719h);
    }

    /* renamed from: k */
    private int m922k(C2689f c2689f) {
        int m946k = this.f510a.m946k(c2689f.f510a);
        return m946k == 0 ? this.f511b.compareTo(c2689f.f511b) : m946k;
    }

    /* renamed from: r */
    public static C2689f m915r(int i, int i2, int i3, int i4, int i5) {
        return new C2689f(C2687d.m939r(i, i2, i3), C2719h.m811o(i4, i5));
    }

    /* renamed from: s */
    public static C2689f m914s(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new C2689f(C2687d.m939r(i, i2, i3), C2719h.m810p(i4, i5, i6, i7));
    }

    /* renamed from: t */
    public static C2689f m913t(C2687d c2687d, C2719h c2719h) {
        Objects.requireNonNull(c2687d, "date");
        Objects.requireNonNull(c2719h, "time");
        return new C2689f(c2687d, c2719h);
    }

    /* renamed from: u */
    public static C2689f m912u(long j, int i, C2726o c2726o) {
        long m785p;
        Objects.requireNonNull(c2726o, "offset");
        long j2 = i;
        EnumC2731a.NANO_OF_SECOND.m753j(j2);
        return new C2689f(C2687d.m938s(AbstractC2670d.m988e(j + c2726o.m785p(), 86400L)), C2719h.m809q((((int) AbstractC2670d.m989d(m785p, 86400L)) * C0485C.NANOS_PER_SECOND) + j2));
    }

    /* renamed from: z */
    private C2689f m907z(C2687d c2687d, long j, long j2, long j3, long j4, int i) {
        C2719h m809q;
        C2687d c2687d2 = c2687d;
        if ((j | j2 | j3 | j4) == 0) {
            m809q = this.f511b;
        } else {
            long j5 = i;
            long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * C0485C.NANOS_PER_SECOND) + (j4 % 86400000000000L);
            long m804v = this.f511b.m804v();
            long j7 = (j6 * j5) + m804v;
            long m988e = AbstractC2670d.m988e(j7, 86400000000000L) + (((j / 24) + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L)) * j5);
            long m989d = AbstractC2670d.m989d(j7, 86400000000000L);
            m809q = m989d == m804v ? this.f511b : C2719h.m809q(m989d);
            c2687d2 = c2687d2.m935v(m988e);
        }
        return m926E(c2687d2, m809q);
    }

    /* renamed from: A */
    public long m930A(C2726o c2726o) {
        Objects.requireNonNull(c2726o, "offset");
        return ((((C2687d) m928C()).m952A() * 86400) + m927D().m803w()) - c2726o.m785p();
    }

    /* renamed from: B */
    public C2687d m929B() {
        return this.f510a;
    }

    /* renamed from: C */
    public InterfaceC2680b m928C() {
        return this.f510a;
    }

    /* renamed from: D */
    public C2719h m927D() {
        return this.f511b;
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: F */
    public C2689f mo744a(InterfaceC2742l interfaceC2742l) {
        return interfaceC2742l instanceof C2687d ? m926E((C2687d) interfaceC2742l, this.f511b) : interfaceC2742l instanceof C2719h ? m926E(this.f510a, (C2719h) interfaceC2742l) : interfaceC2742l instanceof C2689f ? (C2689f) interfaceC2742l : (C2689f) interfaceC2742l.mo736h(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: G */
    public C2689f mo743b(InterfaceC2745o interfaceC2745o, long j) {
        return interfaceC2745o instanceof EnumC2731a ? ((EnumC2731a) interfaceC2745o).mo730b() ? m926E(this.f510a, this.f511b.mo743b(interfaceC2745o, j)) : m926E(this.f510a.mo743b(interfaceC2745o, j), this.f511b) : (C2689f) interfaceC2745o.mo726f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: c */
    public int mo741c(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o instanceof EnumC2731a ? ((EnumC2731a) interfaceC2745o).mo730b() ? this.f511b.mo741c(interfaceC2745o) : this.f510a.mo741c(interfaceC2745o) : AbstractC2744n.m735a(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: d */
    public C2730A mo740d(InterfaceC2745o interfaceC2745o) {
        if (interfaceC2745o instanceof EnumC2731a) {
            if (((EnumC2731a) interfaceC2745o).mo730b()) {
                C2719h c2719h = this.f511b;
                Objects.requireNonNull(c2719h);
                return AbstractC2744n.m733c(c2719h, interfaceC2745o);
            }
            return this.f510a.mo740d(interfaceC2745o);
        }
        return interfaceC2745o.mo725g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: e */
    public long mo739e(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o instanceof EnumC2731a ? ((EnumC2731a) interfaceC2745o).mo730b() ? this.f511b.mo739e(interfaceC2745o) : this.f510a.mo739e(interfaceC2745o) : interfaceC2745o.mo728d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2689f) {
            C2689f c2689f = (C2689f) obj;
            return this.f510a.equals(c2689f.f510a) && this.f511b.equals(c2689f.f511b);
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: g */
    public Object mo738g(InterfaceC2754x interfaceC2754x) {
        int i = AbstractC2753w.f647a;
        if (interfaceC2754x == C2751u.f645a) {
            return this.f510a;
        }
        if (interfaceC2754x == C2746p.f640a || interfaceC2754x == C2750t.f644a || interfaceC2754x == C2749s.f643a) {
            return null;
        }
        if (interfaceC2754x == C2752v.f646a) {
            return m927D();
        }
        if (interfaceC2754x != C2747q.f641a) {
            return interfaceC2754x == C2748r.f642a ? ChronoUnit.NANOS : interfaceC2754x.mo723a(this);
        }
        m921l();
        return C2686h.f501a;
    }

    @Override // p033j$.time.temporal.InterfaceC2742l
    /* renamed from: h */
    public InterfaceC2740j mo736h(InterfaceC2740j interfaceC2740j) {
        return interfaceC2740j.mo743b(EnumC2731a.EPOCH_DAY, this.f510a.m952A()).mo743b(EnumC2731a.NANO_OF_DAY, this.f511b.m804v());
    }

    public int hashCode() {
        return this.f510a.hashCode() ^ this.f511b.hashCode();
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2745o interfaceC2745o) {
        if (!(interfaceC2745o instanceof EnumC2731a)) {
            return interfaceC2745o != null && interfaceC2745o.mo727e(this);
        }
        EnumC2731a enumC2731a = (EnumC2731a) interfaceC2745o;
        return enumC2731a.mo724h() || enumC2731a.mo730b();
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(InterfaceC2681c interfaceC2681c) {
        if (interfaceC2681c instanceof C2689f) {
            return m922k((C2689f) interfaceC2681c);
        }
        C2689f c2689f = (C2689f) interfaceC2681c;
        int compareTo = ((C2687d) m928C()).compareTo(c2689f.m928C());
        if (compareTo == 0) {
            int compareTo2 = m927D().compareTo(c2689f.m927D());
            if (compareTo2 == 0) {
                m921l();
                C2686h c2686h = C2686h.f501a;
                c2689f.m921l();
                return 0;
            }
            return compareTo2;
        }
        return compareTo;
    }

    /* renamed from: l */
    public InterfaceC2685g m921l() {
        Objects.requireNonNull((C2687d) m928C());
        return C2686h.f501a;
    }

    /* renamed from: m */
    public int m920m() {
        return this.f511b.m813m();
    }

    /* renamed from: n */
    public int m919n() {
        return this.f511b.m812n();
    }

    /* renamed from: o */
    public int m918o() {
        return this.f510a.m941p();
    }

    /* renamed from: p */
    public boolean m917p(InterfaceC2681c interfaceC2681c) {
        if (interfaceC2681c instanceof C2689f) {
            return m922k((C2689f) interfaceC2681c) > 0;
        }
        C2689f c2689f = (C2689f) interfaceC2681c;
        int i = (((C2687d) m928C()).m952A() > ((C2687d) c2689f.m928C()).m952A() ? 1 : (((C2687d) m928C()).m952A() == ((C2687d) c2689f.m928C()).m952A() ? 0 : -1));
        return i > 0 || (i == 0 && m927D().m804v() > c2689f.m927D().m804v());
    }

    /* renamed from: q */
    public boolean m916q(InterfaceC2681c interfaceC2681c) {
        if (interfaceC2681c instanceof C2689f) {
            return m922k((C2689f) interfaceC2681c) < 0;
        }
        C2689f c2689f = (C2689f) interfaceC2681c;
        int i = (((C2687d) m928C()).m952A() > ((C2687d) c2689f.m928C()).m952A() ? 1 : (((C2687d) m928C()).m952A() == ((C2687d) c2689f.m928C()).m952A() ? 0 : -1));
        return i < 0 || (i == 0 && m927D().m804v() < c2689f.m927D().m804v());
    }

    public String toString() {
        return this.f510a.toString() + 'T' + this.f511b.toString();
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: v */
    public C2689f mo742f(long j, InterfaceC2755y interfaceC2755y) {
        if (interfaceC2755y instanceof ChronoUnit) {
            switch (AbstractC2688e.f507a[((ChronoUnit) interfaceC2755y).ordinal()]) {
                case 1:
                    return m909x(j);
                case 2:
                    return m910w(j / 86400000000L).m909x((j % 86400000000L) * 1000);
                case 3:
                    return m910w(j / 86400000).m909x((j % 86400000) * 1000000);
                case 4:
                    return m908y(j);
                case 5:
                    return m907z(this.f510a, 0L, j, 0L, 0L, 1);
                case 6:
                    return m907z(this.f510a, j, 0L, 0L, 0L, 1);
                case 7:
                    C2689f m910w = m910w(j / 256);
                    return m910w.m907z(m910w.f510a, (j % 256) * 12, 0L, 0L, 0L, 1);
                default:
                    return m926E(this.f510a.mo742f(j, interfaceC2755y), this.f511b);
            }
        }
        return (C2689f) interfaceC2755y.mo722a(this, j);
    }

    /* renamed from: w */
    public C2689f m910w(long j) {
        return m926E(this.f510a.m935v(j), this.f511b);
    }

    /* renamed from: x */
    public C2689f m909x(long j) {
        return m907z(this.f510a, 0L, 0L, 0L, j, 1);
    }

    /* renamed from: y */
    public C2689f m908y(long j) {
        return m907z(this.f510a, 0L, 0L, j, 0L, 1);
    }
}
