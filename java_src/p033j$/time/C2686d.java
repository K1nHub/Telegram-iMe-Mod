package p033j$.time;

import com.google.android.exoplayer2.C0479C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2669d;
import p033j$.time.chrono.C2685h;
import p033j$.time.chrono.InterfaceC2679b;
import p033j$.time.temporal.AbstractC2743n;
import p033j$.time.temporal.AbstractC2752w;
import p033j$.time.temporal.C2729A;
import p033j$.time.temporal.C2742m;
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
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2741l;
import p033j$.time.temporal.InterfaceC2744o;
import p033j$.time.temporal.InterfaceC2753x;
import p033j$.time.temporal.InterfaceC2754y;
/* renamed from: j$.time.d */
/* loaded from: classes2.dex */
public final class C2686d implements InterfaceC2739j, InterfaceC2741l, InterfaceC2679b, Serializable {

    /* renamed from: d */
    public static final C2686d f502d = m938r(-999999999, 1, 1);

    /* renamed from: e */
    public static final C2686d f503e = m938r(999999999, 12, 31);

    /* renamed from: a */
    private final int f504a;

    /* renamed from: b */
    private final short f505b;

    /* renamed from: c */
    private final short f506c;

    private C2686d(int i, int i2, int i3) {
        this.f504a = i;
        this.f505b = (short) i2;
        this.f506c = (short) i3;
    }

    /* renamed from: l */
    public static C2686d m944l(InterfaceC2740k interfaceC2740k) {
        Objects.requireNonNull(interfaceC2740k, "temporal");
        int i = AbstractC2752w.f647a;
        C2686d c2686d = (C2686d) interfaceC2740k.mo737g(C2750u.f645a);
        if (c2686d != null) {
            return c2686d;
        }
        throw new DateTimeException("Unable to obtain LocalDate from TemporalAccessor: " + interfaceC2740k + " of type " + interfaceC2740k.getClass().getName());
    }

    /* renamed from: m */
    private int m943m(InterfaceC2744o interfaceC2744o) {
        switch (AbstractC2677c.f498a[((EnumC2730a) interfaceC2744o).ordinal()]) {
            case 1:
                return this.f506c;
            case 2:
                return m941o();
            case 3:
                return ((this.f506c - 1) / 7) + 1;
            case 4:
                int i = this.f504a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return m942n().m959j();
            case 6:
                return ((this.f506c - 1) % 7) + 1;
            case 7:
                return ((m941o() - 1) % 7) + 1;
            case 8:
                throw new C2755z("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((m941o() - 1) / 7) + 1;
            case 10:
                return this.f505b;
            case 11:
                throw new C2755z("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.f504a;
            case 13:
                return this.f504a >= 1 ? 1 : 0;
            default:
                throw new C2755z("Unsupported field: " + interfaceC2744o);
        }
    }

    /* renamed from: r */
    public static C2686d m938r(int i, int i2, int i3) {
        long j = i;
        EnumC2730a.YEAR.m752j(j);
        EnumC2730a.MONTH_OF_YEAR.m752j(i2);
        EnumC2730a.DAY_OF_MONTH.m752j(i3);
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else if (C2685h.f501a.m953c(j)) {
                i4 = 29;
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new DateTimeException("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                StringBuilder m960a = AbstractC2675a.m960a("Invalid date '");
                m960a.append(EnumC2720j.m795m(i2).name());
                m960a.append(" ");
                m960a.append(i3);
                m960a.append("'");
                throw new DateTimeException(m960a.toString());
            }
        }
        return new C2686d(i, i2, i3);
    }

    /* renamed from: s */
    public static C2686d m937s(long j) {
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
        return new C2686d(EnumC2730a.YEAR.m753i(j5 + j2 + (i2 / 10)), ((i2 + 2) % 12) + 1, (i - (((i2 * 306) + 5) / 10)) + 1);
    }

    /* renamed from: t */
    public static C2686d m936t(int i, int i2) {
        long j = i;
        EnumC2730a.YEAR.m752j(j);
        EnumC2730a.DAY_OF_YEAR.m752j(i2);
        boolean m953c = C2685h.f501a.m953c(j);
        if (i2 == 366 && !m953c) {
            throw new DateTimeException("Invalid date 'DayOfYear 366' as '" + i + "' is not a leap year");
        }
        EnumC2720j m795m = EnumC2720j.m795m(((i2 - 1) / 31) + 1);
        if (i2 > (m795m.m796l(m953c) + m795m.m798j(m953c)) - 1) {
            m795m = m795m.m794n(1L);
        }
        return new C2686d(i, m795m.m797k(), (i2 - m795m.m798j(m953c)) + 1);
    }

    /* renamed from: z */
    private static C2686d m930z(int i, int i2, int i3) {
        int i4;
        if (i2 != 2) {
            if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
                i4 = 30;
            }
            return new C2686d(i, i2, i3);
        }
        i4 = C2685h.f501a.m953c((long) i) ? 29 : 28;
        i3 = Math.min(i3, i4);
        return new C2686d(i, i2, i3);
    }

    /* renamed from: A */
    public long m951A() {
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
            if (!m939q()) {
                j5--;
            }
        }
        return j5 - 719528;
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: B */
    public C2686d mo742b(InterfaceC2744o interfaceC2744o, long j) {
        EnumC2730a enumC2730a;
        long m959j;
        EnumC2730a enumC2730a2;
        if (interfaceC2744o instanceof EnumC2730a) {
            EnumC2730a enumC2730a3 = (EnumC2730a) interfaceC2744o;
            enumC2730a3.m752j(j);
            switch (AbstractC2677c.f498a[enumC2730a3.ordinal()]) {
                case 1:
                    int i = (int) j;
                    if (this.f506c != i) {
                        return m938r(this.f504a, this.f505b, i);
                    }
                    return this;
                case 2:
                    int i2 = (int) j;
                    if (m941o() != i2) {
                        return m936t(this.f504a, i2);
                    }
                    return this;
                case 3:
                    enumC2730a = EnumC2730a.ALIGNED_WEEK_OF_MONTH;
                    return m932x(j - mo738e(enumC2730a));
                case 4:
                    if (this.f504a < 1) {
                        j = 1 - j;
                    }
                    return m947E((int) j);
                case 5:
                    m959j = m942n().m959j();
                    return m934v(j - m959j);
                case 6:
                    enumC2730a2 = EnumC2730a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    m959j = mo738e(enumC2730a2);
                    return m934v(j - m959j);
                case 7:
                    enumC2730a2 = EnumC2730a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                    m959j = mo738e(enumC2730a2);
                    return m934v(j - m959j);
                case 8:
                    return m937s(j);
                case 9:
                    enumC2730a = EnumC2730a.ALIGNED_WEEK_OF_YEAR;
                    return m932x(j - mo738e(enumC2730a));
                case 10:
                    int i3 = (int) j;
                    if (this.f505b != i3) {
                        EnumC2730a.MONTH_OF_YEAR.m752j(i3);
                        return m930z(this.f504a, i3, this.f506c);
                    }
                    return this;
                case 11:
                    return m933w(j - (((this.f504a * 12) + this.f505b) - 1));
                case 12:
                    return m947E((int) j);
                case 13:
                    return mo738e(EnumC2730a.ERA) == j ? this : m947E(1 - this.f504a);
                default:
                    throw new C2755z("Unsupported field: " + interfaceC2744o);
            }
        }
        return (C2686d) interfaceC2744o.mo725f(this, j);
    }

    /* renamed from: C */
    public InterfaceC2679b m949C(InterfaceC2741l interfaceC2741l) {
        boolean z = interfaceC2741l instanceof C2686d;
        InterfaceC2739j interfaceC2739j = interfaceC2741l;
        if (!z) {
            interfaceC2739j = ((C2742m) interfaceC2741l).mo735h(this);
        }
        return (C2686d) interfaceC2739j;
    }

    /* renamed from: D */
    public C2686d m948D(int i) {
        return m941o() == i ? this : m936t(this.f504a, i);
    }

    /* renamed from: E */
    public C2686d m947E(int i) {
        if (this.f504a == i) {
            return this;
        }
        EnumC2730a.YEAR.m752j(i);
        return m930z(i, this.f505b, this.f506c);
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: a */
    public InterfaceC2739j mo743a(InterfaceC2741l interfaceC2741l) {
        return (C2686d) interfaceC2741l;
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public int mo740c(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? m943m(interfaceC2744o) : AbstractC2743n.m734a(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        int i;
        if (interfaceC2744o instanceof EnumC2730a) {
            EnumC2730a enumC2730a = (EnumC2730a) interfaceC2744o;
            if (!enumC2730a.mo723h()) {
                throw new C2755z("Unsupported field: " + interfaceC2744o);
            }
            int i2 = AbstractC2677c.f498a[enumC2730a.ordinal()];
            if (i2 == 1) {
                short s = this.f505b;
                i = s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : m939q() ? 29 : 28;
            } else if (i2 != 2) {
                if (i2 == 3) {
                    return C2729A.m756i(1L, (EnumC2720j.m795m(this.f505b) != EnumC2720j.FEBRUARY || m939q()) ? 5L : 4L);
                } else if (i2 != 4) {
                    return interfaceC2744o.mo730a();
                } else {
                    return C2729A.m756i(1L, this.f504a <= 0 ? C0479C.NANOS_PER_SECOND : 999999999L);
                }
            } else {
                i = m939q() ? 366 : 365;
            }
            return C2729A.m756i(1L, i);
        }
        return interfaceC2744o.mo724g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o instanceof EnumC2730a) {
            if (interfaceC2744o == EnumC2730a.EPOCH_DAY) {
                return m951A();
            }
            if (interfaceC2744o == EnumC2730a.PROLEPTIC_MONTH) {
                return ((this.f504a * 12) + this.f505b) - 1;
            }
            return m943m(interfaceC2744o);
        }
        return interfaceC2744o.mo727d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2686d) && m945k((C2686d) obj) == 0;
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: g */
    public Object mo737g(InterfaceC2753x interfaceC2753x) {
        int i = AbstractC2752w.f647a;
        if (interfaceC2753x == C2750u.f645a) {
            return this;
        }
        if (interfaceC2753x == C2745p.f640a || interfaceC2753x == C2749t.f644a || interfaceC2753x == C2748s.f643a || interfaceC2753x == C2751v.f646a) {
            return null;
        }
        if (interfaceC2753x == C2746q.f641a) {
            return C2685h.f501a;
        }
        return interfaceC2753x == C2747r.f642a ? ChronoUnit.DAYS : interfaceC2753x.mo722a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2741l
    /* renamed from: h */
    public InterfaceC2739j mo735h(InterfaceC2739j interfaceC2739j) {
        return interfaceC2739j.mo742b(EnumC2730a.EPOCH_DAY, m951A());
    }

    public int hashCode() {
        int i = this.f504a;
        return (((i << 11) + (this.f505b << 6)) + this.f506c) ^ (i & (-2048));
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? interfaceC2744o.mo723h() : interfaceC2744o != null && interfaceC2744o.mo726e(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(InterfaceC2679b interfaceC2679b) {
        if (interfaceC2679b instanceof C2686d) {
            return m945k((C2686d) interfaceC2679b);
        }
        int compare = Long.compare(m951A(), ((C2686d) interfaceC2679b).m951A());
        if (compare == 0) {
            C2685h c2685h = C2685h.f501a;
            return 0;
        }
        return compare;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public int m945k(C2686d c2686d) {
        int i = this.f504a - c2686d.f504a;
        if (i == 0) {
            int i2 = this.f505b - c2686d.f505b;
            return i2 == 0 ? this.f506c - c2686d.f506c : i2;
        }
        return i;
    }

    /* renamed from: n */
    public EnumC2676b m942n() {
        return EnumC2676b.m958k(((int) AbstractC2669d.m988d(m951A() + 3, 7L)) + 1);
    }

    /* renamed from: o */
    public int m941o() {
        return (EnumC2720j.m795m(this.f505b).m798j(m939q()) + this.f506c) - 1;
    }

    /* renamed from: p */
    public int m940p() {
        return this.f504a;
    }

    /* renamed from: q */
    public boolean m939q() {
        return C2685h.f501a.m953c(this.f504a);
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

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: u */
    public C2686d mo741f(long j, InterfaceC2754y interfaceC2754y) {
        if (interfaceC2754y instanceof ChronoUnit) {
            switch (AbstractC2677c.f499b[((ChronoUnit) interfaceC2754y).ordinal()]) {
                case 1:
                    return m934v(j);
                case 2:
                    return m932x(j);
                case 3:
                    return m933w(j);
                case 4:
                    return m931y(j);
                case 5:
                    return m931y(AbstractC2669d.m986f(j, 10L));
                case 6:
                    return m931y(AbstractC2669d.m986f(j, 100L));
                case 7:
                    return m931y(AbstractC2669d.m986f(j, 1000L));
                case 8:
                    EnumC2730a enumC2730a = EnumC2730a.ERA;
                    return mo742b(enumC2730a, AbstractC2669d.m989c(mo738e(enumC2730a), j));
                default:
                    throw new C2755z("Unsupported unit: " + interfaceC2754y);
            }
        }
        return (C2686d) interfaceC2754y.mo721a(this, j);
    }

    /* renamed from: v */
    public C2686d m934v(long j) {
        return j == 0 ? this : m937s(AbstractC2669d.m989c(m951A(), j));
    }

    /* renamed from: w */
    public C2686d m933w(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f504a * 12) + (this.f505b - 1) + j;
        return m930z(EnumC2730a.YEAR.m753i(AbstractC2669d.m987e(j2, 12L)), ((int) AbstractC2669d.m988d(j2, 12L)) + 1, this.f506c);
    }

    /* renamed from: x */
    public C2686d m932x(long j) {
        return m934v(AbstractC2669d.m986f(j, 7L));
    }

    /* renamed from: y */
    public C2686d m931y(long j) {
        return j == 0 ? this : m930z(EnumC2730a.YEAR.m753i(this.f504a + j), this.f505b, this.f506c);
    }
}
