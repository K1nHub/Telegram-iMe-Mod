package p033j$.time;

import p033j$.time.chrono.AbstractC2677a;
import p033j$.time.chrono.AbstractC2680d;
import p033j$.time.chrono.C2684h;
import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2728A;
import p033j$.time.temporal.C2745q;
import p033j$.time.temporal.C2746r;
import p033j$.time.temporal.C2754z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2738j;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2740l;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
/* renamed from: j$.time.j */
/* loaded from: classes2.dex */
public enum EnumC2719j implements InterfaceC2739k, InterfaceC2740l {
    JANUARY,
    FEBRUARY,
    MARCH,
    APRIL,
    MAY,
    JUNE,
    JULY,
    AUGUST,
    SEPTEMBER,
    OCTOBER,
    NOVEMBER,
    DECEMBER;
    

    /* renamed from: a */
    private static final EnumC2719j[] f600a = values();

    /* renamed from: m */
    public static EnumC2719j m799m(int i) {
        if (i < 1 || i > 12) {
            throw new DateTimeException("Invalid value for MonthOfYear: " + i);
        }
        return f600a[i - 1];
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public int mo744c(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o == EnumC2729a.MONTH_OF_YEAR ? m801k() : AbstractC2742n.m738a(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o == EnumC2729a.MONTH_OF_YEAR ? interfaceC2743o.mo734a() : AbstractC2742n.m736c(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o == EnumC2729a.MONTH_OF_YEAR) {
            return m801k();
        }
        if (interfaceC2743o instanceof EnumC2729a) {
            throw new C2754z("Unsupported field: " + interfaceC2743o);
        }
        return interfaceC2743o.mo731d(this);
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
            return interfaceC2738j.mo746b(EnumC2729a.MONTH_OF_YEAR, m801k());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? interfaceC2743o == EnumC2729a.MONTH_OF_YEAR : interfaceC2743o != null && interfaceC2743o.mo730e(this);
    }

    /* renamed from: j */
    public int m802j(boolean z) {
        int i;
        switch (AbstractC2718i.f599a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                i = 91;
                break;
            case 3:
                i = 152;
                break;
            case 4:
                i = 244;
                break;
            case 5:
                i = 305;
                break;
            case 6:
                return 1;
            case 7:
                i = 60;
                break;
            case 8:
                i = 121;
                break;
            case 9:
                i = 182;
                break;
            case 10:
                i = 213;
                break;
            case 11:
                i = 274;
                break;
            default:
                i = 335;
                break;
        }
        return (z ? 1 : 0) + i;
    }

    /* renamed from: k */
    public int m801k() {
        return ordinal() + 1;
    }

    /* renamed from: l */
    public int m800l(boolean z) {
        int i = AbstractC2718i.f599a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    /* renamed from: n */
    public EnumC2719j m798n(long j) {
        return f600a[((((int) (j % 12)) + 12) + ordinal()) % 12];
    }
}
