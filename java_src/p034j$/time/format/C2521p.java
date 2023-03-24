package p034j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p034j$.time.chrono.InterfaceC2504b;
import p034j$.time.temporal.AbstractC2535i;
import p034j$.time.temporal.EnumC2527a;
import p034j$.time.temporal.InterfaceC2536j;
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2521p {

    /* renamed from: a */
    private C2521p f511a;

    /* renamed from: b */
    private final C2521p f512b;

    /* renamed from: c */
    private final List f513c;

    /* renamed from: d */
    private final boolean f514d;

    /* renamed from: e */
    private int f515e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2527a.ERA);
        hashMap.put('y', EnumC2527a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2527a.YEAR);
        InterfaceC2536j interfaceC2536j = AbstractC2535i.f528a;
        hashMap.put('Q', interfaceC2536j);
        hashMap.put('q', interfaceC2536j);
        EnumC2527a enumC2527a = EnumC2527a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2527a);
        hashMap.put('L', enumC2527a);
        hashMap.put('D', EnumC2527a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2527a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2527a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2527a enumC2527a2 = EnumC2527a.DAY_OF_WEEK;
        hashMap.put('E', enumC2527a2);
        hashMap.put('c', enumC2527a2);
        hashMap.put('e', enumC2527a2);
        hashMap.put('a', EnumC2527a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2527a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2527a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2527a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2527a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2527a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2527a.SECOND_OF_MINUTE);
        EnumC2527a enumC2527a3 = EnumC2527a.NANO_OF_SECOND;
        hashMap.put('S', enumC2527a3);
        hashMap.put('A', EnumC2527a.MILLI_OF_DAY);
        hashMap.put('n', enumC2527a3);
        hashMap.put('N', EnumC2527a.NANO_OF_DAY);
    }

    public C2521p() {
        this.f511a = this;
        this.f513c = new ArrayList();
        this.f515e = -1;
        this.f512b = null;
        this.f514d = false;
    }

    private C2521p(C2521p c2521p, boolean z) {
        this.f511a = this;
        this.f513c = new ArrayList();
        this.f515e = -1;
        this.f512b = c2521p;
        this.f514d = z;
    }

    /* renamed from: d */
    private int m674d(InterfaceC2512g interfaceC2512g) {
        Objects.requireNonNull(interfaceC2512g, "pp");
        C2521p c2521p = this.f511a;
        Objects.requireNonNull(c2521p);
        c2521p.f513c.add(interfaceC2512g);
        C2521p c2521p2 = this.f511a;
        c2521p2.f515e = -1;
        return c2521p2.f513c.size() - 1;
    }

    /* renamed from: j */
    private C2521p m668j(C2515j c2515j) {
        C2515j m679b;
        EnumC2525t enumC2525t;
        C2521p c2521p = this.f511a;
        int i = c2521p.f515e;
        if (i >= 0) {
            C2515j c2515j2 = (C2515j) c2521p.f513c.get(i);
            if (c2515j.f499b == c2515j.f500c) {
                enumC2525t = c2515j.f501d;
                if (enumC2525t == EnumC2525t.NOT_NEGATIVE) {
                    m679b = c2515j2.m678c(c2515j.f500c);
                    m674d(c2515j.m679b());
                    this.f511a.f515e = i;
                    this.f511a.f513c.set(i, m679b);
                }
            }
            m679b = c2515j2.m679b();
            this.f511a.f515e = m674d(c2515j);
            this.f511a.f513c.set(i, m679b);
        } else {
            c2521p.f515e = m674d(c2515j);
        }
        return this;
    }

    /* renamed from: t */
    private C2506a m658t(Locale locale, int i, InterfaceC2504b interfaceC2504b) {
        Objects.requireNonNull(locale, "locale");
        while (this.f511a.f512b != null) {
            m664n();
        }
        return new C2506a(new C2511f(this.f513c, false), locale, C2523r.f516a, i, null, interfaceC2504b);
    }

    /* renamed from: a */
    public C2521p m677a(C2506a c2506a) {
        Objects.requireNonNull(c2506a, "formatter");
        m674d(c2506a.m683a(false));
        return this;
    }

    /* renamed from: b */
    public C2521p m676b(InterfaceC2536j interfaceC2536j, int i, int i2, boolean z) {
        m674d(new C2513h(interfaceC2536j, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2521p m675c() {
        m674d(new C2514i(-2));
        return this;
    }

    /* renamed from: e */
    public C2521p m673e(char c) {
        m674d(new C2510e(c));
        return this;
    }

    /* renamed from: f */
    public C2521p m672f(String str) {
        if (str.length() > 0) {
            m674d(str.length() == 1 ? new C2510e(str.charAt(0)) : new C2518m(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2521p m671g(String str, String str2) {
        m674d(new C2516k(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2521p m670h() {
        m674d(C2516k.f504d);
        return this;
    }

    /* renamed from: i */
    public C2521p m669i(InterfaceC2536j interfaceC2536j, Map map) {
        Objects.requireNonNull(interfaceC2536j, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2526u enumC2526u = EnumC2526u.FULL;
        m674d(new C2519n(interfaceC2536j, enumC2526u, new C2508c(this, new C2522q(Collections.singletonMap(enumC2526u, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2521p m667k(InterfaceC2536j interfaceC2536j, int i) {
        Objects.requireNonNull(interfaceC2536j, "field");
        if (i >= 1 && i <= 19) {
            m668j(new C2515j(interfaceC2536j, i, i, EnumC2525t.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2521p m666l(InterfaceC2536j interfaceC2536j, int i, int i2, EnumC2525t enumC2525t) {
        if (i == i2 && enumC2525t == EnumC2525t.NOT_NEGATIVE) {
            m667k(interfaceC2536j, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2536j, "field");
        Objects.requireNonNull(enumC2525t, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m668j(new C2515j(interfaceC2536j, i, i2, enumC2525t));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2521p m665m() {
        m674d(new C2520o(C2507b.f488a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2521p m664n() {
        C2521p c2521p = this.f511a;
        if (c2521p.f512b != null) {
            if (c2521p.f513c.size() > 0) {
                C2521p c2521p2 = this.f511a;
                C2511f c2511f = new C2511f(c2521p2.f513c, c2521p2.f514d);
                this.f511a = this.f511a.f512b;
                m674d(c2511f);
            } else {
                this.f511a = this.f511a.f512b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2521p m663o() {
        C2521p c2521p = this.f511a;
        c2521p.f515e = -1;
        this.f511a = new C2521p(c2521p, true);
        return this;
    }

    /* renamed from: p */
    public C2521p m662p() {
        m674d(EnumC2517l.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2521p m661q() {
        m674d(EnumC2517l.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2521p m660r() {
        m674d(EnumC2517l.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2506a m659s() {
        return m658t(Locale.getDefault(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public C2506a m657u(int i, InterfaceC2504b interfaceC2504b) {
        return m658t(Locale.getDefault(), i, interfaceC2504b);
    }
}
