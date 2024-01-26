package p033j$.time;

import com.google.android.exoplayer2.C0483C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2668d;
import p033j$.time.chrono.AbstractC2677a;
import p033j$.time.chrono.AbstractC2680d;
import p033j$.time.chrono.C2684h;
import p033j$.time.format.C2708s;
import p033j$.time.format.EnumC2688A;
import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2728A;
import p033j$.time.temporal.C2745q;
import p033j$.time.temporal.C2746r;
import p033j$.time.temporal.C2754z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2738j;
import p033j$.time.temporal.InterfaceC2740l;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
import p033j$.time.temporal.InterfaceC2753y;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements InterfaceC2738j, InterfaceC2740l, Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f492a;

    /* renamed from: b */
    private final int f493b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.time.YearMonth$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C2673a {

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
            int[] iArr2 = new int[EnumC2729a.values().length];
            f494a = iArr2;
            try {
                iArr2[EnumC2729a.MONTH_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f494a[EnumC2729a.PROLEPTIC_MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f494a[EnumC2729a.YEAR_OF_ERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f494a[EnumC2729a.YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f494a[EnumC2729a.ERA.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    static {
        C2708s m872l = new C2708s().m872l(EnumC2729a.YEAR, 4, 10, EnumC2688A.EXCEEDS_PAD);
        m872l.m879e('-');
        m872l.m873k(EnumC2729a.MONTH_OF_YEAR, 2);
        m872l.m865s();
    }

    private YearMonth(int i, int i2) {
        this.f492a = i;
        this.f493b = i2;
    }

    /* renamed from: j */
    private long m971j() {
        return ((this.f492a * 12) + this.f493b) - 1;
    }

    /* renamed from: m */
    private YearMonth m968m(int i, int i2) {
        return (this.f492a == i && this.f493b == i2) ? this : new YearMonth(i, i2);
    }

    /* renamed from: of */
    public static YearMonth m965of(int i, int i2) {
        EnumC2729a.YEAR.m756j(i);
        EnumC2729a.MONTH_OF_YEAR.m756j(i2);
        return new YearMonth(i, i2);
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: a */
    public InterfaceC2738j mo747a(InterfaceC2740l interfaceC2740l) {
        return (YearMonth) ((C2685d) interfaceC2740l).mo739h(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public int mo744c(InterfaceC2743o interfaceC2743o) {
        return mo743d(interfaceC2743o).m768a(mo742e(interfaceC2743o), interfaceC2743o);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f492a - yearMonth2.f492a;
        return i == 0 ? this.f493b - yearMonth2.f493b : i;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o == EnumC2729a.YEAR_OF_ERA) {
            return C2728A.m760i(1L, this.f492a <= 0 ? C0483C.NANOS_PER_SECOND : 999999999L);
        }
        return AbstractC2742n.m736c(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        int i;
        if (interfaceC2743o instanceof EnumC2729a) {
            int i2 = C2673a.f494a[((EnumC2729a) interfaceC2743o).ordinal()];
            if (i2 == 1) {
                i = this.f493b;
            } else if (i2 == 2) {
                return m971j();
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
                    throw new C2754z("Unsupported field: " + interfaceC2743o);
                } else {
                    i = this.f492a;
                }
            }
            return i;
        }
        return interfaceC2743o.mo731d(this);
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

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: f */
    public InterfaceC2738j mo745f(long j, InterfaceC2753y interfaceC2753y) {
        long j2;
        if (!(interfaceC2753y instanceof ChronoUnit)) {
            ChronoUnit chronoUnit = (ChronoUnit) interfaceC2753y;
            Objects.requireNonNull(chronoUnit);
            return (YearMonth) mo745f(j, chronoUnit);
        }
        switch (C2673a.f495b[((ChronoUnit) interfaceC2753y).ordinal()]) {
            case 1:
                return m970k(j);
            case 2:
                return m969l(j);
            case 3:
                j2 = 10;
                j = AbstractC2668d.m990f(j, j2);
                return m969l(j);
            case 4:
                j2 = 100;
                j = AbstractC2668d.m990f(j, j2);
                return m969l(j);
            case 5:
                j2 = 1000;
                j = AbstractC2668d.m990f(j, j2);
                return m969l(j);
            case 6:
                EnumC2729a enumC2729a = EnumC2729a.ERA;
                return mo746b(enumC2729a, AbstractC2668d.m993c(mo742e(enumC2729a), j));
            default:
                throw new C2754z("Unsupported unit: " + interfaceC2753y);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: g */
    public Object mo741g(InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        return interfaceC2752x == C2745q.f641a ? C2684h.f501a : interfaceC2752x == C2746r.f642a ? ChronoUnit.MONTHS : AbstractC2742n.m737b(this, interfaceC2752x);
    }

    @Override // p033j$.time.temporal.InterfaceC2740l
    /* renamed from: h */
    public InterfaceC2738j mo739h(InterfaceC2738j interfaceC2738j) {
        if (((AbstractC2677a) AbstractC2680d.m958b(interfaceC2738j)).equals(C2684h.f501a)) {
            return interfaceC2738j.mo746b(EnumC2729a.PROLEPTIC_MONTH, m971j());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    public int hashCode() {
        return this.f492a ^ (this.f493b << 27);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? interfaceC2743o == EnumC2729a.YEAR || interfaceC2743o == EnumC2729a.MONTH_OF_YEAR || interfaceC2743o == EnumC2729a.PROLEPTIC_MONTH || interfaceC2743o == EnumC2729a.YEAR_OF_ERA || interfaceC2743o == EnumC2729a.ERA : interfaceC2743o != null && interfaceC2743o.mo730e(this);
    }

    /* renamed from: k */
    public YearMonth m970k(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f492a * 12) + (this.f493b - 1) + j;
        return m968m(EnumC2729a.YEAR.m757i(AbstractC2668d.m991e(j2, 12L)), ((int) AbstractC2668d.m992d(j2, 12L)) + 1);
    }

    /* renamed from: l */
    public YearMonth m969l(long j) {
        return j == 0 ? this : m968m(EnumC2729a.YEAR.m757i(this.f492a + j), this.f493b);
    }

    public int lengthOfMonth() {
        return EnumC2719j.m799m(this.f493b).m800l(C2684h.f501a.m957c(this.f492a));
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: n */
    public YearMonth mo746b(InterfaceC2743o interfaceC2743o, long j) {
        if (interfaceC2743o instanceof EnumC2729a) {
            EnumC2729a enumC2729a = (EnumC2729a) interfaceC2743o;
            enumC2729a.m756j(j);
            int i = C2673a.f494a[enumC2729a.ordinal()];
            if (i == 1) {
                int i2 = (int) j;
                EnumC2729a.MONTH_OF_YEAR.m756j(i2);
                return m968m(this.f492a, i2);
            } else if (i != 2) {
                if (i == 3) {
                    if (this.f492a < 1) {
                        j = 1 - j;
                    }
                    return m966o((int) j);
                } else if (i != 4) {
                    if (i == 5) {
                        return mo742e(EnumC2729a.ERA) == j ? this : m966o(1 - this.f492a);
                    }
                    throw new C2754z("Unsupported field: " + interfaceC2743o);
                } else {
                    return m966o((int) j);
                }
            } else {
                return m970k(j - m971j());
            }
        }
        return (YearMonth) interfaceC2743o.mo729f(this, j);
    }

    /* renamed from: o */
    public YearMonth m966o(int i) {
        EnumC2729a.YEAR.m756j(i);
        return m968m(i, this.f493b);
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
