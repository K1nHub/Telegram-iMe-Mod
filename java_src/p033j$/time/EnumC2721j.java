package p033j$.time;

import p033j$.time.chrono.AbstractC2679a;
import p033j$.time.chrono.AbstractC2682d;
import p033j$.time.chrono.C2686h;
import p033j$.time.temporal.AbstractC2744n;
import p033j$.time.temporal.AbstractC2753w;
import p033j$.time.temporal.C2730A;
import p033j$.time.temporal.C2747q;
import p033j$.time.temporal.C2748r;
import p033j$.time.temporal.C2756z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2740j;
import p033j$.time.temporal.InterfaceC2741k;
import p033j$.time.temporal.InterfaceC2742l;
import p033j$.time.temporal.InterfaceC2745o;
import p033j$.time.temporal.InterfaceC2754x;
/* renamed from: j$.time.j */
/* loaded from: classes2.dex */
public enum EnumC2721j implements InterfaceC2741k, InterfaceC2742l {
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
    private static final EnumC2721j[] f600a = values();

    /* renamed from: m */
    public static EnumC2721j m796m(int i) {
        if (i < 1 || i > 12) {
            throw new DateTimeException("Invalid value for MonthOfYear: " + i);
        }
        return f600a[i - 1];
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: c */
    public int mo741c(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o == EnumC2731a.MONTH_OF_YEAR ? m798k() : AbstractC2744n.m735a(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: d */
    public C2730A mo740d(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o == EnumC2731a.MONTH_OF_YEAR ? interfaceC2745o.mo731a() : AbstractC2744n.m733c(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: e */
    public long mo739e(InterfaceC2745o interfaceC2745o) {
        if (interfaceC2745o == EnumC2731a.MONTH_OF_YEAR) {
            return m798k();
        }
        if (interfaceC2745o instanceof EnumC2731a) {
            throw new C2756z("Unsupported field: " + interfaceC2745o);
        }
        return interfaceC2745o.mo728d(this);
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
            return interfaceC2740j.mo743b(EnumC2731a.MONTH_OF_YEAR, m798k());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o instanceof EnumC2731a ? interfaceC2745o == EnumC2731a.MONTH_OF_YEAR : interfaceC2745o != null && interfaceC2745o.mo727e(this);
    }

    /* renamed from: j */
    public int m799j(boolean z) {
        int i;
        switch (AbstractC2720i.f599a[ordinal()]) {
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
    public int m798k() {
        return ordinal() + 1;
    }

    /* renamed from: l */
    public int m797l(boolean z) {
        int i = AbstractC2720i.f599a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    /* renamed from: n */
    public EnumC2721j m795n(long j) {
        return f600a[((((int) (j % 12)) + 12) + ordinal()) % 12];
    }
}
