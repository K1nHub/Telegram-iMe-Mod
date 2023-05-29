package p034j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p034j$.time.chrono.InterfaceC2611b;
import p034j$.time.temporal.AbstractC2642i;
import p034j$.time.temporal.EnumC2634a;
import p034j$.time.temporal.InterfaceC2643j;
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2628p {

    /* renamed from: a */
    private C2628p f514a;

    /* renamed from: b */
    private final C2628p f515b;

    /* renamed from: c */
    private final List f516c;

    /* renamed from: d */
    private final boolean f517d;

    /* renamed from: e */
    private int f518e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2634a.ERA);
        hashMap.put('y', EnumC2634a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2634a.YEAR);
        InterfaceC2643j interfaceC2643j = AbstractC2642i.f531a;
        hashMap.put('Q', interfaceC2643j);
        hashMap.put('q', interfaceC2643j);
        EnumC2634a enumC2634a = EnumC2634a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2634a);
        hashMap.put('L', enumC2634a);
        hashMap.put('D', EnumC2634a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2634a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2634a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2634a enumC2634a2 = EnumC2634a.DAY_OF_WEEK;
        hashMap.put('E', enumC2634a2);
        hashMap.put('c', enumC2634a2);
        hashMap.put('e', enumC2634a2);
        hashMap.put('a', EnumC2634a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2634a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2634a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2634a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2634a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2634a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2634a.SECOND_OF_MINUTE);
        EnumC2634a enumC2634a3 = EnumC2634a.NANO_OF_SECOND;
        hashMap.put('S', enumC2634a3);
        hashMap.put('A', EnumC2634a.MILLI_OF_DAY);
        hashMap.put('n', enumC2634a3);
        hashMap.put('N', EnumC2634a.NANO_OF_DAY);
    }

    public C2628p() {
        this.f514a = this;
        this.f516c = new ArrayList();
        this.f518e = -1;
        this.f515b = null;
        this.f517d = false;
    }

    private C2628p(C2628p c2628p, boolean z) {
        this.f514a = this;
        this.f516c = new ArrayList();
        this.f518e = -1;
        this.f515b = c2628p;
        this.f517d = z;
    }

    /* renamed from: d */
    private int m660d(InterfaceC2619g interfaceC2619g) {
        Objects.requireNonNull(interfaceC2619g, "pp");
        C2628p c2628p = this.f514a;
        Objects.requireNonNull(c2628p);
        c2628p.f516c.add(interfaceC2619g);
        C2628p c2628p2 = this.f514a;
        c2628p2.f518e = -1;
        return c2628p2.f516c.size() - 1;
    }

    /* renamed from: j */
    private C2628p m654j(C2622j c2622j) {
        C2622j m665b;
        EnumC2632t enumC2632t;
        C2628p c2628p = this.f514a;
        int i = c2628p.f518e;
        if (i >= 0) {
            C2622j c2622j2 = (C2622j) c2628p.f516c.get(i);
            if (c2622j.f502b == c2622j.f503c) {
                enumC2632t = c2622j.f504d;
                if (enumC2632t == EnumC2632t.NOT_NEGATIVE) {
                    m665b = c2622j2.m664c(c2622j.f503c);
                    m660d(c2622j.m665b());
                    this.f514a.f518e = i;
                    this.f514a.f516c.set(i, m665b);
                }
            }
            m665b = c2622j2.m665b();
            this.f514a.f518e = m660d(c2622j);
            this.f514a.f516c.set(i, m665b);
        } else {
            c2628p.f518e = m660d(c2622j);
        }
        return this;
    }

    /* renamed from: t */
    private C2613a m644t(Locale locale, int i, InterfaceC2611b interfaceC2611b) {
        Objects.requireNonNull(locale, "locale");
        while (this.f514a.f515b != null) {
            m650n();
        }
        return new C2613a(new C2618f(this.f516c, false), locale, C2630r.f519a, i, null, interfaceC2611b);
    }

    /* renamed from: a */
    public C2628p m663a(C2613a c2613a) {
        Objects.requireNonNull(c2613a, "formatter");
        m660d(c2613a.m669a(false));
        return this;
    }

    /* renamed from: b */
    public C2628p m662b(InterfaceC2643j interfaceC2643j, int i, int i2, boolean z) {
        m660d(new C2620h(interfaceC2643j, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2628p m661c() {
        m660d(new C2621i(-2));
        return this;
    }

    /* renamed from: e */
    public C2628p m659e(char c) {
        m660d(new C2617e(c));
        return this;
    }

    /* renamed from: f */
    public C2628p m658f(String str) {
        if (str.length() > 0) {
            m660d(str.length() == 1 ? new C2617e(str.charAt(0)) : new C2625m(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2628p m657g(String str, String str2) {
        m660d(new C2623k(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2628p m656h() {
        m660d(C2623k.f507d);
        return this;
    }

    /* renamed from: i */
    public C2628p m655i(InterfaceC2643j interfaceC2643j, Map map) {
        Objects.requireNonNull(interfaceC2643j, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2633u enumC2633u = EnumC2633u.FULL;
        m660d(new C2626n(interfaceC2643j, enumC2633u, new C2615c(this, new C2629q(Collections.singletonMap(enumC2633u, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2628p m653k(InterfaceC2643j interfaceC2643j, int i) {
        Objects.requireNonNull(interfaceC2643j, "field");
        if (i >= 1 && i <= 19) {
            m654j(new C2622j(interfaceC2643j, i, i, EnumC2632t.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2628p m652l(InterfaceC2643j interfaceC2643j, int i, int i2, EnumC2632t enumC2632t) {
        if (i == i2 && enumC2632t == EnumC2632t.NOT_NEGATIVE) {
            m653k(interfaceC2643j, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2643j, "field");
        Objects.requireNonNull(enumC2632t, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m654j(new C2622j(interfaceC2643j, i, i2, enumC2632t));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2628p m651m() {
        m660d(new C2627o(C2614b.f491a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2628p m650n() {
        C2628p c2628p = this.f514a;
        if (c2628p.f515b != null) {
            if (c2628p.f516c.size() > 0) {
                C2628p c2628p2 = this.f514a;
                C2618f c2618f = new C2618f(c2628p2.f516c, c2628p2.f517d);
                this.f514a = this.f514a.f515b;
                m660d(c2618f);
            } else {
                this.f514a = this.f514a.f515b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2628p m649o() {
        C2628p c2628p = this.f514a;
        c2628p.f518e = -1;
        this.f514a = new C2628p(c2628p, true);
        return this;
    }

    /* renamed from: p */
    public C2628p m648p() {
        m660d(EnumC2624l.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2628p m647q() {
        m660d(EnumC2624l.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2628p m646r() {
        m660d(EnumC2624l.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2613a m645s() {
        return m644t(Locale.getDefault(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public C2613a m643u(int i, InterfaceC2611b interfaceC2611b) {
        return m644t(Locale.getDefault(), i, interfaceC2611b);
    }
}
