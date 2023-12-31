package p033j$.time;

import com.google.android.exoplayer2.C0485C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2670d;
import p033j$.time.chrono.AbstractC2679a;
import p033j$.time.chrono.AbstractC2682d;
import p033j$.time.chrono.C2686h;
import p033j$.time.format.C2710s;
import p033j$.time.format.EnumC2690A;
import p033j$.time.temporal.AbstractC2744n;
import p033j$.time.temporal.AbstractC2753w;
import p033j$.time.temporal.C2730A;
import p033j$.time.temporal.C2747q;
import p033j$.time.temporal.C2748r;
import p033j$.time.temporal.C2756z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2740j;
import p033j$.time.temporal.InterfaceC2742l;
import p033j$.time.temporal.InterfaceC2745o;
import p033j$.time.temporal.InterfaceC2754x;
import p033j$.time.temporal.InterfaceC2755y;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements InterfaceC2740j, InterfaceC2742l, Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f492a;

    /* renamed from: b */
    private final int f493b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.time.YearMonth$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C2675a {

        /* renamed from: a */
        static final /* synthetic */ int[] f494a;

        /* renamed from: b */
        static final /* synthetic */ int[] f495b;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f495b = iArr;
            try {
                iArr[ChronoUnit.MONTHS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f495b[ChronoUnit.YEARS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f495b[ChronoUnit.DECADES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f495b[ChronoUnit.CENTURIES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f495b[ChronoUnit.MILLENNIA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f495b[ChronoUnit.ERAS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[EnumC2731a.values().length];
            f494a = iArr2;
            try {
                iArr2[EnumC2731a.MONTH_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f494a[EnumC2731a.PROLEPTIC_MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f494a[EnumC2731a.YEAR_OF_ERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f494a[EnumC2731a.YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f494a[EnumC2731a.ERA.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    static {
        C2710s m869l = new C2710s().m869l(EnumC2731a.YEAR, 4, 10, EnumC2690A.EXCEEDS_PAD);
        m869l.m876e('-');
        m869l.m870k(EnumC2731a.MONTH_OF_YEAR, 2);
        m869l.m862s();
    }

    private YearMonth(int i, int i2) {
        this.f492a = i;
        this.f493b = i2;
    }

    /* renamed from: j */
    private long m968j() {
        return ((this.f492a * 12) + this.f493b) - 1;
    }

    /* renamed from: m */
    private YearMonth m965m(int i, int i2) {
        return (this.f492a == i && this.f493b == i2) ? this : new YearMonth(i, i2);
    }

    /* renamed from: of */
    public static YearMonth m962of(int i, int i2) {
        EnumC2731a.YEAR.m753j(i);
        EnumC2731a.MONTH_OF_YEAR.m753j(i2);
        return new YearMonth(i, i2);
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: a */
    public InterfaceC2740j mo744a(InterfaceC2742l interfaceC2742l) {
        return (YearMonth) ((C2687d) interfaceC2742l).mo736h(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: c */
    public int mo741c(InterfaceC2745o interfaceC2745o) {
        return mo740d(interfaceC2745o).m765a(mo739e(interfaceC2745o), interfaceC2745o);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f492a - yearMonth2.f492a;
        return i == 0 ? this.f493b - yearMonth2.f493b : i;
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: d */
    public C2730A mo740d(InterfaceC2745o interfaceC2745o) {
        if (interfaceC2745o == EnumC2731a.YEAR_OF_ERA) {
            return C2730A.m757i(1L, this.f492a <= 0 ? C0485C.NANOS_PER_SECOND : 999999999L);
        }
        return AbstractC2744n.m733c(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: e */
    public long mo739e(InterfaceC2745o interfaceC2745o) {
        int i;
        if (interfaceC2745o instanceof EnumC2731a) {
            int i2 = C2675a.f494a[((EnumC2731a) interfaceC2745o).ordinal()];
            if (i2 == 1) {
                i = this.f493b;
            } else if (i2 == 2) {
                return m968j();
            } else {
                if (i2 == 3) {
                    int i3 = this.f492a;
                    if (i3 < 1) {
                        i3 = 1 - i3;
                    }
                    return i3;
                } else if (i2 != 4) {
                    if (i2 == 5) {
                        return this.f492a < 1 ? 0 : 1;
                    }
                    throw new C2756z("Unsupported field: " + interfaceC2745o);
                } else {
                    i = this.f492a;
                }
            }
            return i;
        }
        return interfaceC2745o.mo728d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            return this.f492a == yearMonth.f492a && this.f493b == yearMonth.f493b;
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: f */
    public InterfaceC2740j mo742f(long j, InterfaceC2755y interfaceC2755y) {
        long j2;
        if (!(interfaceC2755y instanceof ChronoUnit)) {
            ChronoUnit chronoUnit = (ChronoUnit) interfaceC2755y;
            Objects.requireNonNull(chronoUnit);
            return (YearMonth) mo742f(j, chronoUnit);
        }
        switch (C2675a.f495b[((ChronoUnit) interfaceC2755y).ordinal()]) {
            case 1:
                return m967k(j);
            case 2:
                return m966l(j);
            case 3:
                j2 = 10;
                j = AbstractC2670d.m987f(j, j2);
                return m966l(j);
            case 4:
                j2 = 100;
                j = AbstractC2670d.m987f(j, j2);
                return m966l(j);
            case 5:
                j2 = 1000;
                j = AbstractC2670d.m987f(j, j2);
                return m966l(j);
            case 6:
                EnumC2731a enumC2731a = EnumC2731a.ERA;
                return mo743b(enumC2731a, AbstractC2670d.m990c(mo739e(enumC2731a), j));
            default:
                throw new C2756z("Unsupported unit: " + interfaceC2755y);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: g */
    public Object mo738g(InterfaceC2754x interfaceC2754x) {
        int i = AbstractC2753w.f647a;
        return interfaceC2754x == C2747q.f641a ? C2686h.f501a : interfaceC2754x == C2748r.f642a ? ChronoUnit.MONTHS : AbstractC2744n.m734b(this, interfaceC2754x);
    }

    @Override // p033j$.time.temporal.InterfaceC2742l
    /* renamed from: h */
    public InterfaceC2740j mo736h(InterfaceC2740j interfaceC2740j) {
        if (((AbstractC2679a) AbstractC2682d.m955b(interfaceC2740j)).equals(C2686h.f501a)) {
            return interfaceC2740j.mo743b(EnumC2731a.PROLEPTIC_MONTH, m968j());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    public int hashCode() {
        return this.f492a ^ (this.f493b << 27);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o instanceof EnumC2731a ? interfaceC2745o == EnumC2731a.YEAR || interfaceC2745o == EnumC2731a.MONTH_OF_YEAR || interfaceC2745o == EnumC2731a.PROLEPTIC_MONTH || interfaceC2745o == EnumC2731a.YEAR_OF_ERA || interfaceC2745o == EnumC2731a.ERA : interfaceC2745o != null && interfaceC2745o.mo727e(this);
    }

    /* renamed from: k */
    public YearMonth m967k(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f492a * 12) + (this.f493b - 1) + j;
        return m965m(EnumC2731a.YEAR.m754i(AbstractC2670d.m988e(j2, 12L)), ((int) AbstractC2670d.m989d(j2, 12L)) + 1);
    }

    /* renamed from: l */
    public YearMonth m966l(long j) {
        return j == 0 ? this : m965m(EnumC2731a.YEAR.m754i(this.f492a + j), this.f493b);
    }

    public int lengthOfMonth() {
        return EnumC2721j.m796m(this.f493b).m797l(C2686h.f501a.m954c(this.f492a));
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: n */
    public YearMonth mo743b(InterfaceC2745o interfaceC2745o, long j) {
        if (interfaceC2745o instanceof EnumC2731a) {
            EnumC2731a enumC2731a = (EnumC2731a) interfaceC2745o;
            enumC2731a.m753j(j);
            int i = C2675a.f494a[enumC2731a.ordinal()];
            if (i == 1) {
                int i2 = (int) j;
                EnumC2731a.MONTH_OF_YEAR.m753j(i2);
                return m965m(this.f492a, i2);
            } else if (i != 2) {
                if (i == 3) {
                    if (this.f492a < 1) {
                        j = 1 - j;
                    }
                    return m963o((int) j);
                } else if (i != 4) {
                    if (i == 5) {
                        return mo739e(EnumC2731a.ERA) == j ? this : m963o(1 - this.f492a);
                    }
                    throw new C2756z("Unsupported field: " + interfaceC2745o);
                } else {
                    return m963o((int) j);
                }
            } else {
                return m967k(j - m968j());
            }
        }
        return (YearMonth) interfaceC2745o.mo726f(this, j);
    }

    /* renamed from: o */
    public YearMonth m963o(int i) {
        EnumC2731a.YEAR.m753j(i);
        return m965m(i, this.f493b);
    }

    public String toString() {
        int i;
        int abs = Math.abs(this.f492a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i2 = this.f492a;
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            sb.append(this.f492a);
        }
        sb.append(this.f493b < 10 ? "-0" : "-");
        sb.append(this.f493b);
        return sb.toString();
    }
}
