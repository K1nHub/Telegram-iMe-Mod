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
    private final C2739f f572a;

    static {
        C2749p c2749p = new C2749p();
        EnumC2755a enumC2755a = EnumC2755a.YEAR;
        EnumC2753t enumC2753t = EnumC2753t.EXCEEDS_PAD;
        C2749p m652l = c2749p.m652l(enumC2755a, 4, 10, enumC2753t);
        m652l.m659e('-');
        EnumC2755a enumC2755a2 = EnumC2755a.MONTH_OF_YEAR;
        m652l.m653k(enumC2755a2, 2);
        m652l.m659e('-');
        EnumC2755a enumC2755a3 = EnumC2755a.DAY_OF_MONTH;
        m652l.m653k(enumC2755a3, 2);
        C2733c c2733c = C2733c.f571a;
        C2734a m643u = m652l.m643u(1, c2733c);
        C2749p c2749p2 = new C2749p();
        c2749p2.m648p();
        c2749p2.m663a(m643u);
        c2749p2.m656h();
        c2749p2.m643u(1, c2733c);
        C2749p c2749p3 = new C2749p();
        c2749p3.m648p();
        c2749p3.m663a(m643u);
        c2749p3.m649o();
        c2749p3.m656h();
        c2749p3.m643u(1, c2733c);
        C2749p c2749p4 = new C2749p();
        EnumC2755a enumC2755a4 = EnumC2755a.HOUR_OF_DAY;
        c2749p4.m653k(enumC2755a4, 2);
        c2749p4.m659e(':');
        EnumC2755a enumC2755a5 = EnumC2755a.MINUTE_OF_HOUR;
        c2749p4.m653k(enumC2755a5, 2);
        c2749p4.m649o();
        c2749p4.m659e(':');
        EnumC2755a enumC2755a6 = EnumC2755a.SECOND_OF_MINUTE;
        c2749p4.m653k(enumC2755a6, 2);
        c2749p4.m649o();
        c2749p4.m662b(EnumC2755a.NANO_OF_SECOND, 0, 9, true);
        C2734a m643u2 = c2749p4.m643u(1, null);
        C2749p c2749p5 = new C2749p();
        c2749p5.m648p();
        c2749p5.m663a(m643u2);
        c2749p5.m656h();
        c2749p5.m643u(1, null);
        C2749p c2749p6 = new C2749p();
        c2749p6.m648p();
        c2749p6.m663a(m643u2);
        c2749p6.m649o();
        c2749p6.m656h();
        c2749p6.m643u(1, null);
        C2749p c2749p7 = new C2749p();
        c2749p7.m648p();
        c2749p7.m663a(m643u);
        c2749p7.m659e('T');
        c2749p7.m663a(m643u2);
        C2734a m643u3 = c2749p7.m643u(1, c2733c);
        C2749p c2749p8 = new C2749p();
        c2749p8.m648p();
        c2749p8.m663a(m643u3);
        c2749p8.m656h();
        C2734a m643u4 = c2749p8.m643u(1, c2733c);
        C2749p c2749p9 = new C2749p();
        c2749p9.m663a(m643u4);
        c2749p9.m649o();
        c2749p9.m659e('[');
        c2749p9.m647q();
        c2749p9.m651m();
        c2749p9.m659e(']');
        c2749p9.m643u(1, c2733c);
        C2749p c2749p10 = new C2749p();
        c2749p10.m663a(m643u3);
        c2749p10.m649o();
        c2749p10.m656h();
        c2749p10.m649o();
        c2749p10.m659e('[');
        c2749p10.m647q();
        c2749p10.m651m();
        c2749p10.m659e(']');
        c2749p10.m643u(1, c2733c);
        C2749p c2749p11 = new C2749p();
        c2749p11.m648p();
        C2749p m652l2 = c2749p11.m652l(enumC2755a, 4, 10, enumC2753t);
        m652l2.m659e('-');
        m652l2.m653k(EnumC2755a.DAY_OF_YEAR, 3);
        m652l2.m649o();
        m652l2.m656h();
        m652l2.m643u(1, c2733c);
        C2749p c2749p12 = new C2749p();
        c2749p12.m648p();
        C2749p m652l3 = c2749p12.m652l(AbstractC2763i.f615c, 4, 10, enumC2753t);
        m652l3.m658f("-W");
        m652l3.m653k(AbstractC2763i.f614b, 2);
        m652l3.m659e('-');
        EnumC2755a enumC2755a7 = EnumC2755a.DAY_OF_WEEK;
        m652l3.m653k(enumC2755a7, 1);
        m652l3.m649o();
        m652l3.m656h();
        m652l3.m643u(1, c2733c);
        C2749p c2749p13 = new C2749p();
        c2749p13.m648p();
        c2749p13.m661c();
        c2749p13.m643u(1, null);
        C2749p c2749p14 = new C2749p();
        c2749p14.m648p();
        c2749p14.m653k(enumC2755a, 4);
        c2749p14.m653k(enumC2755a2, 2);
        c2749p14.m653k(enumC2755a3, 2);
        c2749p14.m649o();
        c2749p14.m657g("+HHMMss", "Z");
        c2749p14.m643u(1, c2733c);
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
        c2749p15.m648p();
        c2749p15.m646r();
        c2749p15.m649o();
        c2749p15.m655i(enumC2755a7, hashMap);
        c2749p15.m658f(", ");
        c2749p15.m650n();
        C2749p m652l4 = c2749p15.m652l(enumC2755a3, 1, 2, EnumC2753t.NOT_NEGATIVE);
        m652l4.m659e(' ');
        m652l4.m655i(enumC2755a2, hashMap2);
        m652l4.m659e(' ');
        m652l4.m653k(enumC2755a, 4);
        m652l4.m659e(' ');
        m652l4.m653k(enumC2755a4, 2);
        m652l4.m659e(':');
        m652l4.m653k(enumC2755a5, 2);
        m652l4.m649o();
        m652l4.m659e(':');
        m652l4.m653k(enumC2755a6, 2);
        m652l4.m650n();
        m652l4.m659e(' ');
        m652l4.m657g("+HHMM", "GMT");
        m652l4.m643u(2, c2733c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2734a(C2739f c2739f, Locale locale, C2751r c2751r, int i, Set set, InterfaceC2732b interfaceC2732b) {
        Objects.requireNonNull(c2739f, "printerParser");
        this.f572a = c2739f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2751r, "decimalStyle");
        AbstractC2752s.m642a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2739f m669a(boolean z) {
        return this.f572a.m667a(z);
    }

    public String toString() {
        String c2739f = this.f572a.toString();
        return c2739f.startsWith("[") ? c2739f : c2739f.substring(1, c2739f.length() - 1);
    }
}
