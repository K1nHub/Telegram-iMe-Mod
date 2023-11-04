package p033j$.time;

import com.google.android.exoplayer2.C0485C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2673d;
import p033j$.time.chrono.C2689h;
import p033j$.time.chrono.InterfaceC2683b;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.C2746m;
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
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2745l;
import p033j$.time.temporal.InterfaceC2748o;
import p033j$.time.temporal.InterfaceC2757x;
import p033j$.time.temporal.InterfaceC2758y;
/* renamed from: j$.time.d */
/* loaded from: classes2.dex */
public final class C2690d implements InterfaceC2743j, InterfaceC2745l, InterfaceC2683b, Serializable {

    /* renamed from: d */
    public static final C2690d f502d = m939r(-999999999, 1, 1);

    /* renamed from: e */
    public static final C2690d f503e = m939r(999999999, 12, 31);

    /* renamed from: a */
    private final int f504a;

    /* renamed from: b */
    private final short f505b;

    /* renamed from: c */
    private final short f506c;

    private C2690d(int i, int i2, int i3) {
        this.f504a = i;
        this.f505b = (short) i2;
        this.f506c = (short) i3;
    }

    /* renamed from: l */
    public static C2690d m945l(InterfaceC2744k interfaceC2744k) {
        Objects.requireNonNull(interfaceC2744k, "temporal");
        int i = AbstractC2756w.f647a;
        C2690d c2690d = (C2690d) interfaceC2744k.mo738g(C2754u.f645a);
        if (c2690d != null) {
            return c2690d;
        }
        throw new DateTimeException("Unable to obtain LocalDate from TemporalAccessor: " + interfaceC2744k + " of type " + interfaceC2744k.getClass().getName());
    }

    /* renamed from: m */
    private int m944m(InterfaceC2748o interfaceC2748o) {
        switch (AbstractC2681c.f498a[((EnumC2734a) interfaceC2748o).ordinal()]) {
            case 1:
                return this.f506c;
            case 2:
                return m942o();
            case 3:
                return ((this.f506c - 1) / 7) + 1;
            case 4:
                int i = this.f504a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return m943n().m960j();
            case 6:
                return ((this.f506c - 1) % 7) + 1;
            case 7:
                return ((m942o() - 1) % 7) + 1;
            case 8:
                throw new C2759z("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((m942o() - 1) / 7) + 1;
            case 10:
                return this.f505b;
            case 11:
                throw new C2759z("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.f504a;
            case 13:
                return this.f504a >= 1 ? 1 : 0;
            default:
                throw new C2759z("Unsupported field: " + interfaceC2748o);
        }
    }

    /* renamed from: r */
    public static C2690d m939r(int i, int i2, int i3) {
        long j = i;
        EnumC2734a.YEAR.m753j(j);
        EnumC2734a.MONTH_OF_YEAR.m753j(i2);
        EnumC2734a.DAY_OF_MONTH.m753j(i3);
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else if (C2689h.f501a.m954c(j)) {
                i4 = 29;
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new DateTimeException("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                StringBuilder m961a = AbstractC2679a.m961a("Invalid date '");
                m961a.append(EnumC2724j.m796m(i2).name());
                m961a.append(" ");
                m961a.append(i3);
                m961a.append("'");
                throw new DateTimeException(m961a.toString());
            }
        }
        return new C2690d(i, i2, i3);
    }

    /* renamed from: s */
    public static C2690d m938s(long j) {
        long j2;
        long j3 = (j + 719528) - 60;
        if (j3 < 0) {
            long j4 = ((j3 + 1) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / 153;
        return new C2690d(EnumC2734a.YEAR.m754i(j5 + j2 + (i2 / 10)), ((i2 + 2) % 12) + 1, (i - (((i2 * 306) + 5) / 10)) + 1);
    }

    /* renamed from: t */
    public static C2690d m937t(int i, int i2) {
        long j = i;
        EnumC2734a.YEAR.m753j(j);
        EnumC2734a.DAY_OF_YEAR.m753j(i2);
        boolean m954c = C2689h.f501a.m954c(j);
        if (i2 == 366 && !m954c) {
            throw new DateTimeException("Invalid date 'DayOfYear 366' as '" + i + "' is not a leap year");
        }
        EnumC2724j m796m = EnumC2724j.m796m(((i2 - 1) / 31) + 1);
        if (i2 > (m796m.m797l(m954c) + m796m.m799j(m954c)) - 1) {
            m796m = m796m.m795n(1L);
        }
        return new C2690d(i, m796m.m798k(), (i2 - m796m.m799j(m954c)) + 1);
    }

    /* renamed from: z */
    private static C2690d m931z(int i, int i2, int i3) {
        int i4;
        if (i2 != 2) {
            if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
                i4 = 30;
            }
            return new C2690d(i, i2, i3);
        }
        i4 = C2689h.f501a.m954c((long) i) ? 29 : 28;
        i3 = Math.min(i3, i4);
        return new C2690d(i, i2, i3);
    }

    /* renamed from: A */
    public long m952A() {
        long j;
        long j2 = this.f504a;
        long j3 = this.f505b;
        long j4 = (365 * j2) + 0;
        if (j2 >= 0) {
            j = ((j2 + 399) / 400) + (((3 + j2) / 4) - ((99 + j2) / 100)) + j4;
        } else {
            j = j4 - ((j2 / (-400)) + ((j2 / (-4)) - (j2 / (-100))));
        }
        long j5 = (((367 * j3) - 362) / 12) + j + (this.f506c - 1);
        if (j3 > 2) {
            j5--;
            if (!m940q()) {
                j5--;
            }
        }
        return j5 - 719528;
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: B */
    public C2690d mo743b(InterfaceC2748o interfaceC2748o, long j) {
        EnumC2734a enumC2734a;
        long m960j;
        EnumC2734a enumC2734a2;
        if (interfaceC2748o instanceof EnumC2734a) {
            EnumC2734a enumC2734a3 = (EnumC2734a) interfaceC2748o;
            enumC2734a3.m753j(j);
            switch (AbstractC2681c.f498a[enumC2734a3.ordinal()]) {
                case 1:
                    int i = (int) j;
                    if (this.f506c != i) {
                        return m939r(this.f504a, this.f505b, i);
                    }
                    return this;
                case 2:
                    int i2 = (int) j;
                    if (m942o() != i2) {
                        return m937t(this.f504a, i2);
                    }
                    return this;
                case 3:
                    enumC2734a = EnumC2734a.ALIGNED_WEEK_OF_MONTH;
                    return m933x(j - mo739e(enumC2734a));
                case 4:
                    if (this.f504a < 1) {
                        j = 1 - j;
                    }
                    return m948E((int) j);
                case 5:
                    m960j = m943n().m960j();
                    return m935v(j - m960j);
                case 6:
                    enumC2734a2 = EnumC2734a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    m960j = mo739e(enumC2734a2);
                    return m935v(j - m960j);
                case 7:
                    enumC2734a2 = EnumC2734a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                    m960j = mo739e(enumC2734a2);
                    return m935v(j - m960j);
                case 8:
                    return m938s(j);
                case 9:
                    enumC2734a = EnumC2734a.ALIGNED_WEEK_OF_YEAR;
                    return m933x(j - mo739e(enumC2734a));
                case 10:
                    int i3 = (int) j;
                    if (this.f505b != i3) {
                        EnumC2734a.MONTH_OF_YEAR.m753j(i3);
                        return m931z(this.f504a, i3, this.f506c);
                    }
                    return this;
                case 11:
                    return m934w(j - (((this.f504a * 12) + this.f505b) - 1));
                case 12:
                    return m948E((int) j);
                case 13:
                    return mo739e(EnumC2734a.ERA) == j ? this : m948E(1 - this.f504a);
                default:
                    throw new C2759z("Unsupported field: " + interfaceC2748o);
            }
        }
        return (C2690d) interfaceC2748o.mo726f(this, j);
    }

    /* renamed from: C */
    public InterfaceC2683b m950C(InterfaceC2745l interfaceC2745l) {
        boolean z = interfaceC2745l instanceof C2690d;
        InterfaceC2743j interfaceC2743j = interfaceC2745l;
        if (!z) {
            interfaceC2743j = ((C2746m) interfaceC2745l).mo736h(this);
        }
        return (C2690d) interfaceC2743j;
    }

    /* renamed from: D */
    public C2690d m949D(int i) {
        return m942o() == i ? this : m937t(this.f504a, i);
    }

    /* renamed from: E */
    public C2690d m948E(int i) {
        if (this.f504a == i) {
            return this;
        }
        EnumC2734a.YEAR.m753j(i);
        return m931z(i, this.f505b, this.f506c);
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: a */
    public InterfaceC2743j mo744a(InterfaceC2745l interfaceC2745l) {
        return (C2690d) interfaceC2745l;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public int mo741c(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? m944m(interfaceC2748o) : AbstractC2747n.m735a(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        int i;
        if (interfaceC2748o instanceof EnumC2734a) {
            EnumC2734a enumC2734a = (EnumC2734a) interfaceC2748o;
            if (!enumC2734a.mo724h()) {
                throw new C2759z("Unsupported field: " + interfaceC2748o);
            }
            int i2 = AbstractC2681c.f498a[enumC2734a.ordinal()];
            if (i2 == 1) {
                short s = this.f505b;
                i = s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : m940q() ? 29 : 28;
            } else if (i2 != 2) {
                if (i2 == 3) {
                    return C2733A.m757i(1L, (EnumC2724j.m796m(this.f505b) != EnumC2724j.FEBRUARY || m940q()) ? 5L : 4L);
                } else if (i2 != 4) {
                    return interfaceC2748o.mo731a();
                } else {
                    return C2733A.m757i(1L, this.f504a <= 0 ? C0485C.NANOS_PER_SECOND : 999999999L);
                }
            } else {
                i = m940q() ? 366 : 365;
            }
            return C2733A.m757i(1L, i);
        }
        return interfaceC2748o.mo725g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o instanceof EnumC2734a) {
            if (interfaceC2748o == EnumC2734a.EPOCH_DAY) {
                return m952A();
            }
            if (interfaceC2748o == EnumC2734a.PROLEPTIC_MONTH) {
                return ((this.f504a * 12) + this.f505b) - 1;
            }
            return m944m(interfaceC2748o);
        }
        return interfaceC2748o.mo728d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2690d) && m946k((C2690d) obj) == 0;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: g */
    public Object mo738g(InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        if (interfaceC2757x == C2754u.f645a) {
            return this;
        }
        if (interfaceC2757x == C2749p.f640a || interfaceC2757x == C2753t.f644a || interfaceC2757x == C2752s.f643a || interfaceC2757x == C2755v.f646a) {
            return null;
        }
        if (interfaceC2757x == C2750q.f641a) {
            return C2689h.f501a;
        }
        return interfaceC2757x == C2751r.f642a ? ChronoUnit.DAYS : interfaceC2757x.mo723a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2745l
    /* renamed from: h */
    public InterfaceC2743j mo736h(InterfaceC2743j interfaceC2743j) {
        return interfaceC2743j.mo743b(EnumC2734a.EPOCH_DAY, m952A());
    }

    public int hashCode() {
        int i = this.f504a;
        return (((i << 11) + (this.f505b << 6)) + this.f506c) ^ (i & (-2048));
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? interfaceC2748o.mo724h() : interfaceC2748o != null && interfaceC2748o.mo727e(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(InterfaceC2683b interfaceC2683b) {
        if (interfaceC2683b instanceof C2690d) {
            return m946k((C2690d) interfaceC2683b);
        }
        int compare = Long.compare(m952A(), ((C2690d) interfaceC2683b).m952A());
        if (compare == 0) {
            C2689h c2689h = C2689h.f501a;
            return 0;
        }
        return compare;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public int m946k(C2690d c2690d) {
        int i = this.f504a - c2690d.f504a;
        if (i == 0) {
            int i2 = this.f505b - c2690d.f505b;
            return i2 == 0 ? this.f506c - c2690d.f506c : i2;
        }
        return i;
    }

    /* renamed from: n */
    public EnumC2680b m943n() {
        return EnumC2680b.m959k(((int) AbstractC2673d.m989d(m952A() + 3, 7L)) + 1);
    }

    /* renamed from: o */
    public int m942o() {
        return (EnumC2724j.m796m(this.f505b).m799j(m940q()) + this.f506c) - 1;
    }

    /* renamed from: p */
    public int m941p() {
        return this.f504a;
    }

    /* renamed from: q */
    public boolean m940q() {
        return C2689h.f501a.m954c(this.f504a);
    }

    public String toString() {
        int i;
        int i2 = this.f504a;
        short s = this.f505b;
        short s2 = this.f506c;
        int abs = Math.abs(i2);
        StringBuilder sb = new StringBuilder(10);
        if (abs < 1000) {
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            if (i2 > 9999) {
                sb.append('+');
            }
            sb.append(i2);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s2 >= 10 ? "-" : "-0");
        sb.append((int) s2);
        return sb.toString();
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: u */
    public C2690d mo742f(long j, InterfaceC2758y interfaceC2758y) {
        if (interfaceC2758y instanceof ChronoUnit) {
            switch (AbstractC2681c.f499b[((ChronoUnit) interfaceC2758y).ordinal()]) {
                case 1:
                    return m935v(j);
                case 2:
                    return m933x(j);
                case 3:
                    return m934w(j);
                case 4:
                    return m932y(j);
                case 5:
                    return m932y(AbstractC2673d.m987f(j, 10L));
                case 6:
                    return m932y(AbstractC2673d.m987f(j, 100L));
                case 7:
                    return m932y(AbstractC2673d.m987f(j, 1000L));
                case 8:
                    EnumC2734a enumC2734a = EnumC2734a.ERA;
                    return mo743b(enumC2734a, AbstractC2673d.m990c(mo739e(enumC2734a), j));
                default:
                    throw new C2759z("Unsupported unit: " + interfaceC2758y);
            }
        }
        return (C2690d) interfaceC2758y.mo722a(this, j);
    }

    /* renamed from: v */
    public C2690d m935v(long j) {
        return j == 0 ? this : m938s(AbstractC2673d.m990c(m952A(), j));
    }

    /* renamed from: w */
    public C2690d m934w(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f504a * 12) + (this.f505b - 1) + j;
        return m931z(EnumC2734a.YEAR.m754i(AbstractC2673d.m988e(j2, 12L)), ((int) AbstractC2673d.m989d(j2, 12L)) + 1, this.f506c);
    }

    /* renamed from: x */
    public C2690d m933x(long j) {
        return m935v(AbstractC2673d.m987f(j, 7L));
    }

    /* renamed from: y */
    public C2690d m932y(long j) {
        return j == 0 ? this : m931z(EnumC2734a.YEAR.m754i(this.f504a + j), this.f505b, this.f506c);
    }
}
