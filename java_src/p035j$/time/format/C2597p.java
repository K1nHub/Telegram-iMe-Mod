package p035j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p035j$.time.chrono.InterfaceC2580b;
import p035j$.time.temporal.AbstractC2611i;
import p035j$.time.temporal.EnumC2603a;
import p035j$.time.temporal.InterfaceC2612j;
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2597p {

    /* renamed from: a */
    private C2597p f516a;

    /* renamed from: b */
    private final C2597p f517b;

    /* renamed from: c */
    private final List f518c;

    /* renamed from: d */
    private final boolean f519d;

    /* renamed from: e */
    private int f520e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2603a.ERA);
        hashMap.put('y', EnumC2603a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2603a.YEAR);
        InterfaceC2612j interfaceC2612j = AbstractC2611i.f533a;
        hashMap.put('Q', interfaceC2612j);
        hashMap.put('q', interfaceC2612j);
        EnumC2603a enumC2603a = EnumC2603a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2603a);
        hashMap.put('L', enumC2603a);
        hashMap.put('D', EnumC2603a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2603a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2603a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2603a enumC2603a2 = EnumC2603a.DAY_OF_WEEK;
        hashMap.put('E', enumC2603a2);
        hashMap.put('c', enumC2603a2);
        hashMap.put('e', enumC2603a2);
        hashMap.put('a', EnumC2603a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2603a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2603a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2603a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2603a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2603a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2603a.SECOND_OF_MINUTE);
        EnumC2603a enumC2603a3 = EnumC2603a.NANO_OF_SECOND;
        hashMap.put('S', enumC2603a3);
        hashMap.put('A', EnumC2603a.MILLI_OF_DAY);
        hashMap.put('n', enumC2603a3);
        hashMap.put('N', EnumC2603a.NANO_OF_DAY);
    }

    public C2597p() {
        this.f516a = this;
        this.f518c = new ArrayList();
        this.f520e = -1;
        this.f517b = null;
        this.f519d = false;
    }

    private C2597p(C2597p c2597p, boolean z) {
        this.f516a = this;
        this.f518c = new ArrayList();
        this.f520e = -1;
        this.f517b = c2597p;
        this.f519d = z;
    }

    /* renamed from: d */
    private int m669d(InterfaceC2588g interfaceC2588g) {
        Objects.requireNonNull(interfaceC2588g, "pp");
        C2597p c2597p = this.f516a;
        Objects.requireNonNull(c2597p);
        c2597p.f518c.add(interfaceC2588g);
        C2597p c2597p2 = this.f516a;
        c2597p2.f520e = -1;
        return c2597p2.f518c.size() - 1;
    }

    /* renamed from: j */
    private C2597p m663j(C2591j c2591j) {
        C2591j m674b;
        EnumC2601t enumC2601t;
        C2597p c2597p = this.f516a;
        int i = c2597p.f520e;
        if (i >= 0) {
            C2591j c2591j2 = (C2591j) c2597p.f518c.get(i);
            if (c2591j.f504b == c2591j.f505c) {
                enumC2601t = c2591j.f506d;
                if (enumC2601t == EnumC2601t.NOT_NEGATIVE) {
                    m674b = c2591j2.m673c(c2591j.f505c);
                    m669d(c2591j.m674b());
                    this.f516a.f520e = i;
                    this.f516a.f518c.set(i, m674b);
                }
            }
            m674b = c2591j2.m674b();
            this.f516a.f520e = m669d(c2591j);
            this.f516a.f518c.set(i, m674b);
        } else {
            c2597p.f520e = m669d(c2591j);
        }
        return this;
    }

    /* renamed from: t */
    private C2582a m653t(Locale locale, int i, InterfaceC2580b interfaceC2580b) {
        Objects.requireNonNull(locale, "locale");
        while (this.f516a.f517b != null) {
            m659n();
        }
        return new C2582a(new C2587f(this.f518c, false), locale, C2599r.f521a, i, null, interfaceC2580b);
    }

    /* renamed from: a */
    public C2597p m672a(C2582a c2582a) {
        Objects.requireNonNull(c2582a, "formatter");
        m669d(c2582a.m678a(false));
        return this;
    }

    /* renamed from: b */
    public C2597p m671b(InterfaceC2612j interfaceC2612j, int i, int i2, boolean z) {
        m669d(new C2589h(interfaceC2612j, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2597p m670c() {
        m669d(new C2590i(-2));
        return this;
    }

    /* renamed from: e */
    public C2597p m668e(char c) {
        m669d(new C2586e(c));
        return this;
    }

    /* renamed from: f */
    public C2597p m667f(String str) {
        if (str.length() > 0) {
            m669d(str.length() == 1 ? new C2586e(str.charAt(0)) : new C2594m(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2597p m666g(String str, String str2) {
        m669d(new C2592k(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2597p m665h() {
        m669d(C2592k.f509d);
        return this;
    }

    /* renamed from: i */
    public C2597p m664i(InterfaceC2612j interfaceC2612j, Map map) {
        Objects.requireNonNull(interfaceC2612j, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2602u enumC2602u = EnumC2602u.FULL;
        m669d(new C2595n(interfaceC2612j, enumC2602u, new C2584c(this, new C2598q(Collections.singletonMap(enumC2602u, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2597p m662k(InterfaceC2612j interfaceC2612j, int i) {
        Objects.requireNonNull(interfaceC2612j, "field");
        if (i >= 1 && i <= 19) {
            m663j(new C2591j(interfaceC2612j, i, i, EnumC2601t.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2597p m661l(InterfaceC2612j interfaceC2612j, int i, int i2, EnumC2601t enumC2601t) {
        if (i == i2 && enumC2601t == EnumC2601t.NOT_NEGATIVE) {
            m662k(interfaceC2612j, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2612j, "field");
        Objects.requireNonNull(enumC2601t, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m663j(new C2591j(interfaceC2612j, i, i2, enumC2601t));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2597p m660m() {
        m669d(new C2596o(C2583b.f493a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2597p m659n() {
        C2597p c2597p = this.f516a;
        if (c2597p.f517b != null) {
            if (c2597p.f518c.size() > 0) {
                C2597p c2597p2 = this.f516a;
                C2587f c2587f = new C2587f(c2597p2.f518c, c2597p2.f519d);
                this.f516a = this.f516a.f517b;
                m669d(c2587f);
            } else {
                this.f516a = this.f516a.f517b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2597p m658o() {
        C2597p c2597p = this.f516a;
        c2597p.f520e = -1;
        this.f516a = new C2597p(c2597p, true);
        return this;
    }

    /* renamed from: p */
    public C2597p m657p() {
        m669d(EnumC2593l.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2597p m656q() {
        m669d(EnumC2593l.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2597p m655r() {
        m669d(EnumC2593l.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2582a m654s() {
        return m653t(Locale.getDefault(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public C2582a m652u(int i, InterfaceC2580b interfaceC2580b) {
        return m653t(Locale.getDefault(), i, interfaceC2580b);
    }
}
