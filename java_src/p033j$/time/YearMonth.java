package p033j$.time;

import com.google.android.exoplayer2.C0479C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2669d;
import p033j$.time.chrono.AbstractC2678a;
import p033j$.time.chrono.AbstractC2681d;
import p033j$.time.chrono.C2685h;
import p033j$.time.format.C2709s;
import p033j$.time.format.EnumC2689A;
import p033j$.time.temporal.AbstractC2743n;
import p033j$.time.temporal.AbstractC2752w;
import p033j$.time.temporal.C2729A;
import p033j$.time.temporal.C2746q;
import p033j$.time.temporal.C2747r;
import p033j$.time.temporal.C2755z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2739j;
import p033j$.time.temporal.InterfaceC2741l;
import p033j$.time.temporal.InterfaceC2744o;
import p033j$.time.temporal.InterfaceC2753x;
import p033j$.time.temporal.InterfaceC2754y;
/* renamed from: j$.time.YearMonth */
/* loaded from: classes2.dex */
public final class YearMonth implements InterfaceC2739j, InterfaceC2741l, Comparable<YearMonth>, Serializable {

    /* renamed from: a */
    private final int f492a;

    /* renamed from: b */
    private final int f493b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j$.time.YearMonth$a */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C2674a {

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
            int[] iArr2 = new int[EnumC2730a.values().length];
            f494a = iArr2;
            try {
                iArr2[EnumC2730a.MONTH_OF_YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f494a[EnumC2730a.PROLEPTIC_MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f494a[EnumC2730a.YEAR_OF_ERA.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f494a[EnumC2730a.YEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f494a[EnumC2730a.ERA.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    static {
        C2709s m868l = new C2709s().m868l(EnumC2730a.YEAR, 4, 10, EnumC2689A.EXCEEDS_PAD);
        m868l.m875e('-');
        m868l.m869k(EnumC2730a.MONTH_OF_YEAR, 2);
        m868l.m861s();
    }

    private YearMonth(int i, int i2) {
        this.f492a = i;
        this.f493b = i2;
    }

    /* renamed from: j */
    private long m967j() {
        return ((this.f492a * 12) + this.f493b) - 1;
    }

    /* renamed from: m */
    private YearMonth m964m(int i, int i2) {
        return (this.f492a == i && this.f493b == i2) ? this : new YearMonth(i, i2);
    }

    /* renamed from: of */
    public static YearMonth m961of(int i, int i2) {
        EnumC2730a.YEAR.m752j(i);
        EnumC2730a.MONTH_OF_YEAR.m752j(i2);
        return new YearMonth(i, i2);
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: a */
    public InterfaceC2739j mo743a(InterfaceC2741l interfaceC2741l) {
        return (YearMonth) ((C2686d) interfaceC2741l).mo735h(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public int mo740c(InterfaceC2744o interfaceC2744o) {
        return mo739d(interfaceC2744o).m764a(mo738e(interfaceC2744o), interfaceC2744o);
    }

    @Override // java.lang.Comparable
    public int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f492a - yearMonth2.f492a;
        return i == 0 ? this.f493b - yearMonth2.f493b : i;
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o == EnumC2730a.YEAR_OF_ERA) {
            return C2729A.m756i(1L, this.f492a <= 0 ? C0479C.NANOS_PER_SECOND : 999999999L);
        }
        return AbstractC2743n.m732c(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        int i;
        if (interfaceC2744o instanceof EnumC2730a) {
            int i2 = C2674a.f494a[((EnumC2730a) interfaceC2744o).ordinal()];
            if (i2 == 1) {
                i = this.f493b;
            } else if (i2 == 2) {
                return m967j();
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
                    throw new C2755z("Unsupported field: " + interfaceC2744o);
                } else {
                    i = this.f492a;
                }
            }
            return i;
        }
        return interfaceC2744o.mo727d(this);
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

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: f */
    public InterfaceC2739j mo741f(long j, InterfaceC2754y interfaceC2754y) {
        long j2;
        if (!(interfaceC2754y instanceof ChronoUnit)) {
            ChronoUnit chronoUnit = (ChronoUnit) interfaceC2754y;
            Objects.requireNonNull(chronoUnit);
            return (YearMonth) mo741f(j, chronoUnit);
        }
        switch (C2674a.f495b[((ChronoUnit) interfaceC2754y).ordinal()]) {
            case 1:
                return m966k(j);
            case 2:
                return m965l(j);
            case 3:
                j2 = 10;
                j = AbstractC2669d.m986f(j, j2);
                return m965l(j);
            case 4:
                j2 = 100;
                j = AbstractC2669d.m986f(j, j2);
                return m965l(j);
            case 5:
                j2 = 1000;
                j = AbstractC2669d.m986f(j, j2);
                return m965l(j);
            case 6:
                EnumC2730a enumC2730a = EnumC2730a.ERA;
                return mo742b(enumC2730a, AbstractC2669d.m989c(mo738e(enumC2730a), j));
            default:
                throw new C2755z("Unsupported unit: " + interfaceC2754y);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: g */
    public Object mo737g(InterfaceC2753x interfaceC2753x) {
        int i = AbstractC2752w.f647a;
        return interfaceC2753x == C2746q.f641a ? C2685h.f501a : interfaceC2753x == C2747r.f642a ? ChronoUnit.MONTHS : AbstractC2743n.m733b(this, interfaceC2753x);
    }

    @Override // p033j$.time.temporal.InterfaceC2741l
    /* renamed from: h */
    public InterfaceC2739j mo735h(InterfaceC2739j interfaceC2739j) {
        if (((AbstractC2678a) AbstractC2681d.m954b(interfaceC2739j)).equals(C2685h.f501a)) {
            return interfaceC2739j.mo742b(EnumC2730a.PROLEPTIC_MONTH, m967j());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    public int hashCode() {
        return this.f492a ^ (this.f493b << 27);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? interfaceC2744o == EnumC2730a.YEAR || interfaceC2744o == EnumC2730a.MONTH_OF_YEAR || interfaceC2744o == EnumC2730a.PROLEPTIC_MONTH || interfaceC2744o == EnumC2730a.YEAR_OF_ERA || interfaceC2744o == EnumC2730a.ERA : interfaceC2744o != null && interfaceC2744o.mo726e(this);
    }

    /* renamed from: k */
    public YearMonth m966k(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f492a * 12) + (this.f493b - 1) + j;
        return m964m(EnumC2730a.YEAR.m753i(AbstractC2669d.m987e(j2, 12L)), ((int) AbstractC2669d.m988d(j2, 12L)) + 1);
    }

    /* renamed from: l */
    public YearMonth m965l(long j) {
        return j == 0 ? this : m964m(EnumC2730a.YEAR.m753i(this.f492a + j), this.f493b);
    }

    public int lengthOfMonth() {
        return EnumC2720j.m795m(this.f493b).m796l(C2685h.f501a.m953c(this.f492a));
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: n */
    public YearMonth mo742b(InterfaceC2744o interfaceC2744o, long j) {
        if (interfaceC2744o instanceof EnumC2730a) {
            EnumC2730a enumC2730a = (EnumC2730a) interfaceC2744o;
            enumC2730a.m752j(j);
            int i = C2674a.f494a[enumC2730a.ordinal()];
            if (i == 1) {
                int i2 = (int) j;
                EnumC2730a.MONTH_OF_YEAR.m752j(i2);
                return m964m(this.f492a, i2);
            } else if (i != 2) {
                if (i == 3) {
                    if (this.f492a < 1) {
                        j = 1 - j;
                    }
                    return m962o((int) j);
                } else if (i != 4) {
                    if (i == 5) {
                        return mo738e(EnumC2730a.ERA) == j ? this : m962o(1 - this.f492a);
                    }
                    throw new C2755z("Unsupported field: " + interfaceC2744o);
                } else {
                    return m962o((int) j);
                }
            } else {
                return m966k(j - m967j());
            }
        }
        return (YearMonth) interfaceC2744o.mo725f(this, j);
    }

    /* renamed from: o */
    public YearMonth m962o(int i) {
        EnumC2730a.YEAR.m752j(i);
        return m964m(i, this.f493b);
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
