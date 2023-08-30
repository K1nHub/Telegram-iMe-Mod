package p033j$.time.format;

import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.chrono.C2872c;
import p033j$.time.chrono.InterfaceC2871b;
import p033j$.time.temporal.AbstractC2902i;
import p033j$.time.temporal.EnumC2894a;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2873a {

    /* renamed from: a */
    private final C2878f f585a;

    static {
        C2888p c2888p = new C2888p();
        EnumC2894a enumC2894a = EnumC2894a.YEAR;
        EnumC2892t enumC2892t = EnumC2892t.EXCEEDS_PAD;
        C2888p m670l = c2888p.m670l(enumC2894a, 4, 10, enumC2892t);
        m670l.m677e('-');
        EnumC2894a enumC2894a2 = EnumC2894a.MONTH_OF_YEAR;
        m670l.m671k(enumC2894a2, 2);
        m670l.m677e('-');
        EnumC2894a enumC2894a3 = EnumC2894a.DAY_OF_MONTH;
        m670l.m671k(enumC2894a3, 2);
        C2872c c2872c = C2872c.f584a;
        C2873a m661u = m670l.m661u(1, c2872c);
        C2888p c2888p2 = new C2888p();
        c2888p2.m666p();
        c2888p2.m681a(m661u);
        c2888p2.m674h();
        c2888p2.m661u(1, c2872c);
        C2888p c2888p3 = new C2888p();
        c2888p3.m666p();
        c2888p3.m681a(m661u);
        c2888p3.m667o();
        c2888p3.m674h();
        c2888p3.m661u(1, c2872c);
        C2888p c2888p4 = new C2888p();
        EnumC2894a enumC2894a4 = EnumC2894a.HOUR_OF_DAY;
        c2888p4.m671k(enumC2894a4, 2);
        c2888p4.m677e(':');
        EnumC2894a enumC2894a5 = EnumC2894a.MINUTE_OF_HOUR;
        c2888p4.m671k(enumC2894a5, 2);
        c2888p4.m667o();
        c2888p4.m677e(':');
        EnumC2894a enumC2894a6 = EnumC2894a.SECOND_OF_MINUTE;
        c2888p4.m671k(enumC2894a6, 2);
        c2888p4.m667o();
        c2888p4.m680b(EnumC2894a.NANO_OF_SECOND, 0, 9, true);
        C2873a m661u2 = c2888p4.m661u(1, null);
        C2888p c2888p5 = new C2888p();
        c2888p5.m666p();
        c2888p5.m681a(m661u2);
        c2888p5.m674h();
        c2888p5.m661u(1, null);
        C2888p c2888p6 = new C2888p();
        c2888p6.m666p();
        c2888p6.m681a(m661u2);
        c2888p6.m667o();
        c2888p6.m674h();
        c2888p6.m661u(1, null);
        C2888p c2888p7 = new C2888p();
        c2888p7.m666p();
        c2888p7.m681a(m661u);
        c2888p7.m677e('T');
        c2888p7.m681a(m661u2);
        C2873a m661u3 = c2888p7.m661u(1, c2872c);
        C2888p c2888p8 = new C2888p();
        c2888p8.m666p();
        c2888p8.m681a(m661u3);
        c2888p8.m674h();
        C2873a m661u4 = c2888p8.m661u(1, c2872c);
        C2888p c2888p9 = new C2888p();
        c2888p9.m681a(m661u4);
        c2888p9.m667o();
        c2888p9.m677e('[');
        c2888p9.m665q();
        c2888p9.m669m();
        c2888p9.m677e(']');
        c2888p9.m661u(1, c2872c);
        C2888p c2888p10 = new C2888p();
        c2888p10.m681a(m661u3);
        c2888p10.m667o();
        c2888p10.m674h();
        c2888p10.m667o();
        c2888p10.m677e('[');
        c2888p10.m665q();
        c2888p10.m669m();
        c2888p10.m677e(']');
        c2888p10.m661u(1, c2872c);
        C2888p c2888p11 = new C2888p();
        c2888p11.m666p();
        C2888p m670l2 = c2888p11.m670l(enumC2894a, 4, 10, enumC2892t);
        m670l2.m677e('-');
        m670l2.m671k(EnumC2894a.DAY_OF_YEAR, 3);
        m670l2.m667o();
        m670l2.m674h();
        m670l2.m661u(1, c2872c);
        C2888p c2888p12 = new C2888p();
        c2888p12.m666p();
        C2888p m670l3 = c2888p12.m670l(AbstractC2902i.f628c, 4, 10, enumC2892t);
        m670l3.m676f("-W");
        m670l3.m671k(AbstractC2902i.f627b, 2);
        m670l3.m677e('-');
        EnumC2894a enumC2894a7 = EnumC2894a.DAY_OF_WEEK;
        m670l3.m671k(enumC2894a7, 1);
        m670l3.m667o();
        m670l3.m674h();
        m670l3.m661u(1, c2872c);
        C2888p c2888p13 = new C2888p();
        c2888p13.m666p();
        c2888p13.m679c();
        c2888p13.m661u(1, null);
        C2888p c2888p14 = new C2888p();
        c2888p14.m666p();
        c2888p14.m671k(enumC2894a, 4);
        c2888p14.m671k(enumC2894a2, 2);
        c2888p14.m671k(enumC2894a3, 2);
        c2888p14.m667o();
        c2888p14.m675g("+HHMMss", "Z");
        c2888p14.m661u(1, c2872c);
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
        C2888p c2888p15 = new C2888p();
        c2888p15.m666p();
        c2888p15.m664r();
        c2888p15.m667o();
        c2888p15.m673i(enumC2894a7, hashMap);
        c2888p15.m676f(", ");
        c2888p15.m668n();
        C2888p m670l4 = c2888p15.m670l(enumC2894a3, 1, 2, EnumC2892t.NOT_NEGATIVE);
        m670l4.m677e(' ');
        m670l4.m673i(enumC2894a2, hashMap2);
        m670l4.m677e(' ');
        m670l4.m671k(enumC2894a, 4);
        m670l4.m677e(' ');
        m670l4.m671k(enumC2894a4, 2);
        m670l4.m677e(':');
        m670l4.m671k(enumC2894a5, 2);
        m670l4.m667o();
        m670l4.m677e(':');
        m670l4.m671k(enumC2894a6, 2);
        m670l4.m668n();
        m670l4.m677e(' ');
        m670l4.m675g("+HHMM", "GMT");
        m670l4.m661u(2, c2872c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2873a(C2878f c2878f, Locale locale, C2890r c2890r, int i, Set set, InterfaceC2871b interfaceC2871b) {
        Objects.requireNonNull(c2878f, "printerParser");
        this.f585a = c2878f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2890r, "decimalStyle");
        AbstractC2891s.m660a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2878f m687a(boolean z) {
        return this.f585a.m685a(z);
    }

    public String toString() {
        String c2878f = this.f585a.toString();
        return c2878f.startsWith("[") ? c2878f : c2878f.substring(1, c2878f.length() - 1);
    }
}
