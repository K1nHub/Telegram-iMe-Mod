package p035j$.time.format;

import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p035j$.time.chrono.C2581c;
import p035j$.time.chrono.InterfaceC2580b;
import p035j$.time.temporal.AbstractC2611i;
import p035j$.time.temporal.EnumC2603a;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2582a {

    /* renamed from: a */
    private final C2587f f492a;

    static {
        C2597p c2597p = new C2597p();
        EnumC2603a enumC2603a = EnumC2603a.YEAR;
        EnumC2601t enumC2601t = EnumC2601t.EXCEEDS_PAD;
        C2597p m661l = c2597p.m661l(enumC2603a, 4, 10, enumC2601t);
        m661l.m668e('-');
        EnumC2603a enumC2603a2 = EnumC2603a.MONTH_OF_YEAR;
        m661l.m662k(enumC2603a2, 2);
        m661l.m668e('-');
        EnumC2603a enumC2603a3 = EnumC2603a.DAY_OF_MONTH;
        m661l.m662k(enumC2603a3, 2);
        C2581c c2581c = C2581c.f491a;
        C2582a m652u = m661l.m652u(1, c2581c);
        C2597p c2597p2 = new C2597p();
        c2597p2.m657p();
        c2597p2.m672a(m652u);
        c2597p2.m665h();
        c2597p2.m652u(1, c2581c);
        C2597p c2597p3 = new C2597p();
        c2597p3.m657p();
        c2597p3.m672a(m652u);
        c2597p3.m658o();
        c2597p3.m665h();
        c2597p3.m652u(1, c2581c);
        C2597p c2597p4 = new C2597p();
        EnumC2603a enumC2603a4 = EnumC2603a.HOUR_OF_DAY;
        c2597p4.m662k(enumC2603a4, 2);
        c2597p4.m668e(':');
        EnumC2603a enumC2603a5 = EnumC2603a.MINUTE_OF_HOUR;
        c2597p4.m662k(enumC2603a5, 2);
        c2597p4.m658o();
        c2597p4.m668e(':');
        EnumC2603a enumC2603a6 = EnumC2603a.SECOND_OF_MINUTE;
        c2597p4.m662k(enumC2603a6, 2);
        c2597p4.m658o();
        c2597p4.m671b(EnumC2603a.NANO_OF_SECOND, 0, 9, true);
        C2582a m652u2 = c2597p4.m652u(1, null);
        C2597p c2597p5 = new C2597p();
        c2597p5.m657p();
        c2597p5.m672a(m652u2);
        c2597p5.m665h();
        c2597p5.m652u(1, null);
        C2597p c2597p6 = new C2597p();
        c2597p6.m657p();
        c2597p6.m672a(m652u2);
        c2597p6.m658o();
        c2597p6.m665h();
        c2597p6.m652u(1, null);
        C2597p c2597p7 = new C2597p();
        c2597p7.m657p();
        c2597p7.m672a(m652u);
        c2597p7.m668e('T');
        c2597p7.m672a(m652u2);
        C2582a m652u3 = c2597p7.m652u(1, c2581c);
        C2597p c2597p8 = new C2597p();
        c2597p8.m657p();
        c2597p8.m672a(m652u3);
        c2597p8.m665h();
        C2582a m652u4 = c2597p8.m652u(1, c2581c);
        C2597p c2597p9 = new C2597p();
        c2597p9.m672a(m652u4);
        c2597p9.m658o();
        c2597p9.m668e('[');
        c2597p9.m656q();
        c2597p9.m660m();
        c2597p9.m668e(']');
        c2597p9.m652u(1, c2581c);
        C2597p c2597p10 = new C2597p();
        c2597p10.m672a(m652u3);
        c2597p10.m658o();
        c2597p10.m665h();
        c2597p10.m658o();
        c2597p10.m668e('[');
        c2597p10.m656q();
        c2597p10.m660m();
        c2597p10.m668e(']');
        c2597p10.m652u(1, c2581c);
        C2597p c2597p11 = new C2597p();
        c2597p11.m657p();
        C2597p m661l2 = c2597p11.m661l(enumC2603a, 4, 10, enumC2601t);
        m661l2.m668e('-');
        m661l2.m662k(EnumC2603a.DAY_OF_YEAR, 3);
        m661l2.m658o();
        m661l2.m665h();
        m661l2.m652u(1, c2581c);
        C2597p c2597p12 = new C2597p();
        c2597p12.m657p();
        C2597p m661l3 = c2597p12.m661l(AbstractC2611i.f535c, 4, 10, enumC2601t);
        m661l3.m667f("-W");
        m661l3.m662k(AbstractC2611i.f534b, 2);
        m661l3.m668e('-');
        EnumC2603a enumC2603a7 = EnumC2603a.DAY_OF_WEEK;
        m661l3.m662k(enumC2603a7, 1);
        m661l3.m658o();
        m661l3.m665h();
        m661l3.m652u(1, c2581c);
        C2597p c2597p13 = new C2597p();
        c2597p13.m657p();
        c2597p13.m670c();
        c2597p13.m652u(1, null);
        C2597p c2597p14 = new C2597p();
        c2597p14.m657p();
        c2597p14.m662k(enumC2603a, 4);
        c2597p14.m662k(enumC2603a2, 2);
        c2597p14.m662k(enumC2603a3, 2);
        c2597p14.m658o();
        c2597p14.m666g("+HHMMss", "Z");
        c2597p14.m652u(1, c2581c);
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
        C2597p c2597p15 = new C2597p();
        c2597p15.m657p();
        c2597p15.m655r();
        c2597p15.m658o();
        c2597p15.m664i(enumC2603a7, hashMap);
        c2597p15.m667f(", ");
        c2597p15.m659n();
        C2597p m661l4 = c2597p15.m661l(enumC2603a3, 1, 2, EnumC2601t.NOT_NEGATIVE);
        m661l4.m668e(' ');
        m661l4.m664i(enumC2603a2, hashMap2);
        m661l4.m668e(' ');
        m661l4.m662k(enumC2603a, 4);
        m661l4.m668e(' ');
        m661l4.m662k(enumC2603a4, 2);
        m661l4.m668e(':');
        m661l4.m662k(enumC2603a5, 2);
        m661l4.m658o();
        m661l4.m668e(':');
        m661l4.m662k(enumC2603a6, 2);
        m661l4.m659n();
        m661l4.m668e(' ');
        m661l4.m666g("+HHMM", "GMT");
        m661l4.m652u(2, c2581c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2582a(C2587f c2587f, Locale locale, C2599r c2599r, int i, Set set, InterfaceC2580b interfaceC2580b) {
        Objects.requireNonNull(c2587f, "printerParser");
        this.f492a = c2587f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2599r, "decimalStyle");
        AbstractC2600s.m651a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2587f m678a(boolean z) {
        return this.f492a.m676a(z);
    }

    public String toString() {
        String c2587f = this.f492a.toString();
        return c2587f.startsWith("[") ? c2587f : c2587f.substring(1, c2587f.length() - 1);
    }
}
