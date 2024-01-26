package p033j$.time;

import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2728A;
import p033j$.time.temporal.C2746r;
import p033j$.time.temporal.C2754z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2738j;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2740l;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
/* renamed from: j$.time.b */
/* loaded from: classes2.dex */
public enum EnumC2675b implements InterfaceC2739k, InterfaceC2740l {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY;
    

    /* renamed from: a */
    private static final EnumC2675b[] f496a = values();

    /* renamed from: k */
    public static EnumC2675b m962k(int i) {
        if (i < 1 || i > 7) {
            throw new DateTimeException("Invalid value for DayOfWeek: " + i);
        }
        return f496a[i - 1];
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public int mo744c(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o == EnumC2729a.DAY_OF_WEEK ? m963j() : AbstractC2742n.m738a(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o == EnumC2729a.DAY_OF_WEEK ? interfaceC2743o.mo734a() : AbstractC2742n.m736c(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o == EnumC2729a.DAY_OF_WEEK) {
            return m963j();
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
        return interfaceC2752x == C2746r.f642a ? ChronoUnit.DAYS : AbstractC2742n.m737b(this, interfaceC2752x);
    }

    @Override // p033j$.time.temporal.InterfaceC2740l
    /* renamed from: h */
    public InterfaceC2738j mo739h(InterfaceC2738j interfaceC2738j) {
        return interfaceC2738j.mo746b(EnumC2729a.DAY_OF_WEEK, m963j());
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? interfaceC2743o == EnumC2729a.DAY_OF_WEEK : interfaceC2743o != null && interfaceC2743o.mo730e(this);
    }

    /* renamed from: j */
    public int m963j() {
        return ordinal() + 1;
    }
}
