package p033j$.time;

import com.google.android.exoplayer2.C0485C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2673d;
import p033j$.time.chrono.AbstractC2682a;
import p033j$.time.chrono.AbstractC2685d;
import p033j$.time.chrono.C2689h;
import p033j$.time.format.C2713s;
import p033j$.time.format.EnumC2693A;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.C2750q;
import p033j$.time.temporal.C2751r;
import p033j$.time.temporal.C2759z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2743j;
import p033j$.time.temporal.InterfaceC2745l;
import p033j$.time.temporal.InterfaceC2748o;
import p033j$.time.temporal.InterfaceC2757x;
import p033j$.time.temporal.InterfaceC2758y;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements InterfaceC2743j, InterfaceC2745l, Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f492a;

    /* renamed from: b */
    private final int f493b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.time.YearMonth$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C2678a {

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
            int[] iArr2 = new int[EnumC2734a.values().length];
            f494a = iArr2;
            try {
                iArr2[EnumC2734a.MONTH_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f494a[EnumC2734a.PROLEPTIC_MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f494a[EnumC2734a.YEAR_OF_ERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f494a[EnumC2734a.YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f494a[EnumC2734a.ERA.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    static {
        C2713s m869l = new C2713s().m869l(EnumC2734a.YEAR, 4, 10, EnumC2693A.EXCEEDS_PAD);
        m869l.m876e('-');
        m869l.m870k(EnumC2734a.MONTH_OF_YEAR, 2);
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
        EnumC2734a.YEAR.m753j(i);
        EnumC2734a.MONTH_OF_YEAR.m753j(i2);
        return new YearMonth(i, i2);
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: a */
    public InterfaceC2743j mo744a(InterfaceC2745l interfaceC2745l) {
        return (YearMonth) ((C2690d) interfaceC2745l).mo736h(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public int mo741c(InterfaceC2748o interfaceC2748o) {
        return mo740d(interfaceC2748o).m765a(mo739e(interfaceC2748o), interfaceC2748o);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f492a - yearMonth2.f492a;
        return i == 0 ? this.f493b - yearMonth2.f493b : i;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o == EnumC2734a.YEAR_OF_ERA) {
            return C2733A.m757i(1L, this.f492a <= 0 ? C0485C.NANOS_PER_SECOND : 999999999L);
        }
        return AbstractC2747n.m733c(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        int i;
        if (interfaceC2748o instanceof EnumC2734a) {
            int i2 = C2678a.f494a[((EnumC2734a) interfaceC2748o).ordinal()];
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
                    throw new C2759z("Unsupported field: " + interfaceC2748o);
                } else {
                    i = this.f492a;
                }
            }
            return i;
        }
        return interfaceC2748o.mo728d(this);
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

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: f */
    public InterfaceC2743j mo742f(long j, InterfaceC2758y interfaceC2758y) {
        long j2;
        if (!(interfaceC2758y instanceof ChronoUnit)) {
            ChronoUnit chronoUnit = (ChronoUnit) interfaceC2758y;
            Objects.requireNonNull(chronoUnit);
            return (YearMonth) mo742f(j, chronoUnit);
        }
        switch (C2678a.f495b[((ChronoUnit) interfaceC2758y).ordinal()]) {
            case 1:
                return m967k(j);
            case 2:
                return m966l(j);
            case 3:
                j2 = 10;
                j = AbstractC2673d.m987f(j, j2);
                return m966l(j);
            case 4:
                j2 = 100;
                j = AbstractC2673d.m987f(j, j2);
                return m966l(j);
            case 5:
                j2 = 1000;
                j = AbstractC2673d.m987f(j, j2);
                return m966l(j);
            case 6:
                EnumC2734a enumC2734a = EnumC2734a.ERA;
                return mo743b(enumC2734a, AbstractC2673d.m990c(mo739e(enumC2734a), j));
            default:
                throw new C2759z("Unsupported unit: " + interfaceC2758y);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: g */
    public Object mo738g(InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        return interfaceC2757x == C2750q.f641a ? C2689h.f501a : interfaceC2757x == C2751r.f642a ? ChronoUnit.MONTHS : AbstractC2747n.m734b(this, interfaceC2757x);
    }

    @Override // p033j$.time.temporal.InterfaceC2745l
    /* renamed from: h */
    public InterfaceC2743j mo736h(InterfaceC2743j interfaceC2743j) {
        if (((AbstractC2682a) AbstractC2685d.m955b(interfaceC2743j)).equals(C2689h.f501a)) {
            return interfaceC2743j.mo743b(EnumC2734a.PROLEPTIC_MONTH, m968j());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    public int hashCode() {
        return this.f492a ^ (this.f493b << 27);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? interfaceC2748o == EnumC2734a.YEAR || interfaceC2748o == EnumC2734a.MONTH_OF_YEAR || interfaceC2748o == EnumC2734a.PROLEPTIC_MONTH || interfaceC2748o == EnumC2734a.YEAR_OF_ERA || interfaceC2748o == EnumC2734a.ERA : interfaceC2748o != null && interfaceC2748o.mo727e(this);
    }

    /* renamed from: k */
    public YearMonth m967k(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f492a * 12) + (this.f493b - 1) + j;
        return m965m(EnumC2734a.YEAR.m754i(AbstractC2673d.m988e(j2, 12L)), ((int) AbstractC2673d.m989d(j2, 12L)) + 1);
    }

    /* renamed from: l */
    public YearMonth m966l(long j) {
        return j == 0 ? this : m965m(EnumC2734a.YEAR.m754i(this.f492a + j), this.f493b);
    }

    public int lengthOfMonth() {
        return EnumC2724j.m796m(this.f493b).m797l(C2689h.f501a.m954c(this.f492a));
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: n */
    public YearMonth mo743b(InterfaceC2748o interfaceC2748o, long j) {
        if (interfaceC2748o instanceof EnumC2734a) {
            EnumC2734a enumC2734a = (EnumC2734a) interfaceC2748o;
            enumC2734a.m753j(j);
            int i = C2678a.f494a[enumC2734a.ordinal()];
            if (i == 1) {
                int i2 = (int) j;
                EnumC2734a.MONTH_OF_YEAR.m753j(i2);
                return m965m(this.f492a, i2);
            } else if (i != 2) {
                if (i == 3) {
                    if (this.f492a < 1) {
                        j = 1 - j;
                    }
                    return m963o((int) j);
                } else if (i != 4) {
                    if (i == 5) {
                        return mo739e(EnumC2734a.ERA) == j ? this : m963o(1 - this.f492a);
                    }
                    throw new C2759z("Unsupported field: " + interfaceC2748o);
                } else {
                    return m963o((int) j);
                }
            } else {
                return m967k(j - m968j());
            }
        }
        return (YearMonth) interfaceC2748o.mo726f(this, j);
    }

    /* renamed from: o */
    public YearMonth m963o(int i) {
        EnumC2734a.YEAR.m753j(i);
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
