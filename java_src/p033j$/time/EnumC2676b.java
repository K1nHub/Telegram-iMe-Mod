package p033j$.time;

import p033j$.time.temporal.AbstractC2743n;
import p033j$.time.temporal.AbstractC2752w;
import p033j$.time.temporal.C2729A;
import p033j$.time.temporal.C2747r;
import p033j$.time.temporal.C2755z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2739j;
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2741l;
import p033j$.time.temporal.InterfaceC2744o;
import p033j$.time.temporal.InterfaceC2753x;
/* renamed from: j$.time.b */
/* loaded from: classes2.dex */
public enum EnumC2676b implements InterfaceC2740k, InterfaceC2741l {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY;
    

    /* renamed from: a */
    private static final EnumC2676b[] f496a = values();

    /* renamed from: k */
    public static EnumC2676b m958k(int i) {
        if (i < 1 || i > 7) {
            throw new DateTimeException("Invalid value for DayOfWeek: " + i);
        }
        return f496a[i - 1];
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public int mo740c(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o == EnumC2730a.DAY_OF_WEEK ? m959j() : AbstractC2743n.m734a(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o == EnumC2730a.DAY_OF_WEEK ? interfaceC2744o.mo730a() : AbstractC2743n.m732c(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o == EnumC2730a.DAY_OF_WEEK) {
            return m959j();
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
        return interfaceC2753x == C2747r.f642a ? ChronoUnit.DAYS : AbstractC2743n.m733b(this, interfaceC2753x);
    }

    @Override // p033j$.time.temporal.InterfaceC2741l
    /* renamed from: h */
    public InterfaceC2739j mo735h(InterfaceC2739j interfaceC2739j) {
        return interfaceC2739j.mo742b(EnumC2730a.DAY_OF_WEEK, m959j());
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? interfaceC2744o == EnumC2730a.DAY_OF_WEEK : interfaceC2744o != null && interfaceC2744o.mo726e(this);
    }

    /* renamed from: j */
    public int m959j() {
        return ordinal() + 1;
    }
}
