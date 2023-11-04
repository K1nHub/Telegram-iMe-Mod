package p033j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.time.chrono.InterfaceC2688g;
import p033j$.time.temporal.AbstractC2742i;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2748o;
/* renamed from: j$.time.format.s */
/* loaded from: classes2.dex */
public final class C2713s {

    /* renamed from: f */
    public static final /* synthetic */ int f560f = 0;

    /* renamed from: a */
    private C2713s f561a;

    /* renamed from: b */
    private final C2713s f562b;

    /* renamed from: c */
    private final List f563c;

    /* renamed from: d */
    private final boolean f564d;

    /* renamed from: e */
    private int f565e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2734a.ERA);
        hashMap.put('y', EnumC2734a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2734a.YEAR);
        InterfaceC2748o interfaceC2748o = AbstractC2742i.f636a;
        hashMap.put('Q', interfaceC2748o);
        hashMap.put('q', interfaceC2748o);
        EnumC2734a enumC2734a = EnumC2734a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2734a);
        hashMap.put('L', enumC2734a);
        hashMap.put('D', EnumC2734a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2734a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2734a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2734a enumC2734a2 = EnumC2734a.DAY_OF_WEEK;
        hashMap.put('E', enumC2734a2);
        hashMap.put('c', enumC2734a2);
        hashMap.put('e', enumC2734a2);
        hashMap.put('a', EnumC2734a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2734a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2734a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2734a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2734a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2734a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2734a.SECOND_OF_MINUTE);
        EnumC2734a enumC2734a3 = EnumC2734a.NANO_OF_SECOND;
        hashMap.put('S', enumC2734a3);
        hashMap.put('A', EnumC2734a.MILLI_OF_DAY);
        hashMap.put('n', enumC2734a3);
        hashMap.put('N', EnumC2734a.NANO_OF_DAY);
    }

    public C2713s() {
        this.f561a = this;
        this.f563c = new ArrayList();
        this.f565e = -1;
        this.f562b = null;
        this.f564d = false;
    }

    private C2713s(C2713s c2713s, boolean z) {
        this.f561a = this;
        this.f563c = new ArrayList();
        this.f565e = -1;
        this.f562b = c2713s;
        this.f564d = z;
    }

    /* renamed from: d */
    private int m877d(InterfaceC2702h interfaceC2702h) {
        Objects.requireNonNull(interfaceC2702h, "pp");
        C2713s c2713s = this.f561a;
        Objects.requireNonNull(c2713s);
        c2713s.f563c.add(interfaceC2702h);
        C2713s c2713s2 = this.f561a;
        c2713s2.f565e = -1;
        return c2713s2.f563c.size() - 1;
    }

    /* renamed from: j */
    private C2713s m871j(C2705k c2705k) {
        C2705k m893e;
        C2713s c2713s = this.f561a;
        int i = c2713s.f565e;
        if (i >= 0) {
            C2705k c2705k2 = (C2705k) c2713s.f563c.get(i);
            if (c2705k.f538b == c2705k.f539c && C2705k.m895c(c2705k) == EnumC2693A.NOT_NEGATIVE) {
                m893e = c2705k2.m892f(c2705k.f539c);
                m877d(c2705k.m893e());
                this.f561a.f565e = i;
            } else {
                m893e = c2705k2.m893e();
                this.f561a.f565e = m877d(c2705k);
            }
            this.f561a.f563c.set(i, m893e);
        } else {
            c2713s.f565e = m877d(c2705k);
        }
        return this;
    }

    /* renamed from: u */
    private C2695a m860u(Locale locale, EnumC2720z enumC2720z, InterfaceC2688g interfaceC2688g) {
        Objects.requireNonNull(locale, "locale");
        while (this.f561a.f562b != null) {
            m867n();
        }
        return new C2695a(new C2701g(this.f563c, false), locale, C2718x.f579a, enumC2720z, null, interfaceC2688g, null);
    }

    /* renamed from: a */
    public C2713s m880a(C2695a c2695a) {
        Objects.requireNonNull(c2695a, "formatter");
        m877d(c2695a.m898h(false));
        return this;
    }

    /* renamed from: b */
    public C2713s m879b(InterfaceC2748o interfaceC2748o, int i, int i2, boolean z) {
        m877d(new C2703i(interfaceC2748o, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2713s m878c() {
        m877d(new C2704j(-2));
        return this;
    }

    /* renamed from: e */
    public C2713s m876e(char c) {
        m877d(new C2700f(c));
        return this;
    }

    /* renamed from: f */
    public C2713s m875f(String str) {
        if (str.length() > 0) {
            m877d(str.length() == 1 ? new C2700f(str.charAt(0)) : new C2710p(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2713s m874g(String str, String str2) {
        m877d(new C2706l(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2713s m873h() {
        m877d(C2706l.f543d);
        return this;
    }

    /* renamed from: i */
    public C2713s m872i(InterfaceC2748o interfaceC2748o, Map map) {
        Objects.requireNonNull(interfaceC2748o, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2694B enumC2694B = EnumC2694B.FULL;
        m877d(new C2711q(interfaceC2748o, enumC2694B, new C2697c(this, new C2717w(Collections.singletonMap(enumC2694B, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2713s m870k(InterfaceC2748o interfaceC2748o, int i) {
        Objects.requireNonNull(interfaceC2748o, "field");
        if (i >= 1 && i <= 19) {
            m871j(new C2705k(interfaceC2748o, i, i, EnumC2693A.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2713s m869l(InterfaceC2748o interfaceC2748o, int i, int i2, EnumC2693A enumC2693A) {
        if (i == i2 && enumC2693A == EnumC2693A.NOT_NEGATIVE) {
            m870k(interfaceC2748o, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2748o, "field");
        Objects.requireNonNull(enumC2693A, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m871j(new C2705k(interfaceC2748o, i, i2, enumC2693A));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2713s m868m() {
        m877d(new C2712r(C2696b.f524a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2713s m867n() {
        C2713s c2713s = this.f561a;
        if (c2713s.f562b != null) {
            if (c2713s.f563c.size() > 0) {
                C2713s c2713s2 = this.f561a;
                C2701g c2701g = new C2701g(c2713s2.f563c, c2713s2.f564d);
                this.f561a = this.f561a.f562b;
                m877d(c2701g);
            } else {
                this.f561a = this.f561a.f562b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2713s m866o() {
        C2713s c2713s = this.f561a;
        c2713s.f565e = -1;
        this.f561a = new C2713s(c2713s, true);
        return this;
    }

    /* renamed from: p */
    public C2713s m865p() {
        m877d(EnumC2709o.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2713s m864q() {
        m877d(EnumC2709o.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2713s m863r() {
        m877d(EnumC2709o.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2695a m862s() {
        return m860u(Locale.getDefault(), EnumC2720z.SMART, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public C2695a m861t(EnumC2720z enumC2720z, InterfaceC2688g interfaceC2688g) {
        return m860u(Locale.getDefault(), enumC2720z, interfaceC2688g);
    }
}
