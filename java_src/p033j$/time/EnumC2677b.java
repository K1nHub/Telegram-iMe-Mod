package p033j$.time;

import p033j$.time.temporal.AbstractC2744n;
import p033j$.time.temporal.AbstractC2753w;
import p033j$.time.temporal.C2730A;
import p033j$.time.temporal.C2748r;
import p033j$.time.temporal.C2756z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2740j;
import p033j$.time.temporal.InterfaceC2741k;
import p033j$.time.temporal.InterfaceC2742l;
import p033j$.time.temporal.InterfaceC2745o;
import p033j$.time.temporal.InterfaceC2754x;
/* renamed from: j$.time.b */
/* loaded from: classes2.dex */
public enum EnumC2677b implements InterfaceC2741k, InterfaceC2742l {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY;
    

    /* renamed from: a */
    private static final EnumC2677b[] f496a = values();

    /* renamed from: k */
    public static EnumC2677b m959k(int i) {
        if (i < 1 || i > 7) {
            throw new DateTimeException("Invalid value for DayOfWeek: " + i);
        }
        return f496a[i - 1];
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: c */
    public int mo741c(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o == EnumC2731a.DAY_OF_WEEK ? m960j() : AbstractC2744n.m735a(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: d */
    public C2730A mo740d(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o == EnumC2731a.DAY_OF_WEEK ? interfaceC2745o.mo731a() : AbstractC2744n.m733c(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: e */
    public long mo739e(InterfaceC2745o interfaceC2745o) {
        if (interfaceC2745o == EnumC2731a.DAY_OF_WEEK) {
            return m960j();
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
        return interfaceC2754x == C2748r.f642a ? ChronoUnit.DAYS : AbstractC2744n.m734b(this, interfaceC2754x);
    }

    @Override // p033j$.time.temporal.InterfaceC2742l
    /* renamed from: h */
    public InterfaceC2740j mo736h(InterfaceC2740j interfaceC2740j) {
        return interfaceC2740j.mo743b(EnumC2731a.DAY_OF_WEEK, m960j());
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o instanceof EnumC2731a ? interfaceC2745o == EnumC2731a.DAY_OF_WEEK : interfaceC2745o != null && interfaceC2745o.mo727e(this);
    }

    /* renamed from: j */
    public int m960j() {
        return ordinal() + 1;
    }
}
