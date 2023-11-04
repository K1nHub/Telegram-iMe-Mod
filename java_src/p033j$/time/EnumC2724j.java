package p033j$.time;

import p033j$.time.chrono.AbstractC2682a;
import p033j$.time.chrono.AbstractC2685d;
import p033j$.time.chrono.C2689h;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.C2750q;
import p033j$.time.temporal.C2751r;
import p033j$.time.temporal.C2759z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2743j;
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2745l;
import p033j$.time.temporal.InterfaceC2748o;
import p033j$.time.temporal.InterfaceC2757x;
/* renamed from: j$.time.j */
/* loaded from: classes2.dex */
public enum EnumC2724j implements InterfaceC2744k, InterfaceC2745l {
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
    private static final EnumC2724j[] f600a = values();

    /* renamed from: m */
    public static EnumC2724j m796m(int i) {
        if (i < 1 || i > 12) {
            throw new DateTimeException("Invalid value for MonthOfYear: " + i);
        }
        return f600a[i - 1];
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public int mo741c(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o == EnumC2734a.MONTH_OF_YEAR ? m798k() : AbstractC2747n.m735a(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o == EnumC2734a.MONTH_OF_YEAR ? interfaceC2748o.mo731a() : AbstractC2747n.m733c(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o == EnumC2734a.MONTH_OF_YEAR) {
            return m798k();
        }
        if (interfaceC2748o instanceof EnumC2734a) {
            throw new C2759z("Unsupported field: " + interfaceC2748o);
        }
        return interfaceC2748o.mo728d(this);
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
            return interfaceC2743j.mo743b(EnumC2734a.MONTH_OF_YEAR, m798k());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? interfaceC2748o == EnumC2734a.MONTH_OF_YEAR : interfaceC2748o != null && interfaceC2748o.mo727e(this);
    }

    /* renamed from: j */
    public int m799j(boolean z) {
        int i;
        switch (AbstractC2723i.f599a[ordinal()]) {
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
        int i = AbstractC2723i.f599a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    /* renamed from: n */
    public EnumC2724j m795n(long j) {
        return f600a[((((int) (j % 12)) + 12) + ordinal()) % 12];
    }
}
