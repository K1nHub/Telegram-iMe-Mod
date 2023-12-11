package p033j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.time.chrono.InterfaceC2685g;
import p033j$.time.temporal.AbstractC2739i;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2745o;
/* renamed from: j$.time.format.s */
/* loaded from: classes2.dex */
public final class C2710s {

    /* renamed from: f */
    public static final /* synthetic */ int f560f = 0;

    /* renamed from: a */
    private C2710s f561a;

    /* renamed from: b */
    private final C2710s f562b;

    /* renamed from: c */
    private final List f563c;

    /* renamed from: d */
    private final boolean f564d;

    /* renamed from: e */
    private int f565e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2731a.ERA);
        hashMap.put('y', EnumC2731a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2731a.YEAR);
        InterfaceC2745o interfaceC2745o = AbstractC2739i.f636a;
        hashMap.put('Q', interfaceC2745o);
        hashMap.put('q', interfaceC2745o);
        EnumC2731a enumC2731a = EnumC2731a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2731a);
        hashMap.put('L', enumC2731a);
        hashMap.put('D', EnumC2731a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2731a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2731a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2731a enumC2731a2 = EnumC2731a.DAY_OF_WEEK;
        hashMap.put('E', enumC2731a2);
        hashMap.put('c', enumC2731a2);
        hashMap.put('e', enumC2731a2);
        hashMap.put('a', EnumC2731a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2731a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2731a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2731a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2731a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2731a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2731a.SECOND_OF_MINUTE);
        EnumC2731a enumC2731a3 = EnumC2731a.NANO_OF_SECOND;
        hashMap.put('S', enumC2731a3);
        hashMap.put('A', EnumC2731a.MILLI_OF_DAY);
        hashMap.put('n', enumC2731a3);
        hashMap.put('N', EnumC2731a.NANO_OF_DAY);
    }

    public C2710s() {
        this.f561a = this;
        this.f563c = new ArrayList();
        this.f565e = -1;
        this.f562b = null;
        this.f564d = false;
    }

    private C2710s(C2710s c2710s, boolean z) {
        this.f561a = this;
        this.f563c = new ArrayList();
        this.f565e = -1;
        this.f562b = c2710s;
        this.f564d = z;
    }

    /* renamed from: d */
    private int m877d(InterfaceC2699h interfaceC2699h) {
        Objects.requireNonNull(interfaceC2699h, "pp");
        C2710s c2710s = this.f561a;
        Objects.requireNonNull(c2710s);
        c2710s.f563c.add(interfaceC2699h);
        C2710s c2710s2 = this.f561a;
        c2710s2.f565e = -1;
        return c2710s2.f563c.size() - 1;
    }

    /* renamed from: j */
    private C2710s m871j(C2702k c2702k) {
        C2702k m893e;
        C2710s c2710s = this.f561a;
        int i = c2710s.f565e;
        if (i >= 0) {
            C2702k c2702k2 = (C2702k) c2710s.f563c.get(i);
            if (c2702k.f538b == c2702k.f539c && C2702k.m895c(c2702k) == EnumC2690A.NOT_NEGATIVE) {
                m893e = c2702k2.m892f(c2702k.f539c);
                m877d(c2702k.m893e());
                this.f561a.f565e = i;
            } else {
                m893e = c2702k2.m893e();
                this.f561a.f565e = m877d(c2702k);
            }
            this.f561a.f563c.set(i, m893e);
        } else {
            c2710s.f565e = m877d(c2702k);
        }
        return this;
    }

    /* renamed from: u */
    private C2692a m860u(Locale locale, EnumC2717z enumC2717z, InterfaceC2685g interfaceC2685g) {
        Objects.requireNonNull(locale, "locale");
        while (this.f561a.f562b != null) {
            m867n();
        }
        return new C2692a(new C2698g(this.f563c, false), locale, C2715x.f579a, enumC2717z, null, interfaceC2685g, null);
    }

    /* renamed from: a */
    public C2710s m880a(C2692a c2692a) {
        Objects.requireNonNull(c2692a, "formatter");
        m877d(c2692a.m898h(false));
        return this;
    }

    /* renamed from: b */
    public C2710s m879b(InterfaceC2745o interfaceC2745o, int i, int i2, boolean z) {
        m877d(new C2700i(interfaceC2745o, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2710s m878c() {
        m877d(new C2701j(-2));
        return this;
    }

    /* renamed from: e */
    public C2710s m876e(char c) {
        m877d(new C2697f(c));
        return this;
    }

    /* renamed from: f */
    public C2710s m875f(String str) {
        if (str.length() > 0) {
            m877d(str.length() == 1 ? new C2697f(str.charAt(0)) : new C2707p(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2710s m874g(String str, String str2) {
        m877d(new C2703l(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2710s m873h() {
        m877d(C2703l.f543d);
        return this;
    }

    /* renamed from: i */
    public C2710s m872i(InterfaceC2745o interfaceC2745o, Map map) {
        Objects.requireNonNull(interfaceC2745o, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2691B enumC2691B = EnumC2691B.FULL;
        m877d(new C2708q(interfaceC2745o, enumC2691B, new C2694c(this, new C2714w(Collections.singletonMap(enumC2691B, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2710s m870k(InterfaceC2745o interfaceC2745o, int i) {
        Objects.requireNonNull(interfaceC2745o, "field");
        if (i >= 1 && i <= 19) {
            m871j(new C2702k(interfaceC2745o, i, i, EnumC2690A.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2710s m869l(InterfaceC2745o interfaceC2745o, int i, int i2, EnumC2690A enumC2690A) {
        if (i == i2 && enumC2690A == EnumC2690A.NOT_NEGATIVE) {
            m870k(interfaceC2745o, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2745o, "field");
        Objects.requireNonNull(enumC2690A, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m871j(new C2702k(interfaceC2745o, i, i2, enumC2690A));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2710s m868m() {
        m877d(new C2709r(C2693b.f524a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2710s m867n() {
        C2710s c2710s = this.f561a;
        if (c2710s.f562b != null) {
            if (c2710s.f563c.size() > 0) {
                C2710s c2710s2 = this.f561a;
                C2698g c2698g = new C2698g(c2710s2.f563c, c2710s2.f564d);
                this.f561a = this.f561a.f562b;
                m877d(c2698g);
            } else {
                this.f561a = this.f561a.f562b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2710s m866o() {
        C2710s c2710s = this.f561a;
        c2710s.f565e = -1;
        this.f561a = new C2710s(c2710s, true);
        return this;
    }

    /* renamed from: p */
    public C2710s m865p() {
        m877d(EnumC2706o.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2710s m864q() {
        m877d(EnumC2706o.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2710s m863r() {
        m877d(EnumC2706o.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2692a m862s() {
        return m860u(Locale.getDefault(), EnumC2717z.SMART, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public C2692a m861t(EnumC2717z enumC2717z, InterfaceC2685g interfaceC2685g) {
        return m860u(Locale.getDefault(), enumC2717z, interfaceC2685g);
    }
}
