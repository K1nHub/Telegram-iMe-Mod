package p033j$.time.format;

import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.chrono.C2788c;
import p033j$.time.chrono.InterfaceC2787b;
import p033j$.time.temporal.AbstractC2818i;
import p033j$.time.temporal.EnumC2810a;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2789a {

    /* renamed from: a */
    private final C2794f f576a;

    static {
        C2804p c2804p = new C2804p();
        EnumC2810a enumC2810a = EnumC2810a.YEAR;
        EnumC2808t enumC2808t = EnumC2808t.EXCEEDS_PAD;
        C2804p m670l = c2804p.m670l(enumC2810a, 4, 10, enumC2808t);
        m670l.m677e('-');
        EnumC2810a enumC2810a2 = EnumC2810a.MONTH_OF_YEAR;
        m670l.m671k(enumC2810a2, 2);
        m670l.m677e('-');
        EnumC2810a enumC2810a3 = EnumC2810a.DAY_OF_MONTH;
        m670l.m671k(enumC2810a3, 2);
        C2788c c2788c = C2788c.f575a;
        C2789a m661u = m670l.m661u(1, c2788c);
        C2804p c2804p2 = new C2804p();
        c2804p2.m666p();
        c2804p2.m681a(m661u);
        c2804p2.m674h();
        c2804p2.m661u(1, c2788c);
        C2804p c2804p3 = new C2804p();
        c2804p3.m666p();
        c2804p3.m681a(m661u);
        c2804p3.m667o();
        c2804p3.m674h();
        c2804p3.m661u(1, c2788c);
        C2804p c2804p4 = new C2804p();
        EnumC2810a enumC2810a4 = EnumC2810a.HOUR_OF_DAY;
        c2804p4.m671k(enumC2810a4, 2);
        c2804p4.m677e(':');
        EnumC2810a enumC2810a5 = EnumC2810a.MINUTE_OF_HOUR;
        c2804p4.m671k(enumC2810a5, 2);
        c2804p4.m667o();
        c2804p4.m677e(':');
        EnumC2810a enumC2810a6 = EnumC2810a.SECOND_OF_MINUTE;
        c2804p4.m671k(enumC2810a6, 2);
        c2804p4.m667o();
        c2804p4.m680b(EnumC2810a.NANO_OF_SECOND, 0, 9, true);
        C2789a m661u2 = c2804p4.m661u(1, null);
        C2804p c2804p5 = new C2804p();
        c2804p5.m666p();
        c2804p5.m681a(m661u2);
        c2804p5.m674h();
        c2804p5.m661u(1, null);
        C2804p c2804p6 = new C2804p();
        c2804p6.m666p();
        c2804p6.m681a(m661u2);
        c2804p6.m667o();
        c2804p6.m674h();
        c2804p6.m661u(1, null);
        C2804p c2804p7 = new C2804p();
        c2804p7.m666p();
        c2804p7.m681a(m661u);
        c2804p7.m677e('T');
        c2804p7.m681a(m661u2);
        C2789a m661u3 = c2804p7.m661u(1, c2788c);
        C2804p c2804p8 = new C2804p();
        c2804p8.m666p();
        c2804p8.m681a(m661u3);
        c2804p8.m674h();
        C2789a m661u4 = c2804p8.m661u(1, c2788c);
        C2804p c2804p9 = new C2804p();
        c2804p9.m681a(m661u4);
        c2804p9.m667o();
        c2804p9.m677e('[');
        c2804p9.m665q();
        c2804p9.m669m();
        c2804p9.m677e(']');
        c2804p9.m661u(1, c2788c);
        C2804p c2804p10 = new C2804p();
        c2804p10.m681a(m661u3);
        c2804p10.m667o();
        c2804p10.m674h();
        c2804p10.m667o();
        c2804p10.m677e('[');
        c2804p10.m665q();
        c2804p10.m669m();
        c2804p10.m677e(']');
        c2804p10.m661u(1, c2788c);
        C2804p c2804p11 = new C2804p();
        c2804p11.m666p();
        C2804p m670l2 = c2804p11.m670l(enumC2810a, 4, 10, enumC2808t);
        m670l2.m677e('-');
        m670l2.m671k(EnumC2810a.DAY_OF_YEAR, 3);
        m670l2.m667o();
        m670l2.m674h();
        m670l2.m661u(1, c2788c);
        C2804p c2804p12 = new C2804p();
        c2804p12.m666p();
        C2804p m670l3 = c2804p12.m670l(AbstractC2818i.f619c, 4, 10, enumC2808t);
        m670l3.m676f("-W");
        m670l3.m671k(AbstractC2818i.f618b, 2);
        m670l3.m677e('-');
        EnumC2810a enumC2810a7 = EnumC2810a.DAY_OF_WEEK;
        m670l3.m671k(enumC2810a7, 1);
        m670l3.m667o();
        m670l3.m674h();
        m670l3.m661u(1, c2788c);
        C2804p c2804p13 = new C2804p();
        c2804p13.m666p();
        c2804p13.m679c();
        c2804p13.m661u(1, null);
        C2804p c2804p14 = new C2804p();
        c2804p14.m666p();
        c2804p14.m671k(enumC2810a, 4);
        c2804p14.m671k(enumC2810a2, 2);
        c2804p14.m671k(enumC2810a3, 2);
        c2804p14.m667o();
        c2804p14.m675g("+HHMMss", "Z");
        c2804p14.m661u(1, c2788c);
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
        C2804p c2804p15 = new C2804p();
        c2804p15.m666p();
        c2804p15.m664r();
        c2804p15.m667o();
        c2804p15.m673i(enumC2810a7, hashMap);
        c2804p15.m676f(", ");
        c2804p15.m668n();
        C2804p m670l4 = c2804p15.m670l(enumC2810a3, 1, 2, EnumC2808t.NOT_NEGATIVE);
        m670l4.m677e(' ');
        m670l4.m673i(enumC2810a2, hashMap2);
        m670l4.m677e(' ');
        m670l4.m671k(enumC2810a, 4);
        m670l4.m677e(' ');
        m670l4.m671k(enumC2810a4, 2);
        m670l4.m677e(':');
        m670l4.m671k(enumC2810a5, 2);
        m670l4.m667o();
        m670l4.m677e(':');
        m670l4.m671k(enumC2810a6, 2);
        m670l4.m668n();
        m670l4.m677e(' ');
        m670l4.m675g("+HHMM", "GMT");
        m670l4.m661u(2, c2788c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2789a(C2794f c2794f, Locale locale, C2806r c2806r, int i, Set set, InterfaceC2787b interfaceC2787b) {
        Objects.requireNonNull(c2794f, "printerParser");
        this.f576a = c2794f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2806r, "decimalStyle");
        AbstractC2807s.m660a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2794f m687a(boolean z) {
        return this.f576a.m685a(z);
    }

    public String toString() {
        String c2794f = this.f576a.toString();
        return c2794f.startsWith("[") ? c2794f : c2794f.substring(1, c2794f.length() - 1);
    }
}
