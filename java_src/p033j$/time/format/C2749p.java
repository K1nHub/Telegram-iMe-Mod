package p033j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.time.chrono.InterfaceC2732b;
import p033j$.time.temporal.AbstractC2763i;
import p033j$.time.temporal.EnumC2755a;
import p033j$.time.temporal.InterfaceC2764j;
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2749p {

    /* renamed from: a */
    private C2749p f596a;

    /* renamed from: b */
    private final C2749p f597b;

    /* renamed from: c */
    private final List f598c;

    /* renamed from: d */
    private final boolean f599d;

    /* renamed from: e */
    private int f600e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2755a.ERA);
        hashMap.put('y', EnumC2755a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2755a.YEAR);
        InterfaceC2764j interfaceC2764j = AbstractC2763i.f613a;
        hashMap.put('Q', interfaceC2764j);
        hashMap.put('q', interfaceC2764j);
        EnumC2755a enumC2755a = EnumC2755a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2755a);
        hashMap.put('L', enumC2755a);
        hashMap.put('D', EnumC2755a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2755a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2755a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2755a enumC2755a2 = EnumC2755a.DAY_OF_WEEK;
        hashMap.put('E', enumC2755a2);
        hashMap.put('c', enumC2755a2);
        hashMap.put('e', enumC2755a2);
        hashMap.put('a', EnumC2755a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2755a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2755a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2755a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2755a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2755a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2755a.SECOND_OF_MINUTE);
        EnumC2755a enumC2755a3 = EnumC2755a.NANO_OF_SECOND;
        hashMap.put('S', enumC2755a3);
        hashMap.put('A', EnumC2755a.MILLI_OF_DAY);
        hashMap.put('n', enumC2755a3);
        hashMap.put('N', EnumC2755a.NANO_OF_DAY);
    }

    public C2749p() {
        this.f596a = this;
        this.f598c = new ArrayList();
        this.f600e = -1;
        this.f597b = null;
        this.f599d = false;
    }

    private C2749p(C2749p c2749p, boolean z) {
        this.f596a = this;
        this.f598c = new ArrayList();
        this.f600e = -1;
        this.f597b = c2749p;
        this.f599d = z;
    }

    /* renamed from: d */
    private int m660d(InterfaceC2740g interfaceC2740g) {
        Objects.requireNonNull(interfaceC2740g, "pp");
        C2749p c2749p = this.f596a;
        Objects.requireNonNull(c2749p);
        c2749p.f598c.add(interfaceC2740g);
        C2749p c2749p2 = this.f596a;
        c2749p2.f600e = -1;
        return c2749p2.f598c.size() - 1;
    }

    /* renamed from: j */
    private C2749p m654j(C2743j c2743j) {
        C2743j m665b;
        EnumC2753t enumC2753t;
        C2749p c2749p = this.f596a;
        int i = c2749p.f600e;
        if (i >= 0) {
            C2743j c2743j2 = (C2743j) c2749p.f598c.get(i);
            if (c2743j.f584b == c2743j.f585c) {
                enumC2753t = c2743j.f586d;
                if (enumC2753t == EnumC2753t.NOT_NEGATIVE) {
                    m665b = c2743j2.m664c(c2743j.f585c);
                    m660d(c2743j.m665b());
                    this.f596a.f600e = i;
                    this.f596a.f598c.set(i, m665b);
                }
            }
            m665b = c2743j2.m665b();
            this.f596a.f600e = m660d(c2743j);
            this.f596a.f598c.set(i, m665b);
        } else {
            c2749p.f600e = m660d(c2743j);
        }
        return this;
    }

    /* renamed from: t */
    private C2734a m644t(Locale locale, int i, InterfaceC2732b interfaceC2732b) {
        Objects.requireNonNull(locale, "locale");
        while (this.f596a.f597b != null) {
            m650n();
        }
        return new C2734a(new C2739f(this.f598c, false), locale, C2751r.f601a, i, null, interfaceC2732b);
    }

    /* renamed from: a */
    public C2749p m663a(C2734a c2734a) {
        Objects.requireNonNull(c2734a, "formatter");
        m660d(c2734a.m669a(false));
        return this;
    }

    /* renamed from: b */
    public C2749p m662b(InterfaceC2764j interfaceC2764j, int i, int i2, boolean z) {
        m660d(new C2741h(interfaceC2764j, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2749p m661c() {
        m660d(new C2742i(-2));
        return this;
    }

    /* renamed from: e */
    public C2749p m659e(char c) {
        m660d(new C2738e(c));
        return this;
    }

    /* renamed from: f */
    public C2749p m658f(String str) {
        if (str.length() > 0) {
            m660d(str.length() == 1 ? new C2738e(str.charAt(0)) : new C2746m(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2749p m657g(String str, String str2) {
        m660d(new C2744k(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2749p m656h() {
        m660d(C2744k.f589d);
        return this;
    }

    /* renamed from: i */
    public C2749p m655i(InterfaceC2764j interfaceC2764j, Map map) {
        Objects.requireNonNull(interfaceC2764j, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2754u enumC2754u = EnumC2754u.FULL;
        m660d(new C2747n(interfaceC2764j, enumC2754u, new C2736c(this, new C2750q(Collections.singletonMap(enumC2754u, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2749p m653k(InterfaceC2764j interfaceC2764j, int i) {
        Objects.requireNonNull(interfaceC2764j, "field");
        if (i >= 1 && i <= 19) {
            m654j(new C2743j(interfaceC2764j, i, i, EnumC2753t.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2749p m652l(InterfaceC2764j interfaceC2764j, int i, int i2, EnumC2753t enumC2753t) {
        if (i == i2 && enumC2753t == EnumC2753t.NOT_NEGATIVE) {
            m653k(interfaceC2764j, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2764j, "field");
        Objects.requireNonNull(enumC2753t, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m654j(new C2743j(interfaceC2764j, i, i2, enumC2753t));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2749p m651m() {
        m660d(new C2748o(C2735b.f573a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2749p m650n() {
        C2749p c2749p = this.f596a;
        if (c2749p.f597b != null) {
            if (c2749p.f598c.size() > 0) {
                C2749p c2749p2 = this.f596a;
                C2739f c2739f = new C2739f(c2749p2.f598c, c2749p2.f599d);
                this.f596a = this.f596a.f597b;
                m660d(c2739f);
            } else {
                this.f596a = this.f596a.f597b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2749p m649o() {
        C2749p c2749p = this.f596a;
        c2749p.f600e = -1;
        this.f596a = new C2749p(c2749p, true);
        return this;
    }

    /* renamed from: p */
    public C2749p m648p() {
        m660d(EnumC2745l.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2749p m647q() {
        m660d(EnumC2745l.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2749p m646r() {
        m660d(EnumC2745l.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2734a m645s() {
        return m644t(Locale.getDefault(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public C2734a m643u(int i, InterfaceC2732b interfaceC2732b) {
        return m644t(Locale.getDefault(), i, interfaceC2732b);
    }
}
