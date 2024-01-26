package p033j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.time.chrono.InterfaceC2683g;
import p033j$.time.temporal.AbstractC2737i;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2743o;
/* renamed from: j$.time.format.s */
/* loaded from: classes2.dex */
public final class C2708s {

    /* renamed from: f */
    public static final /* synthetic */ int f560f = 0;

    /* renamed from: a */
    private C2708s f561a;

    /* renamed from: b */
    private final C2708s f562b;

    /* renamed from: c */
    private final List f563c;

    /* renamed from: d */
    private final boolean f564d;

    /* renamed from: e */
    private int f565e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2729a.ERA);
        hashMap.put('y', EnumC2729a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2729a.YEAR);
        InterfaceC2743o interfaceC2743o = AbstractC2737i.f636a;
        hashMap.put('Q', interfaceC2743o);
        hashMap.put('q', interfaceC2743o);
        EnumC2729a enumC2729a = EnumC2729a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2729a);
        hashMap.put('L', enumC2729a);
        hashMap.put('D', EnumC2729a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2729a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2729a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2729a enumC2729a2 = EnumC2729a.DAY_OF_WEEK;
        hashMap.put('E', enumC2729a2);
        hashMap.put('c', enumC2729a2);
        hashMap.put('e', enumC2729a2);
        hashMap.put('a', EnumC2729a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2729a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2729a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2729a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2729a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2729a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2729a.SECOND_OF_MINUTE);
        EnumC2729a enumC2729a3 = EnumC2729a.NANO_OF_SECOND;
        hashMap.put('S', enumC2729a3);
        hashMap.put('A', EnumC2729a.MILLI_OF_DAY);
        hashMap.put('n', enumC2729a3);
        hashMap.put('N', EnumC2729a.NANO_OF_DAY);
    }

    public C2708s() {
        this.f561a = this;
        this.f563c = new ArrayList();
        this.f565e = -1;
        this.f562b = null;
        this.f564d = false;
    }

    private C2708s(C2708s c2708s, boolean z) {
        this.f561a = this;
        this.f563c = new ArrayList();
        this.f565e = -1;
        this.f562b = c2708s;
        this.f564d = z;
    }

    /* renamed from: d */
    private int m880d(InterfaceC2697h interfaceC2697h) {
        Objects.requireNonNull(interfaceC2697h, "pp");
        C2708s c2708s = this.f561a;
        Objects.requireNonNull(c2708s);
        c2708s.f563c.add(interfaceC2697h);
        C2708s c2708s2 = this.f561a;
        c2708s2.f565e = -1;
        return c2708s2.f563c.size() - 1;
    }

    /* renamed from: j */
    private C2708s m874j(C2700k c2700k) {
        C2700k m896e;
        C2708s c2708s = this.f561a;
        int i = c2708s.f565e;
        if (i >= 0) {
            C2700k c2700k2 = (C2700k) c2708s.f563c.get(i);
            if (c2700k.f538b == c2700k.f539c && C2700k.m898c(c2700k) == EnumC2688A.NOT_NEGATIVE) {
                m896e = c2700k2.m895f(c2700k.f539c);
                m880d(c2700k.m896e());
                this.f561a.f565e = i;
            } else {
                m896e = c2700k2.m896e();
                this.f561a.f565e = m880d(c2700k);
            }
            this.f561a.f563c.set(i, m896e);
        } else {
            c2708s.f565e = m880d(c2700k);
        }
        return this;
    }

    /* renamed from: u */
    private C2690a m863u(Locale locale, EnumC2715z enumC2715z, InterfaceC2683g interfaceC2683g) {
        Objects.requireNonNull(locale, "locale");
        while (this.f561a.f562b != null) {
            m870n();
        }
        return new C2690a(new C2696g(this.f563c, false), locale, C2713x.f579a, enumC2715z, null, interfaceC2683g, null);
    }

    /* renamed from: a */
    public C2708s m883a(C2690a c2690a) {
        Objects.requireNonNull(c2690a, "formatter");
        m880d(c2690a.m901h(false));
        return this;
    }

    /* renamed from: b */
    public C2708s m882b(InterfaceC2743o interfaceC2743o, int i, int i2, boolean z) {
        m880d(new C2698i(interfaceC2743o, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2708s m881c() {
        m880d(new C2699j(-2));
        return this;
    }

    /* renamed from: e */
    public C2708s m879e(char c) {
        m880d(new C2695f(c));
        return this;
    }

    /* renamed from: f */
    public C2708s m878f(String str) {
        if (str.length() > 0) {
            m880d(str.length() == 1 ? new C2695f(str.charAt(0)) : new C2705p(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2708s m877g(String str, String str2) {
        m880d(new C2701l(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2708s m876h() {
        m880d(C2701l.f543d);
        return this;
    }

    /* renamed from: i */
    public C2708s m875i(InterfaceC2743o interfaceC2743o, Map map) {
        Objects.requireNonNull(interfaceC2743o, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2689B enumC2689B = EnumC2689B.FULL;
        m880d(new C2706q(interfaceC2743o, enumC2689B, new C2692c(this, new C2712w(Collections.singletonMap(enumC2689B, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2708s m873k(InterfaceC2743o interfaceC2743o, int i) {
        Objects.requireNonNull(interfaceC2743o, "field");
        if (i >= 1 && i <= 19) {
            m874j(new C2700k(interfaceC2743o, i, i, EnumC2688A.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2708s m872l(InterfaceC2743o interfaceC2743o, int i, int i2, EnumC2688A enumC2688A) {
        if (i == i2 && enumC2688A == EnumC2688A.NOT_NEGATIVE) {
            m873k(interfaceC2743o, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2743o, "field");
        Objects.requireNonNull(enumC2688A, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m874j(new C2700k(interfaceC2743o, i, i2, enumC2688A));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2708s m871m() {
        m880d(new C2707r(C2691b.f524a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2708s m870n() {
        C2708s c2708s = this.f561a;
        if (c2708s.f562b != null) {
            if (c2708s.f563c.size() > 0) {
                C2708s c2708s2 = this.f561a;
                C2696g c2696g = new C2696g(c2708s2.f563c, c2708s2.f564d);
                this.f561a = this.f561a.f562b;
                m880d(c2696g);
            } else {
                this.f561a = this.f561a.f562b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2708s m869o() {
        C2708s c2708s = this.f561a;
        c2708s.f565e = -1;
        this.f561a = new C2708s(c2708s, true);
        return this;
    }

    /* renamed from: p */
    public C2708s m868p() {
        m880d(EnumC2704o.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2708s m867q() {
        m880d(EnumC2704o.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2708s m866r() {
        m880d(EnumC2704o.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2690a m865s() {
        return m863u(Locale.getDefault(), EnumC2715z.SMART, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public C2690a m864t(EnumC2715z enumC2715z, InterfaceC2683g interfaceC2683g) {
        return m863u(Locale.getDefault(), enumC2715z, interfaceC2683g);
    }
}
