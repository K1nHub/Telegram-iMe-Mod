package p034j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p034j$.time.chrono.InterfaceC2606b;
import p034j$.time.temporal.AbstractC2637i;
import p034j$.time.temporal.EnumC2629a;
import p034j$.time.temporal.InterfaceC2638j;
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2623p {

    /* renamed from: a */
    private C2623p f514a;

    /* renamed from: b */
    private final C2623p f515b;

    /* renamed from: c */
    private final List f516c;

    /* renamed from: d */
    private final boolean f517d;

    /* renamed from: e */
    private int f518e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2629a.ERA);
        hashMap.put('y', EnumC2629a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2629a.YEAR);
        InterfaceC2638j interfaceC2638j = AbstractC2637i.f531a;
        hashMap.put('Q', interfaceC2638j);
        hashMap.put('q', interfaceC2638j);
        EnumC2629a enumC2629a = EnumC2629a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2629a);
        hashMap.put('L', enumC2629a);
        hashMap.put('D', EnumC2629a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2629a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2629a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2629a enumC2629a2 = EnumC2629a.DAY_OF_WEEK;
        hashMap.put('E', enumC2629a2);
        hashMap.put('c', enumC2629a2);
        hashMap.put('e', enumC2629a2);
        hashMap.put('a', EnumC2629a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2629a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2629a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2629a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2629a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2629a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2629a.SECOND_OF_MINUTE);
        EnumC2629a enumC2629a3 = EnumC2629a.NANO_OF_SECOND;
        hashMap.put('S', enumC2629a3);
        hashMap.put('A', EnumC2629a.MILLI_OF_DAY);
        hashMap.put('n', enumC2629a3);
        hashMap.put('N', EnumC2629a.NANO_OF_DAY);
    }

    public C2623p() {
        this.f514a = this;
        this.f516c = new ArrayList();
        this.f518e = -1;
        this.f515b = null;
        this.f517d = false;
    }

    private C2623p(C2623p c2623p, boolean z) {
        this.f514a = this;
        this.f516c = new ArrayList();
        this.f518e = -1;
        this.f515b = c2623p;
        this.f517d = z;
    }

    /* renamed from: d */
    private int m660d(InterfaceC2614g interfaceC2614g) {
        Objects.requireNonNull(interfaceC2614g, "pp");
        C2623p c2623p = this.f514a;
        Objects.requireNonNull(c2623p);
        c2623p.f516c.add(interfaceC2614g);
        C2623p c2623p2 = this.f514a;
        c2623p2.f518e = -1;
        return c2623p2.f516c.size() - 1;
    }

    /* renamed from: j */
    private C2623p m654j(C2617j c2617j) {
        C2617j m665b;
        EnumC2627t enumC2627t;
        C2623p c2623p = this.f514a;
        int i = c2623p.f518e;
        if (i >= 0) {
            C2617j c2617j2 = (C2617j) c2623p.f516c.get(i);
            if (c2617j.f502b == c2617j.f503c) {
                enumC2627t = c2617j.f504d;
                if (enumC2627t == EnumC2627t.NOT_NEGATIVE) {
                    m665b = c2617j2.m664c(c2617j.f503c);
                    m660d(c2617j.m665b());
                    this.f514a.f518e = i;
                    this.f514a.f516c.set(i, m665b);
                }
            }
            m665b = c2617j2.m665b();
            this.f514a.f518e = m660d(c2617j);
            this.f514a.f516c.set(i, m665b);
        } else {
            c2623p.f518e = m660d(c2617j);
        }
        return this;
    }

    /* renamed from: t */
    private C2608a m644t(Locale locale, int i, InterfaceC2606b interfaceC2606b) {
        Objects.requireNonNull(locale, "locale");
        while (this.f514a.f515b != null) {
            m650n();
        }
        return new C2608a(new C2613f(this.f516c, false), locale, C2625r.f519a, i, null, interfaceC2606b);
    }

    /* renamed from: a */
    public C2623p m663a(C2608a c2608a) {
        Objects.requireNonNull(c2608a, "formatter");
        m660d(c2608a.m669a(false));
        return this;
    }

    /* renamed from: b */
    public C2623p m662b(InterfaceC2638j interfaceC2638j, int i, int i2, boolean z) {
        m660d(new C2615h(interfaceC2638j, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2623p m661c() {
        m660d(new C2616i(-2));
        return this;
    }

    /* renamed from: e */
    public C2623p m659e(char c) {
        m660d(new C2612e(c));
        return this;
    }

    /* renamed from: f */
    public C2623p m658f(String str) {
        if (str.length() > 0) {
            m660d(str.length() == 1 ? new C2612e(str.charAt(0)) : new C2620m(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2623p m657g(String str, String str2) {
        m660d(new C2618k(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2623p m656h() {
        m660d(C2618k.f507d);
        return this;
    }

    /* renamed from: i */
    public C2623p m655i(InterfaceC2638j interfaceC2638j, Map map) {
        Objects.requireNonNull(interfaceC2638j, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2628u enumC2628u = EnumC2628u.FULL;
        m660d(new C2621n(interfaceC2638j, enumC2628u, new C2610c(this, new C2624q(Collections.singletonMap(enumC2628u, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2623p m653k(InterfaceC2638j interfaceC2638j, int i) {
        Objects.requireNonNull(interfaceC2638j, "field");
        if (i >= 1 && i <= 19) {
            m654j(new C2617j(interfaceC2638j, i, i, EnumC2627t.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2623p m652l(InterfaceC2638j interfaceC2638j, int i, int i2, EnumC2627t enumC2627t) {
        if (i == i2 && enumC2627t == EnumC2627t.NOT_NEGATIVE) {
            m653k(interfaceC2638j, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2638j, "field");
        Objects.requireNonNull(enumC2627t, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m654j(new C2617j(interfaceC2638j, i, i2, enumC2627t));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2623p m651m() {
        m660d(new C2622o(C2609b.f491a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2623p m650n() {
        C2623p c2623p = this.f514a;
        if (c2623p.f515b != null) {
            if (c2623p.f516c.size() > 0) {
                C2623p c2623p2 = this.f514a;
                C2613f c2613f = new C2613f(c2623p2.f516c, c2623p2.f517d);
                this.f514a = this.f514a.f515b;
                m660d(c2613f);
            } else {
                this.f514a = this.f514a.f515b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2623p m649o() {
        C2623p c2623p = this.f514a;
        c2623p.f518e = -1;
        this.f514a = new C2623p(c2623p, true);
        return this;
    }

    /* renamed from: p */
    public C2623p m648p() {
        m660d(EnumC2619l.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2623p m647q() {
        m660d(EnumC2619l.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2623p m646r() {
        m660d(EnumC2619l.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2608a m645s() {
        return m644t(Locale.getDefault(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public C2608a m643u(int i, InterfaceC2606b interfaceC2606b) {
        return m644t(Locale.getDefault(), i, interfaceC2606b);
    }
}
