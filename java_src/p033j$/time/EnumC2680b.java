package p033j$.time;

import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.C2751r;
import p033j$.time.temporal.C2759z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2743j;
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2745l;
import p033j$.time.temporal.InterfaceC2748o;
import p033j$.time.temporal.InterfaceC2757x;
/* renamed from: j$.time.b */
/* loaded from: classes2.dex */
public enum EnumC2680b implements InterfaceC2744k, InterfaceC2745l {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY;
    

    /* renamed from: a */
    private static final EnumC2680b[] f496a = values();

    /* renamed from: k */
    public static EnumC2680b m959k(int i) {
        if (i < 1 || i > 7) {
            throw new DateTimeException("Invalid value for DayOfWeek: " + i);
        }
        return f496a[i - 1];
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public int mo741c(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o == EnumC2734a.DAY_OF_WEEK ? m960j() : AbstractC2747n.m735a(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o == EnumC2734a.DAY_OF_WEEK ? interfaceC2748o.mo731a() : AbstractC2747n.m733c(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o == EnumC2734a.DAY_OF_WEEK) {
            return m960j();
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
        return interfaceC2757x == C2751r.f642a ? ChronoUnit.DAYS : AbstractC2747n.m734b(this, interfaceC2757x);
    }

    @Override // p033j$.time.temporal.InterfaceC2745l
    /* renamed from: h */
    public InterfaceC2743j mo736h(InterfaceC2743j interfaceC2743j) {
        return interfaceC2743j.mo743b(EnumC2734a.DAY_OF_WEEK, m960j());
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? interfaceC2748o == EnumC2734a.DAY_OF_WEEK : interfaceC2748o != null && interfaceC2748o.mo727e(this);
    }

    /* renamed from: j */
    public int m960j() {
        return ordinal() + 1;
    }
}
