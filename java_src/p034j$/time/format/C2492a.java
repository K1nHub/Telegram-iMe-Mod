package p034j$.time.format;

import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p034j$.time.chrono.C2491c;
import p034j$.time.chrono.InterfaceC2490b;
import p034j$.time.temporal.AbstractC2521i;
import p034j$.time.temporal.EnumC2513a;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2492a {

    /* renamed from: a */
    private final C2497f f486a;

    static {
        C2507p c2507p = new C2507p();
        EnumC2513a enumC2513a = EnumC2513a.YEAR;
        EnumC2511t enumC2511t = EnumC2511t.EXCEEDS_PAD;
        C2507p m667l = c2507p.m667l(enumC2513a, 4, 10, enumC2511t);
        m667l.m674e('-');
        EnumC2513a enumC2513a2 = EnumC2513a.MONTH_OF_YEAR;
        m667l.m668k(enumC2513a2, 2);
        m667l.m674e('-');
        EnumC2513a enumC2513a3 = EnumC2513a.DAY_OF_MONTH;
        m667l.m668k(enumC2513a3, 2);
        C2491c c2491c = C2491c.f485a;
        C2492a m658u = m667l.m658u(1, c2491c);
        C2507p c2507p2 = new C2507p();
        c2507p2.m663p();
        c2507p2.m678a(m658u);
        c2507p2.m671h();
        c2507p2.m658u(1, c2491c);
        C2507p c2507p3 = new C2507p();
        c2507p3.m663p();
        c2507p3.m678a(m658u);
        c2507p3.m664o();
        c2507p3.m671h();
        c2507p3.m658u(1, c2491c);
        C2507p c2507p4 = new C2507p();
        EnumC2513a enumC2513a4 = EnumC2513a.HOUR_OF_DAY;
        c2507p4.m668k(enumC2513a4, 2);
        c2507p4.m674e(':');
        EnumC2513a enumC2513a5 = EnumC2513a.MINUTE_OF_HOUR;
        c2507p4.m668k(enumC2513a5, 2);
        c2507p4.m664o();
        c2507p4.m674e(':');
        EnumC2513a enumC2513a6 = EnumC2513a.SECOND_OF_MINUTE;
        c2507p4.m668k(enumC2513a6, 2);
        c2507p4.m664o();
        c2507p4.m677b(EnumC2513a.NANO_OF_SECOND, 0, 9, true);
        C2492a m658u2 = c2507p4.m658u(1, null);
        C2507p c2507p5 = new C2507p();
        c2507p5.m663p();
        c2507p5.m678a(m658u2);
        c2507p5.m671h();
        c2507p5.m658u(1, null);
        C2507p c2507p6 = new C2507p();
        c2507p6.m663p();
        c2507p6.m678a(m658u2);
        c2507p6.m664o();
        c2507p6.m671h();
        c2507p6.m658u(1, null);
        C2507p c2507p7 = new C2507p();
        c2507p7.m663p();
        c2507p7.m678a(m658u);
        c2507p7.m674e('T');
        c2507p7.m678a(m658u2);
        C2492a m658u3 = c2507p7.m658u(1, c2491c);
        C2507p c2507p8 = new C2507p();
        c2507p8.m663p();
        c2507p8.m678a(m658u3);
        c2507p8.m671h();
        C2492a m658u4 = c2507p8.m658u(1, c2491c);
        C2507p c2507p9 = new C2507p();
        c2507p9.m678a(m658u4);
        c2507p9.m664o();
        c2507p9.m674e('[');
        c2507p9.m662q();
        c2507p9.m666m();
        c2507p9.m674e(']');
        c2507p9.m658u(1, c2491c);
        C2507p c2507p10 = new C2507p();
        c2507p10.m678a(m658u3);
        c2507p10.m664o();
        c2507p10.m671h();
        c2507p10.m664o();
        c2507p10.m674e('[');
        c2507p10.m662q();
        c2507p10.m666m();
        c2507p10.m674e(']');
        c2507p10.m658u(1, c2491c);
        C2507p c2507p11 = new C2507p();
        c2507p11.m663p();
        C2507p m667l2 = c2507p11.m667l(enumC2513a, 4, 10, enumC2511t);
        m667l2.m674e('-');
        m667l2.m668k(EnumC2513a.DAY_OF_YEAR, 3);
        m667l2.m664o();
        m667l2.m671h();
        m667l2.m658u(1, c2491c);
        C2507p c2507p12 = new C2507p();
        c2507p12.m663p();
        C2507p m667l3 = c2507p12.m667l(AbstractC2521i.f529c, 4, 10, enumC2511t);
        m667l3.m673f("-W");
        m667l3.m668k(AbstractC2521i.f528b, 2);
        m667l3.m674e('-');
        EnumC2513a enumC2513a7 = EnumC2513a.DAY_OF_WEEK;
        m667l3.m668k(enumC2513a7, 1);
        m667l3.m664o();
        m667l3.m671h();
        m667l3.m658u(1, c2491c);
        C2507p c2507p13 = new C2507p();
        c2507p13.m663p();
        c2507p13.m676c();
        c2507p13.m658u(1, null);
        C2507p c2507p14 = new C2507p();
        c2507p14.m663p();
        c2507p14.m668k(enumC2513a, 4);
        c2507p14.m668k(enumC2513a2, 2);
        c2507p14.m668k(enumC2513a3, 2);
        c2507p14.m664o();
        c2507p14.m672g("+HHMMss", "Z");
        c2507p14.m658u(1, c2491c);
        HashMap hashMap = new HashMap();
        hashMap.put(1L, "Mon");
        hashMap.put(2L, "Tue");
        hashMap.put(3L, "Wed");
        hashMap.put(4L, "Thu");
        hashMap.put(5L, "Fri");
        hashMap.put(6L, "Sat");
        hashMap.put(7L, "Sun");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(1L, "Jan");
        hashMap2.put(2L, "Feb");
        hashMap2.put(3L, "Mar");
        hashMap2.put(4L, "Apr");
        hashMap2.put(5L, "May");
        hashMap2.put(6L, "Jun");
        hashMap2.put(7L, "Jul");
        hashMap2.put(8L, "Aug");
        hashMap2.put(9L, "Sep");
        hashMap2.put(10L, "Oct");
        hashMap2.put(11L, "Nov");
        hashMap2.put(12L, "Dec");
        C2507p c2507p15 = new C2507p();
        c2507p15.m663p();
        c2507p15.m661r();
        c2507p15.m664o();
        c2507p15.m670i(enumC2513a7, hashMap);
        c2507p15.m673f(", ");
        c2507p15.m665n();
        C2507p m667l4 = c2507p15.m667l(enumC2513a3, 1, 2, EnumC2511t.NOT_NEGATIVE);
        m667l4.m674e(' ');
        m667l4.m670i(enumC2513a2, hashMap2);
        m667l4.m674e(' ');
        m667l4.m668k(enumC2513a, 4);
        m667l4.m674e(' ');
        m667l4.m668k(enumC2513a4, 2);
        m667l4.m674e(':');
        m667l4.m668k(enumC2513a5, 2);
        m667l4.m664o();
        m667l4.m674e(':');
        m667l4.m668k(enumC2513a6, 2);
        m667l4.m665n();
        m667l4.m674e(' ');
        m667l4.m672g("+HHMM", "GMT");
        m667l4.m658u(2, c2491c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2492a(C2497f c2497f, Locale locale, C2509r c2509r, int i, Set set, InterfaceC2490b interfaceC2490b) {
        Objects.requireNonNull(c2497f, "printerParser");
        this.f486a = c2497f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2509r, "decimalStyle");
        AbstractC2510s.m657a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2497f m684a(boolean z) {
        return this.f486a.m682a(z);
    }

    public String toString() {
        String c2497f = this.f486a.toString();
        return c2497f.startsWith("[") ? c2497f : c2497f.substring(1, c2497f.length() - 1);
    }
}
