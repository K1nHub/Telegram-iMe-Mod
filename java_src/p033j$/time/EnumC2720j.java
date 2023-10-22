package p033j$.time;

import p033j$.time.chrono.AbstractC2678a;
import p033j$.time.chrono.AbstractC2681d;
import p033j$.time.chrono.C2685h;
import p033j$.time.temporal.AbstractC2743n;
import p033j$.time.temporal.AbstractC2752w;
import p033j$.time.temporal.C2729A;
import p033j$.time.temporal.C2746q;
import p033j$.time.temporal.C2747r;
import p033j$.time.temporal.C2755z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2739j;
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2741l;
import p033j$.time.temporal.InterfaceC2744o;
import p033j$.time.temporal.InterfaceC2753x;
/* renamed from: j$.time.j */
/* loaded from: classes2.dex */
public enum EnumC2720j implements InterfaceC2740k, InterfaceC2741l {
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
    private static final EnumC2720j[] f600a = values();

    /* renamed from: m */
    public static EnumC2720j m795m(int i) {
        if (i < 1 || i > 12) {
            throw new DateTimeException("Invalid value for MonthOfYear: " + i);
        }
        return f600a[i - 1];
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public int mo740c(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o == EnumC2730a.MONTH_OF_YEAR ? m797k() : AbstractC2743n.m734a(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o == EnumC2730a.MONTH_OF_YEAR ? interfaceC2744o.mo730a() : AbstractC2743n.m732c(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o == EnumC2730a.MONTH_OF_YEAR) {
            return m797k();
        }
        if (interfaceC2744o instanceof EnumC2730a) {
            throw new C2755z("Unsupported field: " + interfaceC2744o);
        }
        return interfaceC2744o.mo727d(this);
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
            return interfaceC2739j.mo742b(EnumC2730a.MONTH_OF_YEAR, m797k());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? interfaceC2744o == EnumC2730a.MONTH_OF_YEAR : interfaceC2744o != null && interfaceC2744o.mo726e(this);
    }

    /* renamed from: j */
    public int m798j(boolean z) {
        int i;
        switch (AbstractC2719i.f599a[ordinal()]) {
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
    public int m797k() {
        return ordinal() + 1;
    }

    /* renamed from: l */
    public int m796l(boolean z) {
        int i = AbstractC2719i.f599a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    /* renamed from: n */
    public EnumC2720j m794n(long j) {
        return f600a[((((int) (j % 12)) + 12) + ordinal()) % 12];
    }
}
