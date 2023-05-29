package p034j$.time.format;

import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p034j$.time.chrono.C2607c;
import p034j$.time.chrono.InterfaceC2606b;
import p034j$.time.temporal.AbstractC2637i;
import p034j$.time.temporal.EnumC2629a;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2608a {

    /* renamed from: a */
    private final C2613f f490a;

    static {
        C2623p c2623p = new C2623p();
        EnumC2629a enumC2629a = EnumC2629a.YEAR;
        EnumC2627t enumC2627t = EnumC2627t.EXCEEDS_PAD;
        C2623p m652l = c2623p.m652l(enumC2629a, 4, 10, enumC2627t);
        m652l.m659e('-');
        EnumC2629a enumC2629a2 = EnumC2629a.MONTH_OF_YEAR;
        m652l.m653k(enumC2629a2, 2);
        m652l.m659e('-');
        EnumC2629a enumC2629a3 = EnumC2629a.DAY_OF_MONTH;
        m652l.m653k(enumC2629a3, 2);
        C2607c c2607c = C2607c.f489a;
        C2608a m643u = m652l.m643u(1, c2607c);
        C2623p c2623p2 = new C2623p();
        c2623p2.m648p();
        c2623p2.m663a(m643u);
        c2623p2.m656h();
        c2623p2.m643u(1, c2607c);
        C2623p c2623p3 = new C2623p();
        c2623p3.m648p();
        c2623p3.m663a(m643u);
        c2623p3.m649o();
        c2623p3.m656h();
        c2623p3.m643u(1, c2607c);
        C2623p c2623p4 = new C2623p();
        EnumC2629a enumC2629a4 = EnumC2629a.HOUR_OF_DAY;
        c2623p4.m653k(enumC2629a4, 2);
        c2623p4.m659e(':');
        EnumC2629a enumC2629a5 = EnumC2629a.MINUTE_OF_HOUR;
        c2623p4.m653k(enumC2629a5, 2);
        c2623p4.m649o();
        c2623p4.m659e(':');
        EnumC2629a enumC2629a6 = EnumC2629a.SECOND_OF_MINUTE;
        c2623p4.m653k(enumC2629a6, 2);
        c2623p4.m649o();
        c2623p4.m662b(EnumC2629a.NANO_OF_SECOND, 0, 9, true);
        C2608a m643u2 = c2623p4.m643u(1, null);
        C2623p c2623p5 = new C2623p();
        c2623p5.m648p();
        c2623p5.m663a(m643u2);
        c2623p5.m656h();
        c2623p5.m643u(1, null);
        C2623p c2623p6 = new C2623p();
        c2623p6.m648p();
        c2623p6.m663a(m643u2);
        c2623p6.m649o();
        c2623p6.m656h();
        c2623p6.m643u(1, null);
        C2623p c2623p7 = new C2623p();
        c2623p7.m648p();
        c2623p7.m663a(m643u);
        c2623p7.m659e('T');
        c2623p7.m663a(m643u2);
        C2608a m643u3 = c2623p7.m643u(1, c2607c);
        C2623p c2623p8 = new C2623p();
        c2623p8.m648p();
        c2623p8.m663a(m643u3);
        c2623p8.m656h();
        C2608a m643u4 = c2623p8.m643u(1, c2607c);
        C2623p c2623p9 = new C2623p();
        c2623p9.m663a(m643u4);
        c2623p9.m649o();
        c2623p9.m659e('[');
        c2623p9.m647q();
        c2623p9.m651m();
        c2623p9.m659e(']');
        c2623p9.m643u(1, c2607c);
        C2623p c2623p10 = new C2623p();
        c2623p10.m663a(m643u3);
        c2623p10.m649o();
        c2623p10.m656h();
        c2623p10.m649o();
        c2623p10.m659e('[');
        c2623p10.m647q();
        c2623p10.m651m();
        c2623p10.m659e(']');
        c2623p10.m643u(1, c2607c);
        C2623p c2623p11 = new C2623p();
        c2623p11.m648p();
        C2623p m652l2 = c2623p11.m652l(enumC2629a, 4, 10, enumC2627t);
        m652l2.m659e('-');
        m652l2.m653k(EnumC2629a.DAY_OF_YEAR, 3);
        m652l2.m649o();
        m652l2.m656h();
        m652l2.m643u(1, c2607c);
        C2623p c2623p12 = new C2623p();
        c2623p12.m648p();
        C2623p m652l3 = c2623p12.m652l(AbstractC2637i.f533c, 4, 10, enumC2627t);
        m652l3.m658f("-W");
        m652l3.m653k(AbstractC2637i.f532b, 2);
        m652l3.m659e('-');
        EnumC2629a enumC2629a7 = EnumC2629a.DAY_OF_WEEK;
        m652l3.m653k(enumC2629a7, 1);
        m652l3.m649o();
        m652l3.m656h();
        m652l3.m643u(1, c2607c);
        C2623p c2623p13 = new C2623p();
        c2623p13.m648p();
        c2623p13.m661c();
        c2623p13.m643u(1, null);
        C2623p c2623p14 = new C2623p();
        c2623p14.m648p();
        c2623p14.m653k(enumC2629a, 4);
        c2623p14.m653k(enumC2629a2, 2);
        c2623p14.m653k(enumC2629a3, 2);
        c2623p14.m649o();
        c2623p14.m657g("+HHMMss", "Z");
        c2623p14.m643u(1, c2607c);
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
        C2623p c2623p15 = new C2623p();
        c2623p15.m648p();
        c2623p15.m646r();
        c2623p15.m649o();
        c2623p15.m655i(enumC2629a7, hashMap);
        c2623p15.m658f(", ");
        c2623p15.m650n();
        C2623p m652l4 = c2623p15.m652l(enumC2629a3, 1, 2, EnumC2627t.NOT_NEGATIVE);
        m652l4.m659e(' ');
        m652l4.m655i(enumC2629a2, hashMap2);
        m652l4.m659e(' ');
        m652l4.m653k(enumC2629a, 4);
        m652l4.m659e(' ');
        m652l4.m653k(enumC2629a4, 2);
        m652l4.m659e(':');
        m652l4.m653k(enumC2629a5, 2);
        m652l4.m649o();
        m652l4.m659e(':');
        m652l4.m653k(enumC2629a6, 2);
        m652l4.m650n();
        m652l4.m659e(' ');
        m652l4.m657g("+HHMM", "GMT");
        m652l4.m643u(2, c2607c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2608a(C2613f c2613f, Locale locale, C2625r c2625r, int i, Set set, InterfaceC2606b interfaceC2606b) {
        Objects.requireNonNull(c2613f, "printerParser");
        this.f490a = c2613f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2625r, "decimalStyle");
        AbstractC2626s.m642a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2613f m669a(boolean z) {
        return this.f490a.m667a(z);
    }

    public String toString() {
        String c2613f = this.f490a.toString();
        return c2613f.startsWith("[") ? c2613f : c2613f.substring(1, c2613f.length() - 1);
    }
}
