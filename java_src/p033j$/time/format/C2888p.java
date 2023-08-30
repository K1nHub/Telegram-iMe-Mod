package p033j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.time.chrono.InterfaceC2871b;
import p033j$.time.temporal.AbstractC2902i;
import p033j$.time.temporal.EnumC2894a;
import p033j$.time.temporal.InterfaceC2903j;
import p033j$.time.temporal.InterfaceC2904k;
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2888p {

    /* renamed from: a */
    private C2888p f609a;

    /* renamed from: b */
    private final C2888p f610b;

    /* renamed from: c */
    private final List f611c;

    /* renamed from: d */
    private final boolean f612d;

    /* renamed from: e */
    private int f613e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2894a.ERA);
        hashMap.put('y', EnumC2894a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2894a.YEAR);
        InterfaceC2903j interfaceC2903j = AbstractC2902i.f626a;
        hashMap.put('Q', interfaceC2903j);
        hashMap.put('q', interfaceC2903j);
        EnumC2894a enumC2894a = EnumC2894a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2894a);
        hashMap.put('L', enumC2894a);
        hashMap.put('D', EnumC2894a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2894a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2894a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2894a enumC2894a2 = EnumC2894a.DAY_OF_WEEK;
        hashMap.put('E', enumC2894a2);
        hashMap.put('c', enumC2894a2);
        hashMap.put('e', enumC2894a2);
        hashMap.put('a', EnumC2894a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2894a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2894a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2894a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2894a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2894a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2894a.SECOND_OF_MINUTE);
        EnumC2894a enumC2894a3 = EnumC2894a.NANO_OF_SECOND;
        hashMap.put('S', enumC2894a3);
        hashMap.put('A', EnumC2894a.MILLI_OF_DAY);
        hashMap.put('n', enumC2894a3);
        hashMap.put('N', EnumC2894a.NANO_OF_DAY);
    }

    public C2888p() {
        this.f609a = this;
        this.f611c = new ArrayList();
        this.f613e = -1;
        this.f610b = null;
        this.f612d = false;
    }

    private C2888p(C2888p c2888p, boolean z) {
        this.f609a = this;
        this.f611c = new ArrayList();
        this.f613e = -1;
        this.f610b = c2888p;
        this.f612d = z;
    }

    /* renamed from: d */
    private int m678d(InterfaceC2879g interfaceC2879g) {
        Objects.requireNonNull(interfaceC2879g, "pp");
        C2888p c2888p = this.f609a;
        Objects.requireNonNull(c2888p);
        c2888p.f611c.add(interfaceC2879g);
        C2888p c2888p2 = this.f609a;
        c2888p2.f613e = -1;
        return c2888p2.f611c.size() - 1;
    }

    /* renamed from: j */
    private C2888p m672j(C2882j c2882j) {
        C2882j m683b;
        EnumC2892t enumC2892t;
        C2888p c2888p = this.f609a;
        int i = c2888p.f613e;
        if (i >= 0) {
            C2882j c2882j2 = (C2882j) c2888p.f611c.get(i);
            if (c2882j.f597b == c2882j.f598c) {
                enumC2892t = c2882j.f599d;
                if (enumC2892t == EnumC2892t.NOT_NEGATIVE) {
                    m683b = c2882j2.m682c(c2882j.f598c);
                    m678d(c2882j.m683b());
                    this.f609a.f613e = i;
                    this.f609a.f611c.set(i, m683b);
                }
            }
            m683b = c2882j2.m683b();
            this.f609a.f613e = m678d(c2882j);
            this.f609a.f611c.set(i, m683b);
        } else {
            c2888p.f613e = m678d(c2882j);
        }
        return this;
    }

    /* renamed from: t */
    private C2873a m662t(Locale locale, int i, InterfaceC2871b interfaceC2871b) {
        Objects.requireNonNull(locale, "locale");
        while (this.f609a.f610b != null) {
            m668n();
        }
        return new C2873a(new C2878f(this.f611c, false), locale, C2890r.f614a, i, null, interfaceC2871b);
    }

    /* renamed from: a */
    public C2888p m681a(C2873a c2873a) {
        Objects.requireNonNull(c2873a, "formatter");
        m678d(c2873a.m687a(false));
        return this;
    }

    /* renamed from: b */
    public C2888p m680b(InterfaceC2903j interfaceC2903j, int i, int i2, boolean z) {
        m678d(new C2880h(interfaceC2903j, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2888p m679c() {
        m678d(new C2881i(-2));
        return this;
    }

    /* renamed from: e */
    public C2888p m677e(char c) {
        m678d(new C2877e(c));
        return this;
    }

    /* renamed from: f */
    public C2888p m676f(String str) {
        if (str.length() > 0) {
            m678d(str.length() == 1 ? new C2877e(str.charAt(0)) : new C2885m(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2888p m675g(String str, String str2) {
        m678d(new C2883k(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2888p m674h() {
        m678d(C2883k.f602d);
        return this;
    }

    /* renamed from: i */
    public C2888p m673i(InterfaceC2903j interfaceC2903j, Map map) {
        Objects.requireNonNull(interfaceC2903j, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2893u enumC2893u = EnumC2893u.FULL;
        m678d(new C2886n(interfaceC2903j, enumC2893u, new C2875c(this, new C2889q(Collections.singletonMap(enumC2893u, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2888p m671k(InterfaceC2903j interfaceC2903j, int i) {
        Objects.requireNonNull(interfaceC2903j, "field");
        if (i >= 1 && i <= 19) {
            m672j(new C2882j(interfaceC2903j, i, i, EnumC2892t.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2888p m670l(InterfaceC2903j interfaceC2903j, int i, int i2, EnumC2892t enumC2892t) {
        if (i == i2 && enumC2892t == EnumC2892t.NOT_NEGATIVE) {
            m671k(interfaceC2903j, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2903j, "field");
        Objects.requireNonNull(enumC2892t, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m672j(new C2882j(interfaceC2903j, i, i2, enumC2892t));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2888p m669m() {
        m678d(new C2887o(new InterfaceC2904k() { // from class: j$.time.format.b
        }, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2888p m668n() {
        C2888p c2888p = this.f609a;
        if (c2888p.f610b != null) {
            if (c2888p.f611c.size() > 0) {
                C2888p c2888p2 = this.f609a;
                C2878f c2878f = new C2878f(c2888p2.f611c, c2888p2.f612d);
                this.f609a = this.f609a.f610b;
                m678d(c2878f);
            } else {
                this.f609a = this.f609a.f610b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2888p m667o() {
        C2888p c2888p = this.f609a;
        c2888p.f613e = -1;
        this.f609a = new C2888p(c2888p, true);
        return this;
    }

    /* renamed from: p */
    public C2888p m666p() {
        m678d(EnumC2884l.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2888p m665q() {
        m678d(EnumC2884l.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2888p m664r() {
        m678d(EnumC2884l.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2873a m663s() {
        return m662t(Locale.getDefault(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public C2873a m661u(int i, InterfaceC2871b interfaceC2871b) {
        return m662t(Locale.getDefault(), i, interfaceC2871b);
    }
}
