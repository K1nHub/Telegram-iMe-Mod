package p034j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p034j$.time.chrono.InterfaceC2490b;
import p034j$.time.temporal.AbstractC2521i;
import p034j$.time.temporal.EnumC2513a;
import p034j$.time.temporal.InterfaceC2522j;
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2507p {

    /* renamed from: a */
    private C2507p f510a;

    /* renamed from: b */
    private final C2507p f511b;

    /* renamed from: c */
    private final List f512c;

    /* renamed from: d */
    private final boolean f513d;

    /* renamed from: e */
    private int f514e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2513a.ERA);
        hashMap.put('y', EnumC2513a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2513a.YEAR);
        InterfaceC2522j interfaceC2522j = AbstractC2521i.f527a;
        hashMap.put('Q', interfaceC2522j);
        hashMap.put('q', interfaceC2522j);
        EnumC2513a enumC2513a = EnumC2513a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2513a);
        hashMap.put('L', enumC2513a);
        hashMap.put('D', EnumC2513a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2513a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2513a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2513a enumC2513a2 = EnumC2513a.DAY_OF_WEEK;
        hashMap.put('E', enumC2513a2);
        hashMap.put('c', enumC2513a2);
        hashMap.put('e', enumC2513a2);
        hashMap.put('a', EnumC2513a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2513a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2513a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2513a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2513a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2513a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2513a.SECOND_OF_MINUTE);
        EnumC2513a enumC2513a3 = EnumC2513a.NANO_OF_SECOND;
        hashMap.put('S', enumC2513a3);
        hashMap.put('A', EnumC2513a.MILLI_OF_DAY);
        hashMap.put('n', enumC2513a3);
        hashMap.put('N', EnumC2513a.NANO_OF_DAY);
    }

    public C2507p() {
        this.f510a = this;
        this.f512c = new ArrayList();
        this.f514e = -1;
        this.f511b = null;
        this.f513d = false;
    }

    private C2507p(C2507p c2507p, boolean z) {
        this.f510a = this;
        this.f512c = new ArrayList();
        this.f514e = -1;
        this.f511b = c2507p;
        this.f513d = z;
    }

    /* renamed from: d */
    private int m675d(InterfaceC2498g interfaceC2498g) {
        Objects.requireNonNull(interfaceC2498g, "pp");
        C2507p c2507p = this.f510a;
        Objects.requireNonNull(c2507p);
        c2507p.f512c.add(interfaceC2498g);
        C2507p c2507p2 = this.f510a;
        c2507p2.f514e = -1;
        return c2507p2.f512c.size() - 1;
    }

    /* renamed from: j */
    private C2507p m669j(C2501j c2501j) {
        C2501j m680b;
        EnumC2511t enumC2511t;
        C2507p c2507p = this.f510a;
        int i = c2507p.f514e;
        if (i >= 0) {
            C2501j c2501j2 = (C2501j) c2507p.f512c.get(i);
            if (c2501j.f498b == c2501j.f499c) {
                enumC2511t = c2501j.f500d;
                if (enumC2511t == EnumC2511t.NOT_NEGATIVE) {
                    m680b = c2501j2.m679c(c2501j.f499c);
                    m675d(c2501j.m680b());
                    this.f510a.f514e = i;
                    this.f510a.f512c.set(i, m680b);
                }
            }
            m680b = c2501j2.m680b();
            this.f510a.f514e = m675d(c2501j);
            this.f510a.f512c.set(i, m680b);
        } else {
            c2507p.f514e = m675d(c2501j);
        }
        return this;
    }

    /* renamed from: t */
    private C2492a m659t(Locale locale, int i, InterfaceC2490b interfaceC2490b) {
        Objects.requireNonNull(locale, "locale");
        while (this.f510a.f511b != null) {
            m665n();
        }
        return new C2492a(new C2497f(this.f512c, false), locale, C2509r.f515a, i, null, interfaceC2490b);
    }

    /* renamed from: a */
    public C2507p m678a(C2492a c2492a) {
        Objects.requireNonNull(c2492a, "formatter");
        m675d(c2492a.m684a(false));
        return this;
    }

    /* renamed from: b */
    public C2507p m677b(InterfaceC2522j interfaceC2522j, int i, int i2, boolean z) {
        m675d(new C2499h(interfaceC2522j, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2507p m676c() {
        m675d(new C2500i(-2));
        return this;
    }

    /* renamed from: e */
    public C2507p m674e(char c) {
        m675d(new C2496e(c));
        return this;
    }

    /* renamed from: f */
    public C2507p m673f(String str) {
        if (str.length() > 0) {
            m675d(str.length() == 1 ? new C2496e(str.charAt(0)) : new C2504m(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2507p m672g(String str, String str2) {
        m675d(new C2502k(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2507p m671h() {
        m675d(C2502k.f503d);
        return this;
    }

    /* renamed from: i */
    public C2507p m670i(InterfaceC2522j interfaceC2522j, Map map) {
        Objects.requireNonNull(interfaceC2522j, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2512u enumC2512u = EnumC2512u.FULL;
        m675d(new C2505n(interfaceC2522j, enumC2512u, new C2494c(this, new C2508q(Collections.singletonMap(enumC2512u, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2507p m668k(InterfaceC2522j interfaceC2522j, int i) {
        Objects.requireNonNull(interfaceC2522j, "field");
        if (i >= 1 && i <= 19) {
            m669j(new C2501j(interfaceC2522j, i, i, EnumC2511t.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2507p m667l(InterfaceC2522j interfaceC2522j, int i, int i2, EnumC2511t enumC2511t) {
        if (i == i2 && enumC2511t == EnumC2511t.NOT_NEGATIVE) {
            m668k(interfaceC2522j, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2522j, "field");
        Objects.requireNonNull(enumC2511t, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m669j(new C2501j(interfaceC2522j, i, i2, enumC2511t));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2507p m666m() {
        m675d(new C2506o(C2493b.f487a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2507p m665n() {
        C2507p c2507p = this.f510a;
        if (c2507p.f511b != null) {
            if (c2507p.f512c.size() > 0) {
                C2507p c2507p2 = this.f510a;
                C2497f c2497f = new C2497f(c2507p2.f512c, c2507p2.f513d);
                this.f510a = this.f510a.f511b;
                m675d(c2497f);
            } else {
                this.f510a = this.f510a.f511b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2507p m664o() {
        C2507p c2507p = this.f510a;
        c2507p.f514e = -1;
        this.f510a = new C2507p(c2507p, true);
        return this;
    }

    /* renamed from: p */
    public C2507p m663p() {
        m675d(EnumC2503l.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2507p m662q() {
        m675d(EnumC2503l.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2507p m661r() {
        m675d(EnumC2503l.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2492a m660s() {
        return m659t(Locale.getDefault(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public C2492a m658u(int i, InterfaceC2490b interfaceC2490b) {
        return m659t(Locale.getDefault(), i, interfaceC2490b);
    }
}
