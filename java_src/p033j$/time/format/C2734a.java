package p033j$.time.format;

import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.chrono.C2733c;
import p033j$.time.chrono.InterfaceC2732b;
import p033j$.time.temporal.AbstractC2763i;
import p033j$.time.temporal.EnumC2755a;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2734a {

    /* renamed from: a */
    private final C2739f f575a;

    static {
        C2749p c2749p = new C2749p();
        EnumC2755a enumC2755a = EnumC2755a.YEAR;
        EnumC2753t enumC2753t = EnumC2753t.EXCEEDS_PAD;
        C2749p m670l = c2749p.m670l(enumC2755a, 4, 10, enumC2753t);
        m670l.m677e('-');
        EnumC2755a enumC2755a2 = EnumC2755a.MONTH_OF_YEAR;
        m670l.m671k(enumC2755a2, 2);
        m670l.m677e('-');
        EnumC2755a enumC2755a3 = EnumC2755a.DAY_OF_MONTH;
        m670l.m671k(enumC2755a3, 2);
        C2733c c2733c = C2733c.f574a;
        C2734a m661u = m670l.m661u(1, c2733c);
        C2749p c2749p2 = new C2749p();
        c2749p2.m666p();
        c2749p2.m681a(m661u);
        c2749p2.m674h();
        c2749p2.m661u(1, c2733c);
        C2749p c2749p3 = new C2749p();
        c2749p3.m666p();
        c2749p3.m681a(m661u);
        c2749p3.m667o();
        c2749p3.m674h();
        c2749p3.m661u(1, c2733c);
        C2749p c2749p4 = new C2749p();
        EnumC2755a enumC2755a4 = EnumC2755a.HOUR_OF_DAY;
        c2749p4.m671k(enumC2755a4, 2);
        c2749p4.m677e(':');
        EnumC2755a enumC2755a5 = EnumC2755a.MINUTE_OF_HOUR;
        c2749p4.m671k(enumC2755a5, 2);
        c2749p4.m667o();
        c2749p4.m677e(':');
        EnumC2755a enumC2755a6 = EnumC2755a.SECOND_OF_MINUTE;
        c2749p4.m671k(enumC2755a6, 2);
        c2749p4.m667o();
        c2749p4.m680b(EnumC2755a.NANO_OF_SECOND, 0, 9, true);
        C2734a m661u2 = c2749p4.m661u(1, null);
        C2749p c2749p5 = new C2749p();
        c2749p5.m666p();
        c2749p5.m681a(m661u2);
        c2749p5.m674h();
        c2749p5.m661u(1, null);
        C2749p c2749p6 = new C2749p();
        c2749p6.m666p();
        c2749p6.m681a(m661u2);
        c2749p6.m667o();
        c2749p6.m674h();
        c2749p6.m661u(1, null);
        C2749p c2749p7 = new C2749p();
        c2749p7.m666p();
        c2749p7.m681a(m661u);
        c2749p7.m677e('T');
        c2749p7.m681a(m661u2);
        C2734a m661u3 = c2749p7.m661u(1, c2733c);
        C2749p c2749p8 = new C2749p();
        c2749p8.m666p();
        c2749p8.m681a(m661u3);
        c2749p8.m674h();
        C2734a m661u4 = c2749p8.m661u(1, c2733c);
        C2749p c2749p9 = new C2749p();
        c2749p9.m681a(m661u4);
        c2749p9.m667o();
        c2749p9.m677e('[');
        c2749p9.m665q();
        c2749p9.m669m();
        c2749p9.m677e(']');
        c2749p9.m661u(1, c2733c);
        C2749p c2749p10 = new C2749p();
        c2749p10.m681a(m661u3);
        c2749p10.m667o();
        c2749p10.m674h();
        c2749p10.m667o();
        c2749p10.m677e('[');
        c2749p10.m665q();
        c2749p10.m669m();
        c2749p10.m677e(']');
        c2749p10.m661u(1, c2733c);
        C2749p c2749p11 = new C2749p();
        c2749p11.m666p();
        C2749p m670l2 = c2749p11.m670l(enumC2755a, 4, 10, enumC2753t);
        m670l2.m677e('-');
        m670l2.m671k(EnumC2755a.DAY_OF_YEAR, 3);
        m670l2.m667o();
        m670l2.m674h();
        m670l2.m661u(1, c2733c);
        C2749p c2749p12 = new C2749p();
        c2749p12.m666p();
        C2749p m670l3 = c2749p12.m670l(AbstractC2763i.f618c, 4, 10, enumC2753t);
        m670l3.m676f("-W");
        m670l3.m671k(AbstractC2763i.f617b, 2);
        m670l3.m677e('-');
        EnumC2755a enumC2755a7 = EnumC2755a.DAY_OF_WEEK;
        m670l3.m671k(enumC2755a7, 1);
        m670l3.m667o();
        m670l3.m674h();
        m670l3.m661u(1, c2733c);
        C2749p c2749p13 = new C2749p();
        c2749p13.m666p();
        c2749p13.m679c();
        c2749p13.m661u(1, null);
        C2749p c2749p14 = new C2749p();
        c2749p14.m666p();
        c2749p14.m671k(enumC2755a, 4);
        c2749p14.m671k(enumC2755a2, 2);
        c2749p14.m671k(enumC2755a3, 2);
        c2749p14.m667o();
        c2749p14.m675g("+HHMMss", "Z");
        c2749p14.m661u(1, c2733c);
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
        C2749p c2749p15 = new C2749p();
        c2749p15.m666p();
        c2749p15.m664r();
        c2749p15.m667o();
        c2749p15.m673i(enumC2755a7, hashMap);
        c2749p15.m676f(", ");
        c2749p15.m668n();
        C2749p m670l4 = c2749p15.m670l(enumC2755a3, 1, 2, EnumC2753t.NOT_NEGATIVE);
        m670l4.m677e(' ');
        m670l4.m673i(enumC2755a2, hashMap2);
        m670l4.m677e(' ');
        m670l4.m671k(enumC2755a, 4);
        m670l4.m677e(' ');
        m670l4.m671k(enumC2755a4, 2);
        m670l4.m677e(':');
        m670l4.m671k(enumC2755a5, 2);
        m670l4.m667o();
        m670l4.m677e(':');
        m670l4.m671k(enumC2755a6, 2);
        m670l4.m668n();
        m670l4.m677e(' ');
        m670l4.m675g("+HHMM", "GMT");
        m670l4.m661u(2, c2733c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2734a(C2739f c2739f, Locale locale, C2751r c2751r, int i, Set set, InterfaceC2732b interfaceC2732b) {
        Objects.requireNonNull(c2739f, "printerParser");
        this.f575a = c2739f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2751r, "decimalStyle");
        AbstractC2752s.m660a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2739f m687a(boolean z) {
        return this.f575a.m685a(z);
    }

    public String toString() {
        String c2739f = this.f575a.toString();
        return c2739f.startsWith("[") ? c2739f : c2739f.substring(1, c2739f.length() - 1);
    }
}
