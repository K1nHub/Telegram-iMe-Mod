package p033j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.time.chrono.InterfaceC2787b;
import p033j$.time.temporal.AbstractC2818i;
import p033j$.time.temporal.EnumC2810a;
import p033j$.time.temporal.InterfaceC2819j;
import p033j$.time.temporal.InterfaceC2820k;
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2804p {

    /* renamed from: a */
    private C2804p f600a;

    /* renamed from: b */
    private final C2804p f601b;

    /* renamed from: c */
    private final List f602c;

    /* renamed from: d */
    private final boolean f603d;

    /* renamed from: e */
    private int f604e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2810a.ERA);
        hashMap.put('y', EnumC2810a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2810a.YEAR);
        InterfaceC2819j interfaceC2819j = AbstractC2818i.f617a;
        hashMap.put('Q', interfaceC2819j);
        hashMap.put('q', interfaceC2819j);
        EnumC2810a enumC2810a = EnumC2810a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2810a);
        hashMap.put('L', enumC2810a);
        hashMap.put('D', EnumC2810a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2810a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2810a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2810a enumC2810a2 = EnumC2810a.DAY_OF_WEEK;
        hashMap.put('E', enumC2810a2);
        hashMap.put('c', enumC2810a2);
        hashMap.put('e', enumC2810a2);
        hashMap.put('a', EnumC2810a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2810a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2810a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2810a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2810a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2810a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2810a.SECOND_OF_MINUTE);
        EnumC2810a enumC2810a3 = EnumC2810a.NANO_OF_SECOND;
        hashMap.put('S', enumC2810a3);
        hashMap.put('A', EnumC2810a.MILLI_OF_DAY);
        hashMap.put('n', enumC2810a3);
        hashMap.put('N', EnumC2810a.NANO_OF_DAY);
    }

    public C2804p() {
        this.f600a = this;
        this.f602c = new ArrayList();
        this.f604e = -1;
        this.f601b = null;
        this.f603d = false;
    }

    private C2804p(C2804p c2804p, boolean z) {
        this.f600a = this;
        this.f602c = new ArrayList();
        this.f604e = -1;
        this.f601b = c2804p;
        this.f603d = z;
    }

    /* renamed from: d */
    private int m678d(InterfaceC2795g interfaceC2795g) {
        Objects.requireNonNull(interfaceC2795g, "pp");
        C2804p c2804p = this.f600a;
        Objects.requireNonNull(c2804p);
        c2804p.f602c.add(interfaceC2795g);
        C2804p c2804p2 = this.f600a;
        c2804p2.f604e = -1;
        return c2804p2.f602c.size() - 1;
    }

    /* renamed from: j */
    private C2804p m672j(C2798j c2798j) {
        C2798j m683b;
        EnumC2808t enumC2808t;
        C2804p c2804p = this.f600a;
        int i = c2804p.f604e;
        if (i >= 0) {
            C2798j c2798j2 = (C2798j) c2804p.f602c.get(i);
            if (c2798j.f588b == c2798j.f589c) {
                enumC2808t = c2798j.f590d;
                if (enumC2808t == EnumC2808t.NOT_NEGATIVE) {
                    m683b = c2798j2.m682c(c2798j.f589c);
                    m678d(c2798j.m683b());
                    this.f600a.f604e = i;
                    this.f600a.f602c.set(i, m683b);
                }
            }
            m683b = c2798j2.m683b();
            this.f600a.f604e = m678d(c2798j);
            this.f600a.f602c.set(i, m683b);
        } else {
            c2804p.f604e = m678d(c2798j);
        }
        return this;
    }

    /* renamed from: t */
    private C2789a m662t(Locale locale, int i, InterfaceC2787b interfaceC2787b) {
        Objects.requireNonNull(locale, "locale");
        while (this.f600a.f601b != null) {
            m668n();
        }
        return new C2789a(new C2794f(this.f602c, false), locale, C2806r.f605a, i, null, interfaceC2787b);
    }

    /* renamed from: a */
    public C2804p m681a(C2789a c2789a) {
        Objects.requireNonNull(c2789a, "formatter");
        m678d(c2789a.m687a(false));
        return this;
    }

    /* renamed from: b */
    public C2804p m680b(InterfaceC2819j interfaceC2819j, int i, int i2, boolean z) {
        m678d(new C2796h(interfaceC2819j, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2804p m679c() {
        m678d(new C2797i(-2));
        return this;
    }

    /* renamed from: e */
    public C2804p m677e(char c) {
        m678d(new C2793e(c));
        return this;
    }

    /* renamed from: f */
    public C2804p m676f(String str) {
        if (str.length() > 0) {
            m678d(str.length() == 1 ? new C2793e(str.charAt(0)) : new C2801m(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2804p m675g(String str, String str2) {
        m678d(new C2799k(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2804p m674h() {
        m678d(C2799k.f593d);
        return this;
    }

    /* renamed from: i */
    public C2804p m673i(InterfaceC2819j interfaceC2819j, Map map) {
        Objects.requireNonNull(interfaceC2819j, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2809u enumC2809u = EnumC2809u.FULL;
        m678d(new C2802n(interfaceC2819j, enumC2809u, new C2791c(this, new C2805q(Collections.singletonMap(enumC2809u, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2804p m671k(InterfaceC2819j interfaceC2819j, int i) {
        Objects.requireNonNull(interfaceC2819j, "field");
        if (i >= 1 && i <= 19) {
            m672j(new C2798j(interfaceC2819j, i, i, EnumC2808t.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2804p m670l(InterfaceC2819j interfaceC2819j, int i, int i2, EnumC2808t enumC2808t) {
        if (i == i2 && enumC2808t == EnumC2808t.NOT_NEGATIVE) {
            m671k(interfaceC2819j, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2819j, "field");
        Objects.requireNonNull(enumC2808t, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m672j(new C2798j(interfaceC2819j, i, i2, enumC2808t));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2804p m669m() {
        m678d(new C2803o(new InterfaceC2820k() { // from class: j$.time.format.b
        }, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2804p m668n() {
        C2804p c2804p = this.f600a;
        if (c2804p.f601b != null) {
            if (c2804p.f602c.size() > 0) {
                C2804p c2804p2 = this.f600a;
                C2794f c2794f = new C2794f(c2804p2.f602c, c2804p2.f603d);
                this.f600a = this.f600a.f601b;
                m678d(c2794f);
            } else {
                this.f600a = this.f600a.f601b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2804p m667o() {
        C2804p c2804p = this.f600a;
        c2804p.f604e = -1;
        this.f600a = new C2804p(c2804p, true);
        return this;
    }

    /* renamed from: p */
    public C2804p m666p() {
        m678d(EnumC2800l.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2804p m665q() {
        m678d(EnumC2800l.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2804p m664r() {
        m678d(EnumC2800l.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2789a m663s() {
        return m662t(Locale.getDefault(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public C2789a m661u(int i, InterfaceC2787b interfaceC2787b) {
        return m662t(Locale.getDefault(), i, interfaceC2787b);
    }
}
