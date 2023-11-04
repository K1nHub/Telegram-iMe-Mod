package p033j$.time;

import com.google.android.exoplayer2.C0485C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2673d;
import p033j$.time.chrono.C2689h;
import p033j$.time.chrono.InterfaceC2683b;
import p033j$.time.chrono.InterfaceC2684c;
import p033j$.time.chrono.InterfaceC2688g;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.C2749p;
import p033j$.time.temporal.C2750q;
import p033j$.time.temporal.C2751r;
import p033j$.time.temporal.C2752s;
import p033j$.time.temporal.C2753t;
import p033j$.time.temporal.C2754u;
import p033j$.time.temporal.C2755v;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2743j;
import p033j$.time.temporal.InterfaceC2745l;
import p033j$.time.temporal.InterfaceC2748o;
import p033j$.time.temporal.InterfaceC2757x;
import p033j$.time.temporal.InterfaceC2758y;
/* renamed from: j$.time.f */
/* loaded from: classes2.dex */
public final class C2692f implements InterfaceC2743j, InterfaceC2745l, InterfaceC2684c, Serializable {

    /* renamed from: c */
    public static final C2692f f508c = m913t(C2690d.f502d, C2722h.f591e);

    /* renamed from: d */
    public static final C2692f f509d = m913t(C2690d.f503e, C2722h.f592f);

    /* renamed from: a */
    private final C2690d f510a;

    /* renamed from: b */
    private final C2722h f511b;

    private C2692f(C2690d c2690d, C2722h c2722h) {
        this.f510a = c2690d;
        this.f511b = c2722h;
    }

    /* renamed from: E */
    private C2692f m926E(C2690d c2690d, C2722h c2722h) {
        return (this.f510a == c2690d && this.f511b == c2722h) ? this : new C2692f(c2690d, c2722h);
    }

    /* renamed from: k */
    private int m922k(C2692f c2692f) {
        int m946k = this.f510a.m946k(c2692f.f510a);
        return m946k == 0 ? this.f511b.compareTo(c2692f.f511b) : m946k;
    }

    /* renamed from: r */
    public static C2692f m915r(int i, int i2, int i3, int i4, int i5) {
        return new C2692f(C2690d.m939r(i, i2, i3), C2722h.m811o(i4, i5));
    }

    /* renamed from: s */
    public static C2692f m914s(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new C2692f(C2690d.m939r(i, i2, i3), C2722h.m810p(i4, i5, i6, i7));
    }

    /* renamed from: t */
    public static C2692f m913t(C2690d c2690d, C2722h c2722h) {
        Objects.requireNonNull(c2690d, "date");
        Objects.requireNonNull(c2722h, "time");
        return new C2692f(c2690d, c2722h);
    }

    /* renamed from: u */
    public static C2692f m912u(long j, int i, C2729o c2729o) {
        long m785p;
        Objects.requireNonNull(c2729o, "offset");
        long j2 = i;
        EnumC2734a.NANO_OF_SECOND.m753j(j2);
        return new C2692f(C2690d.m938s(AbstractC2673d.m988e(j + c2729o.m785p(), 86400L)), C2722h.m809q((((int) AbstractC2673d.m989d(m785p, 86400L)) * C0485C.NANOS_PER_SECOND) + j2));
    }

    /* renamed from: z */
    private C2692f m907z(C2690d c2690d, long j, long j2, long j3, long j4, int i) {
        C2722h m809q;
        C2690d c2690d2 = c2690d;
        if ((j | j2 | j3 | j4) == 0) {
            m809q = this.f511b;
        } else {
            long j5 = i;
            long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * C0485C.NANOS_PER_SECOND) + (j4 % 86400000000000L);
            long m804v = this.f511b.m804v();
            long j7 = (j6 * j5) + m804v;
            long m988e = AbstractC2673d.m988e(j7, 86400000000000L) + (((j / 24) + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L)) * j5);
            long m989d = AbstractC2673d.m989d(j7, 86400000000000L);
            m809q = m989d == m804v ? this.f511b : C2722h.m809q(m989d);
            c2690d2 = c2690d2.m935v(m988e);
        }
        return m926E(c2690d2, m809q);
    }

    /* renamed from: A */
    public long m930A(C2729o c2729o) {
        Objects.requireNonNull(c2729o, "offset");
        return ((((C2690d) m928C()).m952A() * 86400) + m927D().m803w()) - c2729o.m785p();
    }

    /* renamed from: B */
    public C2690d m929B() {
        return this.f510a;
    }

    /* renamed from: C */
    public InterfaceC2683b m928C() {
        return this.f510a;
    }

    /* renamed from: D */
    public C2722h m927D() {
        return this.f511b;
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: F */
    public C2692f mo744a(InterfaceC2745l interfaceC2745l) {
        return interfaceC2745l instanceof C2690d ? m926E((C2690d) interfaceC2745l, this.f511b) : interfaceC2745l instanceof C2722h ? m926E(this.f510a, (C2722h) interfaceC2745l) : interfaceC2745l instanceof C2692f ? (C2692f) interfaceC2745l : (C2692f) interfaceC2745l.mo736h(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: G */
    public C2692f mo743b(InterfaceC2748o interfaceC2748o, long j) {
        return interfaceC2748o instanceof EnumC2734a ? ((EnumC2734a) interfaceC2748o).mo730b() ? m926E(this.f510a, this.f511b.mo743b(interfaceC2748o, j)) : m926E(this.f510a.mo743b(interfaceC2748o, j), this.f511b) : (C2692f) interfaceC2748o.mo726f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public int mo741c(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? ((EnumC2734a) interfaceC2748o).mo730b() ? this.f511b.mo741c(interfaceC2748o) : this.f510a.mo741c(interfaceC2748o) : AbstractC2747n.m735a(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o instanceof EnumC2734a) {
            if (((EnumC2734a) interfaceC2748o).mo730b()) {
                C2722h c2722h = this.f511b;
                Objects.requireNonNull(c2722h);
                return AbstractC2747n.m733c(c2722h, interfaceC2748o);
            }
            return this.f510a.mo740d(interfaceC2748o);
        }
        return interfaceC2748o.mo725g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? ((EnumC2734a) interfaceC2748o).mo730b() ? this.f511b.mo739e(interfaceC2748o) : this.f510a.mo739e(interfaceC2748o) : interfaceC2748o.mo728d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2692f) {
            C2692f c2692f = (C2692f) obj;
            return this.f510a.equals(c2692f.f510a) && this.f511b.equals(c2692f.f511b);
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: g */
    public Object mo738g(InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        if (interfaceC2757x == C2754u.f645a) {
            return this.f510a;
        }
        if (interfaceC2757x == C2749p.f640a || interfaceC2757x == C2753t.f644a || interfaceC2757x == C2752s.f643a) {
            return null;
        }
        if (interfaceC2757x == C2755v.f646a) {
            return m927D();
        }
        if (interfaceC2757x != C2750q.f641a) {
            return interfaceC2757x == C2751r.f642a ? ChronoUnit.NANOS : interfaceC2757x.mo723a(this);
        }
        m921l();
        return C2689h.f501a;
    }

    @Override // p033j$.time.temporal.InterfaceC2745l
    /* renamed from: h */
    public InterfaceC2743j mo736h(InterfaceC2743j interfaceC2743j) {
        return interfaceC2743j.mo743b(EnumC2734a.EPOCH_DAY, this.f510a.m952A()).mo743b(EnumC2734a.NANO_OF_DAY, this.f511b.m804v());
    }

    public int hashCode() {
        return this.f510a.hashCode() ^ this.f511b.hashCode();
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        if (!(interfaceC2748o instanceof EnumC2734a)) {
            return interfaceC2748o != null && interfaceC2748o.mo727e(this);
        }
        EnumC2734a enumC2734a = (EnumC2734a) interfaceC2748o;
        return enumC2734a.mo724h() || enumC2734a.mo730b();
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(InterfaceC2684c interfaceC2684c) {
        if (interfaceC2684c instanceof C2692f) {
            return m922k((C2692f) interfaceC2684c);
        }
        C2692f c2692f = (C2692f) interfaceC2684c;
        int compareTo = ((C2690d) m928C()).compareTo(c2692f.m928C());
        if (compareTo == 0) {
            int compareTo2 = m927D().compareTo(c2692f.m927D());
            if (compareTo2 == 0) {
                m921l();
                C2689h c2689h = C2689h.f501a;
                c2692f.m921l();
                return 0;
            }
            return compareTo2;
        }
        return compareTo;
    }

    /* renamed from: l */
    public InterfaceC2688g m921l() {
        Objects.requireNonNull((C2690d) m928C());
        return C2689h.f501a;
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
    public boolean m917p(InterfaceC2684c interfaceC2684c) {
        if (interfaceC2684c instanceof C2692f) {
            return m922k((C2692f) interfaceC2684c) > 0;
        }
        C2692f c2692f = (C2692f) interfaceC2684c;
        int i = (((C2690d) m928C()).m952A() > ((C2690d) c2692f.m928C()).m952A() ? 1 : (((C2690d) m928C()).m952A() == ((C2690d) c2692f.m928C()).m952A() ? 0 : -1));
        return i > 0 || (i == 0 && m927D().m804v() > c2692f.m927D().m804v());
    }

    /* renamed from: q */
    public boolean m916q(InterfaceC2684c interfaceC2684c) {
        if (interfaceC2684c instanceof C2692f) {
            return m922k((C2692f) interfaceC2684c) < 0;
        }
        C2692f c2692f = (C2692f) interfaceC2684c;
        int i = (((C2690d) m928C()).m952A() > ((C2690d) c2692f.m928C()).m952A() ? 1 : (((C2690d) m928C()).m952A() == ((C2690d) c2692f.m928C()).m952A() ? 0 : -1));
        return i < 0 || (i == 0 && m927D().m804v() < c2692f.m927D().m804v());
    }

    public String toString() {
        return this.f510a.toString() + 'T' + this.f511b.toString();
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: v */
    public C2692f mo742f(long j, InterfaceC2758y interfaceC2758y) {
        if (interfaceC2758y instanceof ChronoUnit) {
            switch (AbstractC2691e.f507a[((ChronoUnit) interfaceC2758y).ordinal()]) {
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
                    C2692f m910w = m910w(j / 256);
                    return m910w.m907z(m910w.f510a, (j % 256) * 12, 0L, 0L, 0L, 1);
                default:
                    return m926E(this.f510a.mo742f(j, interfaceC2758y), this.f511b);
            }
        }
        return (C2692f) interfaceC2758y.mo722a(this, j);
    }

    /* renamed from: w */
    public C2692f m910w(long j) {
        return m926E(this.f510a.m935v(j), this.f511b);
    }

    /* renamed from: x */
    public C2692f m909x(long j) {
        return m907z(this.f510a, 0L, 0L, 0L, j, 1);
    }

    /* renamed from: y */
    public C2692f m908y(long j) {
        return m907z(this.f510a, 0L, 0L, j, 0L, 1);
    }
}
