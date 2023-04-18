package p034j$.time.format;

import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p034j$.time.chrono.C2568c;
import p034j$.time.chrono.InterfaceC2567b;
import p034j$.time.temporal.AbstractC2598i;
import p034j$.time.temporal.EnumC2590a;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2569a {

    /* renamed from: a */
    private final C2574f f487a;

    static {
        C2584p c2584p = new C2584p();
        EnumC2590a enumC2590a = EnumC2590a.YEAR;
        EnumC2588t enumC2588t = EnumC2588t.EXCEEDS_PAD;
        C2584p m647l = c2584p.m647l(enumC2590a, 4, 10, enumC2588t);
        m647l.m654e('-');
        EnumC2590a enumC2590a2 = EnumC2590a.MONTH_OF_YEAR;
        m647l.m648k(enumC2590a2, 2);
        m647l.m654e('-');
        EnumC2590a enumC2590a3 = EnumC2590a.DAY_OF_MONTH;
        m647l.m648k(enumC2590a3, 2);
        C2568c c2568c = C2568c.f486a;
        C2569a m638u = m647l.m638u(1, c2568c);
        C2584p c2584p2 = new C2584p();
        c2584p2.m643p();
        c2584p2.m658a(m638u);
        c2584p2.m651h();
        c2584p2.m638u(1, c2568c);
        C2584p c2584p3 = new C2584p();
        c2584p3.m643p();
        c2584p3.m658a(m638u);
        c2584p3.m644o();
        c2584p3.m651h();
        c2584p3.m638u(1, c2568c);
        C2584p c2584p4 = new C2584p();
        EnumC2590a enumC2590a4 = EnumC2590a.HOUR_OF_DAY;
        c2584p4.m648k(enumC2590a4, 2);
        c2584p4.m654e(':');
        EnumC2590a enumC2590a5 = EnumC2590a.MINUTE_OF_HOUR;
        c2584p4.m648k(enumC2590a5, 2);
        c2584p4.m644o();
        c2584p4.m654e(':');
        EnumC2590a enumC2590a6 = EnumC2590a.SECOND_OF_MINUTE;
        c2584p4.m648k(enumC2590a6, 2);
        c2584p4.m644o();
        c2584p4.m657b(EnumC2590a.NANO_OF_SECOND, 0, 9, true);
        C2569a m638u2 = c2584p4.m638u(1, null);
        C2584p c2584p5 = new C2584p();
        c2584p5.m643p();
        c2584p5.m658a(m638u2);
        c2584p5.m651h();
        c2584p5.m638u(1, null);
        C2584p c2584p6 = new C2584p();
        c2584p6.m643p();
        c2584p6.m658a(m638u2);
        c2584p6.m644o();
        c2584p6.m651h();
        c2584p6.m638u(1, null);
        C2584p c2584p7 = new C2584p();
        c2584p7.m643p();
        c2584p7.m658a(m638u);
        c2584p7.m654e('T');
        c2584p7.m658a(m638u2);
        C2569a m638u3 = c2584p7.m638u(1, c2568c);
        C2584p c2584p8 = new C2584p();
        c2584p8.m643p();
        c2584p8.m658a(m638u3);
        c2584p8.m651h();
        C2569a m638u4 = c2584p8.m638u(1, c2568c);
        C2584p c2584p9 = new C2584p();
        c2584p9.m658a(m638u4);
        c2584p9.m644o();
        c2584p9.m654e('[');
        c2584p9.m642q();
        c2584p9.m646m();
        c2584p9.m654e(']');
        c2584p9.m638u(1, c2568c);
        C2584p c2584p10 = new C2584p();
        c2584p10.m658a(m638u3);
        c2584p10.m644o();
        c2584p10.m651h();
        c2584p10.m644o();
        c2584p10.m654e('[');
        c2584p10.m642q();
        c2584p10.m646m();
        c2584p10.m654e(']');
        c2584p10.m638u(1, c2568c);
        C2584p c2584p11 = new C2584p();
        c2584p11.m643p();
        C2584p m647l2 = c2584p11.m647l(enumC2590a, 4, 10, enumC2588t);
        m647l2.m654e('-');
        m647l2.m648k(EnumC2590a.DAY_OF_YEAR, 3);
        m647l2.m644o();
        m647l2.m651h();
        m647l2.m638u(1, c2568c);
        C2584p c2584p12 = new C2584p();
        c2584p12.m643p();
        C2584p m647l3 = c2584p12.m647l(AbstractC2598i.f530c, 4, 10, enumC2588t);
        m647l3.m653f("-W");
        m647l3.m648k(AbstractC2598i.f529b, 2);
        m647l3.m654e('-');
        EnumC2590a enumC2590a7 = EnumC2590a.DAY_OF_WEEK;
        m647l3.m648k(enumC2590a7, 1);
        m647l3.m644o();
        m647l3.m651h();
        m647l3.m638u(1, c2568c);
        C2584p c2584p13 = new C2584p();
        c2584p13.m643p();
        c2584p13.m656c();
        c2584p13.m638u(1, null);
        C2584p c2584p14 = new C2584p();
        c2584p14.m643p();
        c2584p14.m648k(enumC2590a, 4);
        c2584p14.m648k(enumC2590a2, 2);
        c2584p14.m648k(enumC2590a3, 2);
        c2584p14.m644o();
        c2584p14.m652g("+HHMMss", "Z");
        c2584p14.m638u(1, c2568c);
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
        C2584p c2584p15 = new C2584p();
        c2584p15.m643p();
        c2584p15.m641r();
        c2584p15.m644o();
        c2584p15.m650i(enumC2590a7, hashMap);
        c2584p15.m653f(", ");
        c2584p15.m645n();
        C2584p m647l4 = c2584p15.m647l(enumC2590a3, 1, 2, EnumC2588t.NOT_NEGATIVE);
        m647l4.m654e(' ');
        m647l4.m650i(enumC2590a2, hashMap2);
        m647l4.m654e(' ');
        m647l4.m648k(enumC2590a, 4);
        m647l4.m654e(' ');
        m647l4.m648k(enumC2590a4, 2);
        m647l4.m654e(':');
        m647l4.m648k(enumC2590a5, 2);
        m647l4.m644o();
        m647l4.m654e(':');
        m647l4.m648k(enumC2590a6, 2);
        m647l4.m645n();
        m647l4.m654e(' ');
        m647l4.m652g("+HHMM", "GMT");
        m647l4.m638u(2, c2568c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2569a(C2574f c2574f, Locale locale, C2586r c2586r, int i, Set set, InterfaceC2567b interfaceC2567b) {
        Objects.requireNonNull(c2574f, "printerParser");
        this.f487a = c2574f;
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(c2586r, "decimalStyle");
        AbstractC2587s.m637a(i, "resolverStyle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C2574f m664a(boolean z) {
        return this.f487a.m662a(z);
    }

    public String toString() {
        String c2574f = this.f487a.toString();
        return c2574f.startsWith("[") ? c2574f : c2574f.substring(1, c2574f.length() - 1);
    }
}
