package p033j$.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.time.chrono.InterfaceC2684g;
import p033j$.time.temporal.AbstractC2738i;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2744o;
/* renamed from: j$.time.format.s */
/* loaded from: classes2.dex */
public final class C2709s {

    /* renamed from: f */
    public static final /* synthetic */ int f560f = 0;

    /* renamed from: a */
    private C2709s f561a;

    /* renamed from: b */
    private final C2709s f562b;

    /* renamed from: c */
    private final List f563c;

    /* renamed from: d */
    private final boolean f564d;

    /* renamed from: e */
    private int f565e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('G', EnumC2730a.ERA);
        hashMap.put('y', EnumC2730a.YEAR_OF_ERA);
        hashMap.put('u', EnumC2730a.YEAR);
        InterfaceC2744o interfaceC2744o = AbstractC2738i.f636a;
        hashMap.put('Q', interfaceC2744o);
        hashMap.put('q', interfaceC2744o);
        EnumC2730a enumC2730a = EnumC2730a.MONTH_OF_YEAR;
        hashMap.put('M', enumC2730a);
        hashMap.put('L', enumC2730a);
        hashMap.put('D', EnumC2730a.DAY_OF_YEAR);
        hashMap.put('d', EnumC2730a.DAY_OF_MONTH);
        hashMap.put('F', EnumC2730a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        EnumC2730a enumC2730a2 = EnumC2730a.DAY_OF_WEEK;
        hashMap.put('E', enumC2730a2);
        hashMap.put('c', enumC2730a2);
        hashMap.put('e', enumC2730a2);
        hashMap.put('a', EnumC2730a.AMPM_OF_DAY);
        hashMap.put('H', EnumC2730a.HOUR_OF_DAY);
        hashMap.put('k', EnumC2730a.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', EnumC2730a.HOUR_OF_AMPM);
        hashMap.put('h', EnumC2730a.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', EnumC2730a.MINUTE_OF_HOUR);
        hashMap.put('s', EnumC2730a.SECOND_OF_MINUTE);
        EnumC2730a enumC2730a3 = EnumC2730a.NANO_OF_SECOND;
        hashMap.put('S', enumC2730a3);
        hashMap.put('A', EnumC2730a.MILLI_OF_DAY);
        hashMap.put('n', enumC2730a3);
        hashMap.put('N', EnumC2730a.NANO_OF_DAY);
    }

    public C2709s() {
        this.f561a = this;
        this.f563c = new ArrayList();
        this.f565e = -1;
        this.f562b = null;
        this.f564d = false;
    }

    private C2709s(C2709s c2709s, boolean z) {
        this.f561a = this;
        this.f563c = new ArrayList();
        this.f565e = -1;
        this.f562b = c2709s;
        this.f564d = z;
    }

    /* renamed from: d */
    private int m876d(InterfaceC2698h interfaceC2698h) {
        Objects.requireNonNull(interfaceC2698h, "pp");
        C2709s c2709s = this.f561a;
        Objects.requireNonNull(c2709s);
        c2709s.f563c.add(interfaceC2698h);
        C2709s c2709s2 = this.f561a;
        c2709s2.f565e = -1;
        return c2709s2.f563c.size() - 1;
    }

    /* renamed from: j */
    private C2709s m870j(C2701k c2701k) {
        C2701k m892e;
        C2709s c2709s = this.f561a;
        int i = c2709s.f565e;
        if (i >= 0) {
            C2701k c2701k2 = (C2701k) c2709s.f563c.get(i);
            if (c2701k.f538b == c2701k.f539c && C2701k.m894c(c2701k) == EnumC2689A.NOT_NEGATIVE) {
                m892e = c2701k2.m891f(c2701k.f539c);
                m876d(c2701k.m892e());
                this.f561a.f565e = i;
            } else {
                m892e = c2701k2.m892e();
                this.f561a.f565e = m876d(c2701k);
            }
            this.f561a.f563c.set(i, m892e);
        } else {
            c2709s.f565e = m876d(c2701k);
        }
        return this;
    }

    /* renamed from: u */
    private C2691a m859u(Locale locale, EnumC2716z enumC2716z, InterfaceC2684g interfaceC2684g) {
        Objects.requireNonNull(locale, "locale");
        while (this.f561a.f562b != null) {
            m866n();
        }
        return new C2691a(new C2697g(this.f563c, false), locale, C2714x.f579a, enumC2716z, null, interfaceC2684g, null);
    }

    /* renamed from: a */
    public C2709s m879a(C2691a c2691a) {
        Objects.requireNonNull(c2691a, "formatter");
        m876d(c2691a.m897h(false));
        return this;
    }

    /* renamed from: b */
    public C2709s m878b(InterfaceC2744o interfaceC2744o, int i, int i2, boolean z) {
        m876d(new C2699i(interfaceC2744o, i, i2, z));
        return this;
    }

    /* renamed from: c */
    public C2709s m877c() {
        m876d(new C2700j(-2));
        return this;
    }

    /* renamed from: e */
    public C2709s m875e(char c) {
        m876d(new C2696f(c));
        return this;
    }

    /* renamed from: f */
    public C2709s m874f(String str) {
        if (str.length() > 0) {
            m876d(str.length() == 1 ? new C2696f(str.charAt(0)) : new C2706p(str));
        }
        return this;
    }

    /* renamed from: g */
    public C2709s m873g(String str, String str2) {
        m876d(new C2702l(str, str2));
        return this;
    }

    /* renamed from: h */
    public C2709s m872h() {
        m876d(C2702l.f543d);
        return this;
    }

    /* renamed from: i */
    public C2709s m871i(InterfaceC2744o interfaceC2744o, Map map) {
        Objects.requireNonNull(interfaceC2744o, "field");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        EnumC2690B enumC2690B = EnumC2690B.FULL;
        m876d(new C2707q(interfaceC2744o, enumC2690B, new C2693c(this, new C2713w(Collections.singletonMap(enumC2690B, linkedHashMap)))));
        return this;
    }

    /* renamed from: k */
    public C2709s m869k(InterfaceC2744o interfaceC2744o, int i) {
        Objects.requireNonNull(interfaceC2744o, "field");
        if (i >= 1 && i <= 19) {
            m870j(new C2701k(interfaceC2744o, i, i, EnumC2689A.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i);
    }

    /* renamed from: l */
    public C2709s m868l(InterfaceC2744o interfaceC2744o, int i, int i2, EnumC2689A enumC2689A) {
        if (i == i2 && enumC2689A == EnumC2689A.NOT_NEGATIVE) {
            m869k(interfaceC2744o, i2);
            return this;
        }
        Objects.requireNonNull(interfaceC2744o, "field");
        Objects.requireNonNull(enumC2689A, "signStyle");
        if (i < 1 || i > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i2);
        } else if (i2 >= i) {
            m870j(new C2701k(interfaceC2744o, i, i2, enumC2689A));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    /* renamed from: m */
    public C2709s m867m() {
        m876d(new C2708r(C2692b.f524a, "ZoneRegionId()"));
        return this;
    }

    /* renamed from: n */
    public C2709s m866n() {
        C2709s c2709s = this.f561a;
        if (c2709s.f562b != null) {
            if (c2709s.f563c.size() > 0) {
                C2709s c2709s2 = this.f561a;
                C2697g c2697g = new C2697g(c2709s2.f563c, c2709s2.f564d);
                this.f561a = this.f561a.f562b;
                m876d(c2697g);
            } else {
                this.f561a = this.f561a.f562b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    /* renamed from: o */
    public C2709s m865o() {
        C2709s c2709s = this.f561a;
        c2709s.f565e = -1;
        this.f561a = new C2709s(c2709s, true);
        return this;
    }

    /* renamed from: p */
    public C2709s m864p() {
        m876d(EnumC2705o.INSENSITIVE);
        return this;
    }

    /* renamed from: q */
    public C2709s m863q() {
        m876d(EnumC2705o.SENSITIVE);
        return this;
    }

    /* renamed from: r */
    public C2709s m862r() {
        m876d(EnumC2705o.LENIENT);
        return this;
    }

    /* renamed from: s */
    public C2691a m861s() {
        return m859u(Locale.getDefault(), EnumC2716z.SMART, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public C2691a m860t(EnumC2716z enumC2716z, InterfaceC2684g interfaceC2684g) {
        return m859u(Locale.getDefault(), enumC2716z, interfaceC2684g);
    }
}
