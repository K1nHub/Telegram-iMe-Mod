package p034j$.time.format;

import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p034j$.time.chrono.C2367c;
import p034j$.time.chrono.InterfaceC2366b;
import p034j$.time.temporal.AbstractC2397i;
import p034j$.time.temporal.EnumC2389a;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2368a {

    /* renamed from: a */
    private final C2373f f481a;

    static {
        C2383p c2383p = new C2383p();
        EnumC2389a enumC2389a = EnumC2389a.YEAR;
        EnumC2387t enumC2387t = EnumC2387t.EXCEEDS_PAD;
        C2383p m667l = c2383p.m667l(enumC2389a, 4, 10, enumC2387t);
        m667l.m674e('-');
        EnumC2389a enumC2389a2 = EnumC2389a.MONTH_OF_YEAR;
        m667l.m668k(enumC2389a2, 2);
        m667l.m674e('-');
        EnumC2389a enumC2389a3 = EnumC2389a.DAY_OF_MONTH;
        m667l.m668k(enumC2389a3, 2);
        C2367c c2367c = C2367c.f480a;
        C2368a m658u = m667l.m658u(1, c2367c);
        C2383p c2383p2 = new C2383p();
        c2383p2.m663p();
        c2383p2.m678a(m658u);
        c2383p2.m671h();
        c2383p2.m658u(1, c2367c);
        C2383p c2383p3 = new C2383p();
        c2383p3.m663p();
        c2383p3.m678a(m658u);
        c2383p3.m664o();
        c2383p3.m671h();
        c2383p3.m658u(1, c2367c);
        C2383p c2383p4 = new C2383p();
        EnumC2389a enumC2389a4 = EnumC2389a.HOUR_OF_DAY;
        c2383p4.m668k(enumC2389a4, 2);
        c2383p4.m674e(':');
        EnumC2389a enumC2389a5 = EnumC2389a.MINUTE_OF_HOUR;
        c2383p4.m668k(enumC2389a5, 2);
        c2383p4.m664o();
        c2383p4.m674e(':');
        EnumC2389a enumC2389a6 = EnumC2389a.SECOND_OF_MINUTE;
        c2383p4.m668k(enumC2389a6, 2);
        c2383p4.m664o();
        c2383p4.m677b(EnumC2389a.NANO_OF_SECOND, 0, 9, true);
        C2368a m658u2 = c2383p4.m658u(1, null);
        C2383p c2383p5 = new C2383p();
        c2383p5.m663p();
        c2383p5.m678a(m658u2);
        c2383p5.m671h();
        c2383p5.m658u(1, null);
        C2383p c2383p6 = new C2383p();
        c2383p6.m663p();
        c2383p6.m678a(m658u2);
        c2383p6.m664o();
        c2383p6.m671h();
        c2383p6.m658u(1, null);
        C2383p c2383p7 = new C2383p();
        c2383p7.m663p();
        c2383p7.m678a(m658u);
        c2383p7.m674e('T');
        c2383p7.m678a(m658u2);
        C2368a m658u3 = c2383p7.m658u(1, c2367c);
        C2383p c2383p8 = new C2383p();
        c2383p8.m663p();
        c2383p8.m678a(m658u3);
        c2383p8.m671h();
        C2368a m658u4 = c2383p8.m658u(1, c2367c);
        C2383p c2383p9 = new C2383p();
        c2383p9.m678a(m658u4);
        c2383p9.m664o();
        c2383p9.m674e('[');
        c2383p9.m662q();
        c2383p9.m666m();
        c2383p9.m674e(']');
        c2383p9.m658u(1, c2367c);
        C2383p c2383p10 = new C2383p();
        c2383p10.m678a(m658u3);
        c2383p10.m664o();
        c2383p10.m671h();
        c2383p10.m664o();
        c2383p10.m674e('[');
        c2383p10.m662q();
        c2383p10.m666m();
        c2383p10.m674e(']');
        c2383p10.m658u(1, c2367c);
        C2383p c2383p11 = new C2383p();
        c2383p11.m663p();
        C2383p m667l2 = c2383p11.m667l(enumC2389a, 4, 10, enumC2387t);
        m667l2.m674e('-');
        m667l2.m668k(EnumC2389a.DAY_OF_YEAR, 3);
        m667l2.m664o();
        m667l2.m671h();
        m667l2.m658u(1, c2367c);
        C2383p c2383p12 = new C2383p();
        c2383p12.m663p();
        C2383p m667l3 = c2383p12.m667l(AbstractC2397i.f524c, 4, 10, enumC2387t);
        m667l3.m673f("-W");
        m667l3.m668k(AbstractC2397i.f523b, 2);
        m667l3.m674e('-');
        EnumC2389a enumC2389a7 = EnumC2389a.DAY_OF_WEEK;
        m667l3.m668k(enumC2389a7, 1);
        m667l3.m664o();
        m667l3.m671h();
        m667l3.m658u(1, c2367c);
        C2383p c2383p13 = new C2383p();
        c2383p13.m663p();
        c2383p13.m676c();
        c2383p13.m658u(1, null);
        C2383p c2383p14 = new C2383p();
        c2383p14.m663p();
        c2383p14.m668k(enumC2389a, 4);
        c2383p14.m668k(enumC2389a2, 2);
        c2383p14.m668k(enumC2389a3, 2);
        c2383p14.m664o();
        c2383p14.m672g("+HHMMss", "Z");
        c2383p14.m658u(1, c2367c);
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
        C2383p c2383p15 = new C2383p();
        c2383p15.m663p();
        c2383p15.m661r();
        c2383p15.m664o();
        c2383p15.m670i(enumC2389a7, hashMap);
        c2383p15.m673f(", ");
        c2383p15.m665n();
        C2383p m667l4 = c2383p15.m667l(enumC2389a3, 1, 2, EnumC2387t.NOT_NEGATIVE);
        m667l4.m674e(' ');
        m667l4.m670i(enumC2389a2, hashMap2);
        m667l4.m674e(' ');
        m667l4.m668k(enumC2389a, 4);
        m667l4.m674e(' ');
        m667l4.m668k(enumC2389a4, 2);
        m667l4.m674e(':');
        m667l4.m668k(enumC2389a5, 2);
        m667l4.m664o();
        m667l4.m674e(':');
        m667l4.m668k(enumC2389a6, 2);
        m667l4.m665n();
        m667l4.m674e(' ');
        m667l4.m672g("+HHMM", "GMT");
        m667l4.m658u(2, c2367c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2368a(C2373f c2373f, Locale locale, C2385r c2385r, int i, Set set, InterfaceC2366b interfaceC2366b) {
        Objects.requireNonNull(c2373f, "printerParser");
        this.f481a = c2373f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2385r, "decimalStyle");
        AbstractC2386s.m657a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2373f m684a(boolean z) {
        return this.f481a.m682a(z);
    }

    public String toString() {
        String c2373f = this.f481a.toString();
        return c2373f.startsWith("[") ? c2373f : c2373f.substring(1, c2373f.length() - 1);
    }
}
