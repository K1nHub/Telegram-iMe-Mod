package p034j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p034j$.time.chrono.InterfaceC2567b;
import p034j$.time.temporal.AbstractC2598i;
import p034j$.time.temporal.EnumC2590a;
import p034j$.time.temporal.InterfaceC2599j;
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2584p {

    /* renamed from: a */
    private C2584p f511a;

    /* renamed from: b */
    private final C2584p f512b;

    /* renamed from: c */
    private final List f513c;

    /* renamed from: d */
    private final boolean f514d;

    /* renamed from: e */
    private int f515e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2590a.ERA);
        hashMap.put('y', EnumC2590a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2590a.YEAR);
        InterfaceC2599j interfaceC2599j = AbstractC2598i.f528a;
        hashMap.put('Q', interfaceC2599j);
        hashMap.put('q', interfaceC2599j);
        EnumC2590a enumC2590a = EnumC2590a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2590a);
        hashMap.put('L', enumC2590a);
        hashMap.put('D', EnumC2590a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2590a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2590a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2590a enumC2590a2 = EnumC2590a.DAY_OF_WEEK;
        hashMap.put('E', enumC2590a2);
        hashMap.put('c', enumC2590a2);
        hashMap.put('e', enumC2590a2);
        hashMap.put('a', EnumC2590a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2590a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2590a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2590a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2590a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2590a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2590a.SECOND_OF_MINUTE);
        EnumC2590a enumC2590a3 = EnumC2590a.NANO_OF_SECOND;
        hashMap.put('S', enumC2590a3);
        hashMap.put('A', EnumC2590a.MILLI_OF_DAY);
        hashMap.put('n', enumC2590a3);
        hashMap.put('N', EnumC2590a.NANO_OF_DAY);
    }

    public C2584p() {
        this.f511a = this;
        this.f513c = new ArrayList();
        this.f515e = -1;
        this.f512b = null;
        this.f514d = false;
    }

    private C2584p(C2584p c2584p, boolean z) {
        this.f511a = this;
        this.f513c = new ArrayList();
        this.f515e = -1;
        this.f512b = c2584p;
        this.f514d = z;
    }

    /* renamed from: d */
    private int m655d(InterfaceC2575g interfaceC2575g) {
        Objects.requireNonNull(interfaceC2575g, "pp");
        C2584p c2584p = this.f511a;
        Objects.requireNonNull(c2584p);
        c2584p.f513c.add(interfaceC2575g);
        C2584p c2584p2 = this.f511a;
        c2584p2.f515e = -1;
        return c2584p2.f513c.size() - 1;
    }

    /* renamed from: j */
    private C2584p m649j(C2578j c2578j) {
        C2578j m660b;
        EnumC2588t enumC2588t;
        C2584p c2584p = this.f511a;
        int i = c2584p.f515e;
        if (i >= 0) {
            C2578j c2578j2 = (C2578j) c2584p.f513c.get(i);
            if (c2578j.f499b == c2578j.f500c) {
                enumC2588t = c2578j.f501d;
                if (enumC2588t == EnumC2588t.NOT_NEGATIVE) {
                    m660b = c2578j2.m659c(c2578j.f500c);
                    m655d(c2578j.m660b());
                    this.f511a.f515e = i;
                    this.f511a.f513c.set(i, m660b);
                }
            }
            m660b = c2578j2.m660b();
            this.f511a.f515e = m655d(c2578j);
            this.f511a.f513c.set(i, m660b);
        } else {
            c2584p.f515e = m655d(c2578j);
        }
        return this;
    }

    /* renamed from: t */
    private C2569a m639t(Locale locale, int i, InterfaceC2567b interfaceC2567b) {
        Objects.requireNonNull(locale, "locale");
        while (this.f511a.f512b != null) {
            m645n();
        }
        return new C2569a(new C2574f(this.f513c, false), locale, C2586r.f516a, i, null, interfaceC2567b);
    }

    /* renamed from: a */
    public C2584p m658a(C2569a c2569a) {
        Objects.requireNonNull(c2569a, "formatter");
        m655d(c2569a.m664a(false));
        return this;
    }

    /* renamed from: b */
    public C2584p m657b(InterfaceC2599j interfaceC2599j, int i, int i2, boolean z) {
        m655d(new C2576h(interfaceC2599j, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2584p m656c() {
        m655d(new C2577i(-2));
        return this;
    }

    /* renamed from: e */
    public C2584p m654e(char c) {
        m655d(new C2573e(c));
        return this;
    }

    /* renamed from: f */
    public C2584p m653f(String str) {
        if (str.length() > 0) {
            m655d(str.length() == 1 ? new C2573e(str.charAt(0)) : new C2581m(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2584p m652g(String str, String str2) {
        m655d(new C2579k(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2584p m651h() {
        m655d(C2579k.f504d);
        return this;
    }

    /* renamed from: i */
    public C2584p m650i(InterfaceC2599j interfaceC2599j, Map map) {
        Objects.requireNonNull(interfaceC2599j, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2589u enumC2589u = EnumC2589u.FULL;
        m655d(new C2582n(interfaceC2599j, enumC2589u, new C2571c(this, new C2585q(Collections.singletonMap(enumC2589u, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2584p m648k(InterfaceC2599j interfaceC2599j, int i) {
        Objects.requireNonNull(interfaceC2599j, "field");
        if (i >= 1 && i <= 19) {
            m649j(new C2578j(interfaceC2599j, i, i, EnumC2588t.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2584p m647l(InterfaceC2599j interfaceC2599j, int i, int i2, EnumC2588t enumC2588t) {
        if (i == i2 && enumC2588t == EnumC2588t.NOT_NEGATIVE) {
            m648k(interfaceC2599j, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2599j, "field");
        Objects.requireNonNull(enumC2588t, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m649j(new C2578j(interfaceC2599j, i, i2, enumC2588t));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2584p m646m() {
        m655d(new C2583o(C2570b.f488a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2584p m645n() {
        C2584p c2584p = this.f511a;
        if (c2584p.f512b != null) {
            if (c2584p.f513c.size() > 0) {
                C2584p c2584p2 = this.f511a;
                C2574f c2574f = new C2574f(c2584p2.f513c, c2584p2.f514d);
                this.f511a = this.f511a.f512b;
                m655d(c2574f);
            } else {
                this.f511a = this.f511a.f512b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2584p m644o() {
        C2584p c2584p = this.f511a;
        c2584p.f515e = -1;
        this.f511a = new C2584p(c2584p, true);
        return this;
    }

    /* renamed from: p */
    public C2584p m643p() {
        m655d(EnumC2580l.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2584p m642q() {
        m655d(EnumC2580l.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2584p m641r() {
        m655d(EnumC2580l.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2569a m640s() {
        return m639t(Locale.getDefault(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public C2569a m638u(int i, InterfaceC2567b interfaceC2567b) {
        return m639t(Locale.getDefault(), i, interfaceC2567b);
    }
}
