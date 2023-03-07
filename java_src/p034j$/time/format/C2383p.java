package p034j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p034j$.time.chrono.InterfaceC2366b;
import p034j$.time.temporal.AbstractC2397i;
import p034j$.time.temporal.EnumC2389a;
import p034j$.time.temporal.InterfaceC2398j;
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2383p {

    /* renamed from: a */
    private C2383p f505a;

    /* renamed from: b */
    private final C2383p f506b;

    /* renamed from: c */
    private final List f507c;

    /* renamed from: d */
    private final boolean f508d;

    /* renamed from: e */
    private int f509e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2389a.ERA);
        hashMap.put('y', EnumC2389a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2389a.YEAR);
        InterfaceC2398j interfaceC2398j = AbstractC2397i.f522a;
        hashMap.put('Q', interfaceC2398j);
        hashMap.put('q', interfaceC2398j);
        EnumC2389a enumC2389a = EnumC2389a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2389a);
        hashMap.put('L', enumC2389a);
        hashMap.put('D', EnumC2389a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2389a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2389a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2389a enumC2389a2 = EnumC2389a.DAY_OF_WEEK;
        hashMap.put('E', enumC2389a2);
        hashMap.put('c', enumC2389a2);
        hashMap.put('e', enumC2389a2);
        hashMap.put('a', EnumC2389a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2389a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2389a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2389a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2389a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2389a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2389a.SECOND_OF_MINUTE);
        EnumC2389a enumC2389a3 = EnumC2389a.NANO_OF_SECOND;
        hashMap.put('S', enumC2389a3);
        hashMap.put('A', EnumC2389a.MILLI_OF_DAY);
        hashMap.put('n', enumC2389a3);
        hashMap.put('N', EnumC2389a.NANO_OF_DAY);
    }

    public C2383p() {
        this.f505a = this;
        this.f507c = new ArrayList();
        this.f509e = -1;
        this.f506b = null;
        this.f508d = false;
    }

    private C2383p(C2383p c2383p, boolean z) {
        this.f505a = this;
        this.f507c = new ArrayList();
        this.f509e = -1;
        this.f506b = c2383p;
        this.f508d = z;
    }

    /* renamed from: d */
    private int m675d(InterfaceC2374g interfaceC2374g) {
        Objects.requireNonNull(interfaceC2374g, "pp");
        C2383p c2383p = this.f505a;
        Objects.requireNonNull(c2383p);
        c2383p.f507c.add(interfaceC2374g);
        C2383p c2383p2 = this.f505a;
        c2383p2.f509e = -1;
        return c2383p2.f507c.size() - 1;
    }

    /* renamed from: j */
    private C2383p m669j(C2377j c2377j) {
        C2377j m680b;
        EnumC2387t enumC2387t;
        C2383p c2383p = this.f505a;
        int i = c2383p.f509e;
        if (i >= 0) {
            C2377j c2377j2 = (C2377j) c2383p.f507c.get(i);
            if (c2377j.f493b == c2377j.f494c) {
                enumC2387t = c2377j.f495d;
                if (enumC2387t == EnumC2387t.NOT_NEGATIVE) {
                    m680b = c2377j2.m679c(c2377j.f494c);
                    m675d(c2377j.m680b());
                    this.f505a.f509e = i;
                    this.f505a.f507c.set(i, m680b);
                }
            }
            m680b = c2377j2.m680b();
            this.f505a.f509e = m675d(c2377j);
            this.f505a.f507c.set(i, m680b);
        } else {
            c2383p.f509e = m675d(c2377j);
        }
        return this;
    }

    /* renamed from: t */
    private C2368a m659t(Locale locale, int i, InterfaceC2366b interfaceC2366b) {
        Objects.requireNonNull(locale, "locale");
        while (this.f505a.f506b != null) {
            m665n();
        }
        return new C2368a(new C2373f(this.f507c, false), locale, C2385r.f510a, i, null, interfaceC2366b);
    }

    /* renamed from: a */
    public C2383p m678a(C2368a c2368a) {
        Objects.requireNonNull(c2368a, "formatter");
        m675d(c2368a.m684a(false));
        return this;
    }

    /* renamed from: b */
    public C2383p m677b(InterfaceC2398j interfaceC2398j, int i, int i2, boolean z) {
        m675d(new C2375h(interfaceC2398j, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2383p m676c() {
        m675d(new C2376i(-2));
        return this;
    }

    /* renamed from: e */
    public C2383p m674e(char c) {
        m675d(new C2372e(c));
        return this;
    }

    /* renamed from: f */
    public C2383p m673f(String str) {
        if (str.length() > 0) {
            m675d(str.length() == 1 ? new C2372e(str.charAt(0)) : new C2380m(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2383p m672g(String str, String str2) {
        m675d(new C2378k(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2383p m671h() {
        m675d(C2378k.f498d);
        return this;
    }

    /* renamed from: i */
    public C2383p m670i(InterfaceC2398j interfaceC2398j, Map map) {
        Objects.requireNonNull(interfaceC2398j, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2388u enumC2388u = EnumC2388u.FULL;
        m675d(new C2381n(interfaceC2398j, enumC2388u, new C2370c(this, new C2384q(Collections.singletonMap(enumC2388u, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2383p m668k(InterfaceC2398j interfaceC2398j, int i) {
        Objects.requireNonNull(interfaceC2398j, "field");
        if (i >= 1 && i <= 19) {
            m669j(new C2377j(interfaceC2398j, i, i, EnumC2387t.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2383p m667l(InterfaceC2398j interfaceC2398j, int i, int i2, EnumC2387t enumC2387t) {
        if (i == i2 && enumC2387t == EnumC2387t.NOT_NEGATIVE) {
            m668k(interfaceC2398j, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2398j, "field");
        Objects.requireNonNull(enumC2387t, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m669j(new C2377j(interfaceC2398j, i, i2, enumC2387t));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2383p m666m() {
        m675d(new C2382o(C2369b.f482a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2383p m665n() {
        C2383p c2383p = this.f505a;
        if (c2383p.f506b != null) {
            if (c2383p.f507c.size() > 0) {
                C2383p c2383p2 = this.f505a;
                C2373f c2373f = new C2373f(c2383p2.f507c, c2383p2.f508d);
                this.f505a = this.f505a.f506b;
                m675d(c2373f);
            } else {
                this.f505a = this.f505a.f506b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2383p m664o() {
        C2383p c2383p = this.f505a;
        c2383p.f509e = -1;
        this.f505a = new C2383p(c2383p, true);
        return this;
    }

    /* renamed from: p */
    public C2383p m663p() {
        m675d(EnumC2379l.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2383p m662q() {
        m675d(EnumC2379l.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2383p m661r() {
        m675d(EnumC2379l.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2368a m660s() {
        return m659t(Locale.getDefault(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public C2368a m658u(int i, InterfaceC2366b interfaceC2366b) {
        return m659t(Locale.getDefault(), i, interfaceC2366b);
    }
}
