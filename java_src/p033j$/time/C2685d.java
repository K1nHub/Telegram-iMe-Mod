package p033j$.time;

import com.google.android.exoplayer2.C0483C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2668d;
import p033j$.time.chrono.C2684h;
import p033j$.time.chrono.InterfaceC2678b;
import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2728A;
import p033j$.time.temporal.C2741m;
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
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2740l;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
import p033j$.time.temporal.InterfaceC2753y;
/* renamed from: j$.time.d */
/* loaded from: classes2.dex */
public final class C2685d implements InterfaceC2738j, InterfaceC2740l, InterfaceC2678b, Serializable {

    /* renamed from: d */
    public static final C2685d f502d = m942r(-999999999, 1, 1);

    /* renamed from: e */
    public static final C2685d f503e = m942r(999999999, 12, 31);

    /* renamed from: a */
    private final int f504a;

    /* renamed from: b */
    private final short f505b;

    /* renamed from: c */
    private final short f506c;

    private C2685d(int i, int i2, int i3) {
        this.f504a = i;
        this.f505b = (short) i2;
        this.f506c = (short) i3;
    }

    /* renamed from: l */
    public static C2685d m948l(InterfaceC2739k interfaceC2739k) {
        Objects.requireNonNull(interfaceC2739k, "temporal");
        int i = AbstractC2751w.f647a;
        C2685d c2685d = (C2685d) interfaceC2739k.mo741g(C2749u.f645a);
        if (c2685d != null) {
            return c2685d;
        }
        throw new DateTimeException("Unable to obtain LocalDate from TemporalAccessor: " + interfaceC2739k + " of type " + interfaceC2739k.getClass().getName());
    }

    /* renamed from: m */
    private int m947m(InterfaceC2743o interfaceC2743o) {
        switch (AbstractC2676c.f498a[((EnumC2729a) interfaceC2743o).ordinal()]) {
            case 1:
                return this.f506c;
            case 2:
                return m945o();
            case 3:
                return ((this.f506c - 1) / 7) + 1;
            case 4:
                int i = this.f504a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return m946n().m963j();
            case 6:
                return ((this.f506c - 1) % 7) + 1;
            case 7:
                return ((m945o() - 1) % 7) + 1;
            case 8:
                throw new C2754z("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((m945o() - 1) / 7) + 1;
            case 10:
                return this.f505b;
            case 11:
                throw new C2754z("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.f504a;
            case 13:
                return this.f504a >= 1 ? 1 : 0;
            default:
                throw new C2754z("Unsupported field: " + interfaceC2743o);
        }
    }

    /* renamed from: r */
    public static C2685d m942r(int i, int i2, int i3) {
        long j = i;
        EnumC2729a.YEAR.m756j(j);
        EnumC2729a.MONTH_OF_YEAR.m756j(i2);
        EnumC2729a.DAY_OF_MONTH.m756j(i3);
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else if (C2684h.f501a.m957c(j)) {
                i4 = 29;
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new DateTimeException("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                StringBuilder m964a = AbstractC2674a.m964a("Invalid date '");
                m964a.append(EnumC2719j.m799m(i2).name());
                m964a.append(" ");
                m964a.append(i3);
                m964a.append("'");
                throw new DateTimeException(m964a.toString());
            }
        }
        return new C2685d(i, i2, i3);
    }

    /* renamed from: s */
    public static C2685d m941s(long j) {
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
        return new C2685d(EnumC2729a.YEAR.m757i(j5 + j2 + (i2 / 10)), ((i2 + 2) % 12) + 1, (i - (((i2 * 306) + 5) / 10)) + 1);
    }

    /* renamed from: t */
    public static C2685d m940t(int i, int i2) {
        long j = i;
        EnumC2729a.YEAR.m756j(j);
        EnumC2729a.DAY_OF_YEAR.m756j(i2);
        boolean m957c = C2684h.f501a.m957c(j);
        if (i2 == 366 && !m957c) {
            throw new DateTimeException("Invalid date 'DayOfYear 366' as '" + i + "' is not a leap year");
        }
        EnumC2719j m799m = EnumC2719j.m799m(((i2 - 1) / 31) + 1);
        if (i2 > (m799m.m800l(m957c) + m799m.m802j(m957c)) - 1) {
            m799m = m799m.m798n(1L);
        }
        return new C2685d(i, m799m.m801k(), (i2 - m799m.m802j(m957c)) + 1);
    }

    /* renamed from: z */
    private static C2685d m934z(int i, int i2, int i3) {
        int i4;
        if (i2 != 2) {
            if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
                i4 = 30;
            }
            return new C2685d(i, i2, i3);
        }
        i4 = C2684h.f501a.m957c((long) i) ? 29 : 28;
        i3 = Math.min(i3, i4);
        return new C2685d(i, i2, i3);
    }

    /* renamed from: A */
    public long m955A() {
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
            if (!m943q()) {
                j5--;
            }
        }
        return j5 - 719528;
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: B */
    public C2685d mo746b(InterfaceC2743o interfaceC2743o, long j) {
        EnumC2729a enumC2729a;
        long m963j;
        EnumC2729a enumC2729a2;
        if (interfaceC2743o instanceof EnumC2729a) {
            EnumC2729a enumC2729a3 = (EnumC2729a) interfaceC2743o;
            enumC2729a3.m756j(j);
            switch (AbstractC2676c.f498a[enumC2729a3.ordinal()]) {
                case 1:
                    int i = (int) j;
                    if (this.f506c != i) {
                        return m942r(this.f504a, this.f505b, i);
                    }
                    return this;
                case 2:
                    int i2 = (int) j;
                    if (m945o() != i2) {
                        return m940t(this.f504a, i2);
                    }
                    return this;
                case 3:
                    enumC2729a = EnumC2729a.ALIGNED_WEEK_OF_MONTH;
                    return m936x(j - mo742e(enumC2729a));
                case 4:
                    if (this.f504a < 1) {
                        j = 1 - j;
                    }
                    return m951E((int) j);
                case 5:
                    m963j = m946n().m963j();
                    return m938v(j - m963j);
                case 6:
                    enumC2729a2 = EnumC2729a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    m963j = mo742e(enumC2729a2);
                    return m938v(j - m963j);
                case 7:
                    enumC2729a2 = EnumC2729a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                    m963j = mo742e(enumC2729a2);
                    return m938v(j - m963j);
                case 8:
                    return m941s(j);
                case 9:
                    enumC2729a = EnumC2729a.ALIGNED_WEEK_OF_YEAR;
                    return m936x(j - mo742e(enumC2729a));
                case 10:
                    int i3 = (int) j;
                    if (this.f505b != i3) {
                        EnumC2729a.MONTH_OF_YEAR.m756j(i3);
                        return m934z(this.f504a, i3, this.f506c);
                    }
                    return this;
                case 11:
                    return m937w(j - (((this.f504a * 12) + this.f505b) - 1));
                case 12:
                    return m951E((int) j);
                case 13:
                    return mo742e(EnumC2729a.ERA) == j ? this : m951E(1 - this.f504a);
                default:
                    throw new C2754z("Unsupported field: " + interfaceC2743o);
            }
        }
        return (C2685d) interfaceC2743o.mo729f(this, j);
    }

    /* renamed from: C */
    public InterfaceC2678b m953C(InterfaceC2740l interfaceC2740l) {
        boolean z = interfaceC2740l instanceof C2685d;
        InterfaceC2738j interfaceC2738j = interfaceC2740l;
        if (!z) {
            interfaceC2738j = ((C2741m) interfaceC2740l).mo739h(this);
        }
        return (C2685d) interfaceC2738j;
    }

    /* renamed from: D */
    public C2685d m952D(int i) {
        return m945o() == i ? this : m940t(this.f504a, i);
    }

    /* renamed from: E */
    public C2685d m951E(int i) {
        if (this.f504a == i) {
            return this;
        }
        EnumC2729a.YEAR.m756j(i);
        return m934z(i, this.f505b, this.f506c);
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: a */
    public InterfaceC2738j mo747a(InterfaceC2740l interfaceC2740l) {
        return (C2685d) interfaceC2740l;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public int mo744c(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? m947m(interfaceC2743o) : AbstractC2742n.m738a(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        int i;
        if (interfaceC2743o instanceof EnumC2729a) {
            EnumC2729a enumC2729a = (EnumC2729a) interfaceC2743o;
            if (!enumC2729a.mo727h()) {
                throw new C2754z("Unsupported field: " + interfaceC2743o);
            }
            int i2 = AbstractC2676c.f498a[enumC2729a.ordinal()];
            if (i2 == 1) {
                short s = this.f505b;
                i = s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : m943q() ? 29 : 28;
            } else if (i2 != 2) {
                if (i2 == 3) {
                    return C2728A.m760i(1L, (EnumC2719j.m799m(this.f505b) != EnumC2719j.FEBRUARY || m943q()) ? 5L : 4L);
                } else if (i2 != 4) {
                    return interfaceC2743o.mo734a();
                } else {
                    return C2728A.m760i(1L, this.f504a <= 0 ? C0483C.NANOS_PER_SECOND : 999999999L);
                }
            } else {
                i = m943q() ? 366 : 365;
            }
            return C2728A.m760i(1L, i);
        }
        return interfaceC2743o.mo728g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o instanceof EnumC2729a) {
            if (interfaceC2743o == EnumC2729a.EPOCH_DAY) {
                return m955A();
            }
            if (interfaceC2743o == EnumC2729a.PROLEPTIC_MONTH) {
                return ((this.f504a * 12) + this.f505b) - 1;
            }
            return m947m(interfaceC2743o);
        }
        return interfaceC2743o.mo731d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2685d) && m949k((C2685d) obj) == 0;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: g */
    public Object mo741g(InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        if (interfaceC2752x == C2749u.f645a) {
            return this;
        }
        if (interfaceC2752x == C2744p.f640a || interfaceC2752x == C2748t.f644a || interfaceC2752x == C2747s.f643a || interfaceC2752x == C2750v.f646a) {
            return null;
        }
        if (interfaceC2752x == C2745q.f641a) {
            return C2684h.f501a;
        }
        return interfaceC2752x == C2746r.f642a ? ChronoUnit.DAYS : interfaceC2752x.mo726a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2740l
    /* renamed from: h */
    public InterfaceC2738j mo739h(InterfaceC2738j interfaceC2738j) {
        return interfaceC2738j.mo746b(EnumC2729a.EPOCH_DAY, m955A());
    }

    public int hashCode() {
        int i = this.f504a;
        return (((i << 11) + (this.f505b << 6)) + this.f506c) ^ (i & (-2048));
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? interfaceC2743o.mo727h() : interfaceC2743o != null && interfaceC2743o.mo730e(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: j */
    public int compareTo(InterfaceC2678b interfaceC2678b) {
        if (interfaceC2678b instanceof C2685d) {
            return m949k((C2685d) interfaceC2678b);
        }
        int compare = Long.compare(m955A(), ((C2685d) interfaceC2678b).m955A());
        if (compare == 0) {
            C2684h c2684h = C2684h.f501a;
            return 0;
        }
        return compare;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public int m949k(C2685d c2685d) {
        int i = this.f504a - c2685d.f504a;
        if (i == 0) {
            int i2 = this.f505b - c2685d.f505b;
            return i2 == 0 ? this.f506c - c2685d.f506c : i2;
        }
        return i;
    }

    /* renamed from: n */
    public EnumC2675b m946n() {
        return EnumC2675b.m962k(((int) AbstractC2668d.m992d(m955A() + 3, 7L)) + 1);
    }

    /* renamed from: o */
    public int m945o() {
        return (EnumC2719j.m799m(this.f505b).m802j(m943q()) + this.f506c) - 1;
    }

    /* renamed from: p */
    public int m944p() {
        return this.f504a;
    }

    /* renamed from: q */
    public boolean m943q() {
        return C2684h.f501a.m957c(this.f504a);
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

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: u */
    public C2685d mo745f(long j, InterfaceC2753y interfaceC2753y) {
        if (interfaceC2753y instanceof ChronoUnit) {
            switch (AbstractC2676c.f499b[((ChronoUnit) interfaceC2753y).ordinal()]) {
                case 1:
                    return m938v(j);
                case 2:
                    return m936x(j);
                case 3:
                    return m937w(j);
                case 4:
                    return m935y(j);
                case 5:
                    return m935y(AbstractC2668d.m990f(j, 10L));
                case 6:
                    return m935y(AbstractC2668d.m990f(j, 100L));
                case 7:
                    return m935y(AbstractC2668d.m990f(j, 1000L));
                case 8:
                    EnumC2729a enumC2729a = EnumC2729a.ERA;
                    return mo746b(enumC2729a, AbstractC2668d.m993c(mo742e(enumC2729a), j));
                default:
                    throw new C2754z("Unsupported unit: " + interfaceC2753y);
            }
        }
        return (C2685d) interfaceC2753y.mo725a(this, j);
    }

    /* renamed from: v */
    public C2685d m938v(long j) {
        return j == 0 ? this : m941s(AbstractC2668d.m993c(m955A(), j));
    }

    /* renamed from: w */
    public C2685d m937w(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f504a * 12) + (this.f505b - 1) + j;
        return m934z(EnumC2729a.YEAR.m757i(AbstractC2668d.m991e(j2, 12L)), ((int) AbstractC2668d.m992d(j2, 12L)) + 1, this.f506c);
    }

    /* renamed from: x */
    public C2685d m936x(long j) {
        return m938v(AbstractC2668d.m990f(j, 7L));
    }

    /* renamed from: y */
    public C2685d m935y(long j) {
        return j == 0 ? this : m934z(EnumC2729a.YEAR.m757i(this.f504a + j), this.f505b, this.f506c);
    }
}
