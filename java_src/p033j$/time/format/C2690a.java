package p033j$.time.format;

import java.io.IOException;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.AbstractC2723n;
import p033j$.time.DateTimeException;
import p033j$.time.chrono.C2684h;
import p033j$.time.chrono.InterfaceC2683g;
import p033j$.time.temporal.AbstractC2737i;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2752x;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2690a {

    /* renamed from: h */
    public static final C2690a f514h;

    /* renamed from: i */
    public static final C2690a f515i;

    /* renamed from: j */
    public static final C2690a f516j;

    /* renamed from: a */
    private final C2696g f517a;

    /* renamed from: b */
    private final Locale f518b;

    /* renamed from: c */
    private final C2713x f519c;

    /* renamed from: d */
    private final EnumC2715z f520d;

    /* renamed from: e */
    private final Set f521e = null;

    /* renamed from: f */
    private final InterfaceC2683g f522f;

    /* renamed from: g */
    private final AbstractC2723n f523g;

    static {
        C2708s c2708s = new C2708s();
        EnumC2729a enumC2729a = EnumC2729a.YEAR;
        EnumC2688A enumC2688A = EnumC2688A.EXCEEDS_PAD;
        C2708s m872l = c2708s.m872l(enumC2729a, 4, 10, enumC2688A);
        m872l.m879e('-');
        EnumC2729a enumC2729a2 = EnumC2729a.MONTH_OF_YEAR;
        m872l.m873k(enumC2729a2, 2);
        m872l.m879e('-');
        EnumC2729a enumC2729a3 = EnumC2729a.DAY_OF_MONTH;
        m872l.m873k(enumC2729a3, 2);
        EnumC2715z enumC2715z = EnumC2715z.STRICT;
        C2684h c2684h = C2684h.f501a;
        C2690a m864t = m872l.m864t(enumC2715z, c2684h);
        f514h = m864t;
        C2708s c2708s2 = new C2708s();
        c2708s2.m868p();
        c2708s2.m883a(m864t);
        c2708s2.m876h();
        c2708s2.m864t(enumC2715z, c2684h);
        C2708s c2708s3 = new C2708s();
        c2708s3.m868p();
        c2708s3.m883a(m864t);
        c2708s3.m869o();
        c2708s3.m876h();
        c2708s3.m864t(enumC2715z, c2684h);
        C2708s c2708s4 = new C2708s();
        EnumC2729a enumC2729a4 = EnumC2729a.HOUR_OF_DAY;
        c2708s4.m873k(enumC2729a4, 2);
        c2708s4.m879e(':');
        EnumC2729a enumC2729a5 = EnumC2729a.MINUTE_OF_HOUR;
        c2708s4.m873k(enumC2729a5, 2);
        c2708s4.m869o();
        c2708s4.m879e(':');
        EnumC2729a enumC2729a6 = EnumC2729a.SECOND_OF_MINUTE;
        c2708s4.m873k(enumC2729a6, 2);
        c2708s4.m869o();
        c2708s4.m882b(EnumC2729a.NANO_OF_SECOND, 0, 9, true);
        C2690a m864t2 = c2708s4.m864t(enumC2715z, null);
        C2708s c2708s5 = new C2708s();
        c2708s5.m868p();
        c2708s5.m883a(m864t2);
        c2708s5.m876h();
        c2708s5.m864t(enumC2715z, null);
        C2708s c2708s6 = new C2708s();
        c2708s6.m868p();
        c2708s6.m883a(m864t2);
        c2708s6.m869o();
        c2708s6.m876h();
        c2708s6.m864t(enumC2715z, null);
        C2708s c2708s7 = new C2708s();
        c2708s7.m868p();
        c2708s7.m883a(m864t);
        c2708s7.m879e('T');
        c2708s7.m883a(m864t2);
        C2690a m864t3 = c2708s7.m864t(enumC2715z, c2684h);
        C2708s c2708s8 = new C2708s();
        c2708s8.m868p();
        c2708s8.m883a(m864t3);
        c2708s8.m876h();
        C2690a m864t4 = c2708s8.m864t(enumC2715z, c2684h);
        f515i = m864t4;
        C2708s c2708s9 = new C2708s();
        c2708s9.m883a(m864t4);
        c2708s9.m869o();
        c2708s9.m879e('[');
        c2708s9.m867q();
        c2708s9.m871m();
        c2708s9.m879e(']');
        c2708s9.m864t(enumC2715z, c2684h);
        C2708s c2708s10 = new C2708s();
        c2708s10.m883a(m864t3);
        c2708s10.m869o();
        c2708s10.m876h();
        c2708s10.m869o();
        c2708s10.m879e('[');
        c2708s10.m867q();
        c2708s10.m871m();
        c2708s10.m879e(']');
        c2708s10.m864t(enumC2715z, c2684h);
        C2708s c2708s11 = new C2708s();
        c2708s11.m868p();
        C2708s m872l2 = c2708s11.m872l(enumC2729a, 4, 10, enumC2688A);
        m872l2.m879e('-');
        m872l2.m873k(EnumC2729a.DAY_OF_YEAR, 3);
        m872l2.m869o();
        m872l2.m876h();
        m872l2.m864t(enumC2715z, c2684h);
        C2708s c2708s12 = new C2708s();
        c2708s12.m868p();
        C2708s m872l3 = c2708s12.m872l(AbstractC2737i.f638c, 4, 10, enumC2688A);
        m872l3.m878f("-W");
        m872l3.m873k(AbstractC2737i.f637b, 2);
        m872l3.m879e('-');
        EnumC2729a enumC2729a7 = EnumC2729a.DAY_OF_WEEK;
        m872l3.m873k(enumC2729a7, 1);
        m872l3.m869o();
        m872l3.m876h();
        m872l3.m864t(enumC2715z, c2684h);
        C2708s c2708s13 = new C2708s();
        c2708s13.m868p();
        c2708s13.m881c();
        f516j = c2708s13.m864t(enumC2715z, null);
        C2708s c2708s14 = new C2708s();
        c2708s14.m868p();
        c2708s14.m873k(enumC2729a, 4);
        c2708s14.m873k(enumC2729a2, 2);
        c2708s14.m873k(enumC2729a3, 2);
        c2708s14.m869o();
        c2708s14.m877g("+HHMMss", "Z");
        c2708s14.m864t(enumC2715z, c2684h);
        HashMap hashMap = new HashMap();
        hashMap.put(1L, "Mon");
        hashMap.put(2L, "Tue");
        hashMap.put(3L, "Wed");
        hashMap.put(4L, "Thu");
        hashMap.put(5L, "Fri");
        hashMap.put(6L, "Sat");
        hashMap.put(7L, "Sun");
        HashMap hashMap2 = new HashMap();
        hashMap2.put(1L, "Jan");
        hashMap2.put(2L, "Feb");
        hashMap2.put(3L, "Mar");
        hashMap2.put(4L, "Apr");
        hashMap2.put(5L, "May");
        hashMap2.put(6L, "Jun");
        hashMap2.put(7L, "Jul");
        hashMap2.put(8L, "Aug");
        hashMap2.put(9L, "Sep");
        hashMap2.put(10L, "Oct");
        hashMap2.put(11L, "Nov");
        hashMap2.put(12L, "Dec");
        C2708s c2708s15 = new C2708s();
        c2708s15.m868p();
        c2708s15.m866r();
        c2708s15.m869o();
        c2708s15.m875i(enumC2729a7, hashMap);
        c2708s15.m878f(", ");
        c2708s15.m870n();
        C2708s m872l4 = c2708s15.m872l(enumC2729a3, 1, 2, EnumC2688A.NOT_NEGATIVE);
        m872l4.m879e(' ');
        m872l4.m875i(enumC2729a2, hashMap2);
        m872l4.m879e(' ');
        m872l4.m873k(enumC2729a, 4);
        m872l4.m879e(' ');
        m872l4.m873k(enumC2729a4, 2);
        m872l4.m879e(':');
        m872l4.m873k(enumC2729a5, 2);
        m872l4.m869o();
        m872l4.m879e(':');
        m872l4.m873k(enumC2729a6, 2);
        m872l4.m870n();
        m872l4.m879e(' ');
        m872l4.m877g("+HHMM", "GMT");
        m872l4.m864t(EnumC2715z.SMART, c2684h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2690a(C2696g c2696g, Locale locale, C2713x c2713x, EnumC2715z enumC2715z, Set set, InterfaceC2683g interfaceC2683g, AbstractC2723n abstractC2723n) {
        this.f517a = c2696g;
        this.f518b = locale;
        this.f519c = c2713x;
        Objects.requireNonNull(enumC2715z, "resolverStyle");
        this.f520d = enumC2715z;
        this.f522f = interfaceC2683g;
        this.f523g = null;
    }

    /* renamed from: g */
    private InterfaceC2739k m902g(CharSequence charSequence, ParsePosition parsePosition) {
        String charSequence2;
        ParsePosition parsePosition2 = new ParsePosition(0);
        C2709t c2709t = new C2709t(this);
        int mo885b = this.f517a.mo885b(c2709t, charSequence, parsePosition2.getIndex());
        if (mo885b < 0) {
            parsePosition2.setErrorIndex(~mo885b);
            c2709t = null;
        } else {
            parsePosition2.setIndex(mo885b);
        }
        if (c2709t == null || parsePosition2.getErrorIndex() >= 0 || parsePosition2.getIndex() < charSequence.length()) {
            if (charSequence.length() > 64) {
                charSequence2 = charSequence.subSequence(0, 64).toString() + "...";
            } else {
                charSequence2 = charSequence.toString();
            }
            if (parsePosition2.getErrorIndex() >= 0) {
                throw new DateTimeParseException("Text '" + charSequence2 + "' could not be parsed at index " + parsePosition2.getErrorIndex(), charSequence, parsePosition2.getErrorIndex());
            }
            throw new DateTimeParseException("Text '" + charSequence2 + "' could not be parsed, unparsed text found at index " + parsePosition2.getIndex(), charSequence, parsePosition2.getIndex());
        }
        return c2709t.m844s(this.f520d, this.f521e);
    }

    /* renamed from: a */
    public String m908a(InterfaceC2739k interfaceC2739k) {
        StringBuilder sb = new StringBuilder(32);
        try {
            this.f517a.mo886a(new C2711v(interfaceC2739k, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new DateTimeException(e.getMessage(), e);
        }
    }

    /* renamed from: b */
    public InterfaceC2683g m907b() {
        return this.f522f;
    }

    /* renamed from: c */
    public C2713x m906c() {
        return this.f519c;
    }

    /* renamed from: d */
    public Locale m905d() {
        return this.f518b;
    }

    /* renamed from: e */
    public AbstractC2723n m904e() {
        return this.f523g;
    }

    /* renamed from: f */
    public Object m903f(CharSequence charSequence, InterfaceC2752x interfaceC2752x) {
        String charSequence2;
        Objects.requireNonNull(charSequence, "text");
        try {
            return ((C2714y) m902g(charSequence, null)).mo741g(interfaceC2752x);
        } catch (DateTimeParseException e) {
            throw e;
        } catch (RuntimeException e2) {
            if (charSequence.length() > 64) {
                charSequence2 = charSequence.subSequence(0, 64).toString() + "...";
            } else {
                charSequence2 = charSequence.toString();
            }
            throw new DateTimeParseException("Text '" + charSequence2 + "' could not be parsed: " + e2.getMessage(), charSequence, 0, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public C2696g m901h(boolean z) {
        return this.f517a.m899c(z);
    }

    public String toString() {
        String c2696g = this.f517a.toString();
        return c2696g.startsWith("[") ? c2696g : c2696g.substring(1, c2696g.length() - 1);
    }
}
