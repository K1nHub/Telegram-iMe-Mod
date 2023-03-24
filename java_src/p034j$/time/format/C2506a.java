package p034j$.time.format;

import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p034j$.time.chrono.C2505c;
import p034j$.time.chrono.InterfaceC2504b;
import p034j$.time.temporal.AbstractC2535i;
import p034j$.time.temporal.EnumC2527a;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2506a {

    /* renamed from: a */
    private final C2511f f487a;

    static {
        C2521p c2521p = new C2521p();
        EnumC2527a enumC2527a = EnumC2527a.YEAR;
        EnumC2525t enumC2525t = EnumC2525t.EXCEEDS_PAD;
        C2521p m666l = c2521p.m666l(enumC2527a, 4, 10, enumC2525t);
        m666l.m673e('-');
        EnumC2527a enumC2527a2 = EnumC2527a.MONTH_OF_YEAR;
        m666l.m667k(enumC2527a2, 2);
        m666l.m673e('-');
        EnumC2527a enumC2527a3 = EnumC2527a.DAY_OF_MONTH;
        m666l.m667k(enumC2527a3, 2);
        C2505c c2505c = C2505c.f486a;
        C2506a m657u = m666l.m657u(1, c2505c);
        C2521p c2521p2 = new C2521p();
        c2521p2.m662p();
        c2521p2.m677a(m657u);
        c2521p2.m670h();
        c2521p2.m657u(1, c2505c);
        C2521p c2521p3 = new C2521p();
        c2521p3.m662p();
        c2521p3.m677a(m657u);
        c2521p3.m663o();
        c2521p3.m670h();
        c2521p3.m657u(1, c2505c);
        C2521p c2521p4 = new C2521p();
        EnumC2527a enumC2527a4 = EnumC2527a.HOUR_OF_DAY;
        c2521p4.m667k(enumC2527a4, 2);
        c2521p4.m673e(':');
        EnumC2527a enumC2527a5 = EnumC2527a.MINUTE_OF_HOUR;
        c2521p4.m667k(enumC2527a5, 2);
        c2521p4.m663o();
        c2521p4.m673e(':');
        EnumC2527a enumC2527a6 = EnumC2527a.SECOND_OF_MINUTE;
        c2521p4.m667k(enumC2527a6, 2);
        c2521p4.m663o();
        c2521p4.m676b(EnumC2527a.NANO_OF_SECOND, 0, 9, true);
        C2506a m657u2 = c2521p4.m657u(1, null);
        C2521p c2521p5 = new C2521p();
        c2521p5.m662p();
        c2521p5.m677a(m657u2);
        c2521p5.m670h();
        c2521p5.m657u(1, null);
        C2521p c2521p6 = new C2521p();
        c2521p6.m662p();
        c2521p6.m677a(m657u2);
        c2521p6.m663o();
        c2521p6.m670h();
        c2521p6.m657u(1, null);
        C2521p c2521p7 = new C2521p();
        c2521p7.m662p();
        c2521p7.m677a(m657u);
        c2521p7.m673e('T');
        c2521p7.m677a(m657u2);
        C2506a m657u3 = c2521p7.m657u(1, c2505c);
        C2521p c2521p8 = new C2521p();
        c2521p8.m662p();
        c2521p8.m677a(m657u3);
        c2521p8.m670h();
        C2506a m657u4 = c2521p8.m657u(1, c2505c);
        C2521p c2521p9 = new C2521p();
        c2521p9.m677a(m657u4);
        c2521p9.m663o();
        c2521p9.m673e('[');
        c2521p9.m661q();
        c2521p9.m665m();
        c2521p9.m673e(']');
        c2521p9.m657u(1, c2505c);
        C2521p c2521p10 = new C2521p();
        c2521p10.m677a(m657u3);
        c2521p10.m663o();
        c2521p10.m670h();
        c2521p10.m663o();
        c2521p10.m673e('[');
        c2521p10.m661q();
        c2521p10.m665m();
        c2521p10.m673e(']');
        c2521p10.m657u(1, c2505c);
        C2521p c2521p11 = new C2521p();
        c2521p11.m662p();
        C2521p m666l2 = c2521p11.m666l(enumC2527a, 4, 10, enumC2525t);
        m666l2.m673e('-');
        m666l2.m667k(EnumC2527a.DAY_OF_YEAR, 3);
        m666l2.m663o();
        m666l2.m670h();
        m666l2.m657u(1, c2505c);
        C2521p c2521p12 = new C2521p();
        c2521p12.m662p();
        C2521p m666l3 = c2521p12.m666l(AbstractC2535i.f530c, 4, 10, enumC2525t);
        m666l3.m672f("-W");
        m666l3.m667k(AbstractC2535i.f529b, 2);
        m666l3.m673e('-');
        EnumC2527a enumC2527a7 = EnumC2527a.DAY_OF_WEEK;
        m666l3.m667k(enumC2527a7, 1);
        m666l3.m663o();
        m666l3.m670h();
        m666l3.m657u(1, c2505c);
        C2521p c2521p13 = new C2521p();
        c2521p13.m662p();
        c2521p13.m675c();
        c2521p13.m657u(1, null);
        C2521p c2521p14 = new C2521p();
        c2521p14.m662p();
        c2521p14.m667k(enumC2527a, 4);
        c2521p14.m667k(enumC2527a2, 2);
        c2521p14.m667k(enumC2527a3, 2);
        c2521p14.m663o();
        c2521p14.m671g("+HHMMss", "Z");
        c2521p14.m657u(1, c2505c);
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
        C2521p c2521p15 = new C2521p();
        c2521p15.m662p();
        c2521p15.m660r();
        c2521p15.m663o();
        c2521p15.m669i(enumC2527a7, hashMap);
        c2521p15.m672f(", ");
        c2521p15.m664n();
        C2521p m666l4 = c2521p15.m666l(enumC2527a3, 1, 2, EnumC2525t.NOT_NEGATIVE);
        m666l4.m673e(' ');
        m666l4.m669i(enumC2527a2, hashMap2);
        m666l4.m673e(' ');
        m666l4.m667k(enumC2527a, 4);
        m666l4.m673e(' ');
        m666l4.m667k(enumC2527a4, 2);
        m666l4.m673e(':');
        m666l4.m667k(enumC2527a5, 2);
        m666l4.m663o();
        m666l4.m673e(':');
        m666l4.m667k(enumC2527a6, 2);
        m666l4.m664n();
        m666l4.m673e(' ');
        m666l4.m671g("+HHMM", "GMT");
        m666l4.m657u(2, c2505c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2506a(C2511f c2511f, Locale locale, C2523r c2523r, int i, Set set, InterfaceC2504b interfaceC2504b) {
        Objects.requireNonNull(c2511f, "printerParser");
        this.f487a = c2511f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2523r, "decimalStyle");
        AbstractC2524s.m656a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2511f m683a(boolean z) {
        return this.f487a.m681a(z);
    }

    public String toString() {
        String c2511f = this.f487a.toString();
        return c2511f.startsWith("[") ? c2511f : c2511f.substring(1, c2511f.length() - 1);
    }
}
