package p034j$.time.format;

import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p034j$.time.chrono.C2612c;
import p034j$.time.chrono.InterfaceC2611b;
import p034j$.time.temporal.AbstractC2642i;
import p034j$.time.temporal.EnumC2634a;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2613a {

    /* renamed from: a */
    private final C2618f f490a;

    static {
        C2628p c2628p = new C2628p();
        EnumC2634a enumC2634a = EnumC2634a.YEAR;
        EnumC2632t enumC2632t = EnumC2632t.EXCEEDS_PAD;
        C2628p m652l = c2628p.m652l(enumC2634a, 4, 10, enumC2632t);
        m652l.m659e('-');
        EnumC2634a enumC2634a2 = EnumC2634a.MONTH_OF_YEAR;
        m652l.m653k(enumC2634a2, 2);
        m652l.m659e('-');
        EnumC2634a enumC2634a3 = EnumC2634a.DAY_OF_MONTH;
        m652l.m653k(enumC2634a3, 2);
        C2612c c2612c = C2612c.f489a;
        C2613a m643u = m652l.m643u(1, c2612c);
        C2628p c2628p2 = new C2628p();
        c2628p2.m648p();
        c2628p2.m663a(m643u);
        c2628p2.m656h();
        c2628p2.m643u(1, c2612c);
        C2628p c2628p3 = new C2628p();
        c2628p3.m648p();
        c2628p3.m663a(m643u);
        c2628p3.m649o();
        c2628p3.m656h();
        c2628p3.m643u(1, c2612c);
        C2628p c2628p4 = new C2628p();
        EnumC2634a enumC2634a4 = EnumC2634a.HOUR_OF_DAY;
        c2628p4.m653k(enumC2634a4, 2);
        c2628p4.m659e(':');
        EnumC2634a enumC2634a5 = EnumC2634a.MINUTE_OF_HOUR;
        c2628p4.m653k(enumC2634a5, 2);
        c2628p4.m649o();
        c2628p4.m659e(':');
        EnumC2634a enumC2634a6 = EnumC2634a.SECOND_OF_MINUTE;
        c2628p4.m653k(enumC2634a6, 2);
        c2628p4.m649o();
        c2628p4.m662b(EnumC2634a.NANO_OF_SECOND, 0, 9, true);
        C2613a m643u2 = c2628p4.m643u(1, null);
        C2628p c2628p5 = new C2628p();
        c2628p5.m648p();
        c2628p5.m663a(m643u2);
        c2628p5.m656h();
        c2628p5.m643u(1, null);
        C2628p c2628p6 = new C2628p();
        c2628p6.m648p();
        c2628p6.m663a(m643u2);
        c2628p6.m649o();
        c2628p6.m656h();
        c2628p6.m643u(1, null);
        C2628p c2628p7 = new C2628p();
        c2628p7.m648p();
        c2628p7.m663a(m643u);
        c2628p7.m659e('T');
        c2628p7.m663a(m643u2);
        C2613a m643u3 = c2628p7.m643u(1, c2612c);
        C2628p c2628p8 = new C2628p();
        c2628p8.m648p();
        c2628p8.m663a(m643u3);
        c2628p8.m656h();
        C2613a m643u4 = c2628p8.m643u(1, c2612c);
        C2628p c2628p9 = new C2628p();
        c2628p9.m663a(m643u4);
        c2628p9.m649o();
        c2628p9.m659e('[');
        c2628p9.m647q();
        c2628p9.m651m();
        c2628p9.m659e(']');
        c2628p9.m643u(1, c2612c);
        C2628p c2628p10 = new C2628p();
        c2628p10.m663a(m643u3);
        c2628p10.m649o();
        c2628p10.m656h();
        c2628p10.m649o();
        c2628p10.m659e('[');
        c2628p10.m647q();
        c2628p10.m651m();
        c2628p10.m659e(']');
        c2628p10.m643u(1, c2612c);
        C2628p c2628p11 = new C2628p();
        c2628p11.m648p();
        C2628p m652l2 = c2628p11.m652l(enumC2634a, 4, 10, enumC2632t);
        m652l2.m659e('-');
        m652l2.m653k(EnumC2634a.DAY_OF_YEAR, 3);
        m652l2.m649o();
        m652l2.m656h();
        m652l2.m643u(1, c2612c);
        C2628p c2628p12 = new C2628p();
        c2628p12.m648p();
        C2628p m652l3 = c2628p12.m652l(AbstractC2642i.f533c, 4, 10, enumC2632t);
        m652l3.m658f("-W");
        m652l3.m653k(AbstractC2642i.f532b, 2);
        m652l3.m659e('-');
        EnumC2634a enumC2634a7 = EnumC2634a.DAY_OF_WEEK;
        m652l3.m653k(enumC2634a7, 1);
        m652l3.m649o();
        m652l3.m656h();
        m652l3.m643u(1, c2612c);
        C2628p c2628p13 = new C2628p();
        c2628p13.m648p();
        c2628p13.m661c();
        c2628p13.m643u(1, null);
        C2628p c2628p14 = new C2628p();
        c2628p14.m648p();
        c2628p14.m653k(enumC2634a, 4);
        c2628p14.m653k(enumC2634a2, 2);
        c2628p14.m653k(enumC2634a3, 2);
        c2628p14.m649o();
        c2628p14.m657g("+HHMMss", "Z");
        c2628p14.m643u(1, c2612c);
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
        C2628p c2628p15 = new C2628p();
        c2628p15.m648p();
        c2628p15.m646r();
        c2628p15.m649o();
        c2628p15.m655i(enumC2634a7, hashMap);
        c2628p15.m658f(", ");
        c2628p15.m650n();
        C2628p m652l4 = c2628p15.m652l(enumC2634a3, 1, 2, EnumC2632t.NOT_NEGATIVE);
        m652l4.m659e(' ');
        m652l4.m655i(enumC2634a2, hashMap2);
        m652l4.m659e(' ');
        m652l4.m653k(enumC2634a, 4);
        m652l4.m659e(' ');
        m652l4.m653k(enumC2634a4, 2);
        m652l4.m659e(':');
        m652l4.m653k(enumC2634a5, 2);
        m652l4.m649o();
        m652l4.m659e(':');
        m652l4.m653k(enumC2634a6, 2);
        m652l4.m650n();
        m652l4.m659e(' ');
        m652l4.m657g("+HHMM", "GMT");
        m652l4.m643u(2, c2612c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2613a(C2618f c2618f, Locale locale, C2630r c2630r, int i, Set set, InterfaceC2611b interfaceC2611b) {
        Objects.requireNonNull(c2618f, "printerParser");
        this.f490a = c2618f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2630r, "decimalStyle");
        AbstractC2631s.m642a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2618f m669a(boolean z) {
        return this.f490a.m667a(z);
    }

    public String toString() {
        String c2618f = this.f490a.toString();
        return c2618f.startsWith("[") ? c2618f : c2618f.substring(1, c2618f.length() - 1);
    }
}
