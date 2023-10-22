package p033j$.time.format;

import java.io.IOException;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.AbstractC2724n;
import p033j$.time.DateTimeException;
import p033j$.time.chrono.C2685h;
import p033j$.time.chrono.InterfaceC2684g;
import p033j$.time.temporal.AbstractC2738i;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2753x;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2691a {

    /* renamed from: h */
    public static final C2691a f514h;

    /* renamed from: i */
    public static final C2691a f515i;

    /* renamed from: j */
    public static final C2691a f516j;

    /* renamed from: a */
    private final C2697g f517a;

    /* renamed from: b */
    private final Locale f518b;

    /* renamed from: c */
    private final C2714x f519c;

    /* renamed from: d */
    private final EnumC2716z f520d;

    /* renamed from: e */
    private final Set f521e = null;

    /* renamed from: f */
    private final InterfaceC2684g f522f;

    /* renamed from: g */
    private final AbstractC2724n f523g;

    static {
        C2709s c2709s = new C2709s();
        EnumC2730a enumC2730a = EnumC2730a.YEAR;
        EnumC2689A enumC2689A = EnumC2689A.EXCEEDS_PAD;
        C2709s m868l = c2709s.m868l(enumC2730a, 4, 10, enumC2689A);
        m868l.m875e('-');
        EnumC2730a enumC2730a2 = EnumC2730a.MONTH_OF_YEAR;
        m868l.m869k(enumC2730a2, 2);
        m868l.m875e('-');
        EnumC2730a enumC2730a3 = EnumC2730a.DAY_OF_MONTH;
        m868l.m869k(enumC2730a3, 2);
        EnumC2716z enumC2716z = EnumC2716z.STRICT;
        C2685h c2685h = C2685h.f501a;
        C2691a m860t = m868l.m860t(enumC2716z, c2685h);
        f514h = m860t;
        C2709s c2709s2 = new C2709s();
        c2709s2.m864p();
        c2709s2.m879a(m860t);
        c2709s2.m872h();
        c2709s2.m860t(enumC2716z, c2685h);
        C2709s c2709s3 = new C2709s();
        c2709s3.m864p();
        c2709s3.m879a(m860t);
        c2709s3.m865o();
        c2709s3.m872h();
        c2709s3.m860t(enumC2716z, c2685h);
        C2709s c2709s4 = new C2709s();
        EnumC2730a enumC2730a4 = EnumC2730a.HOUR_OF_DAY;
        c2709s4.m869k(enumC2730a4, 2);
        c2709s4.m875e(':');
        EnumC2730a enumC2730a5 = EnumC2730a.MINUTE_OF_HOUR;
        c2709s4.m869k(enumC2730a5, 2);
        c2709s4.m865o();
        c2709s4.m875e(':');
        EnumC2730a enumC2730a6 = EnumC2730a.SECOND_OF_MINUTE;
        c2709s4.m869k(enumC2730a6, 2);
        c2709s4.m865o();
        c2709s4.m878b(EnumC2730a.NANO_OF_SECOND, 0, 9, true);
        C2691a m860t2 = c2709s4.m860t(enumC2716z, null);
        C2709s c2709s5 = new C2709s();
        c2709s5.m864p();
        c2709s5.m879a(m860t2);
        c2709s5.m872h();
        c2709s5.m860t(enumC2716z, null);
        C2709s c2709s6 = new C2709s();
        c2709s6.m864p();
        c2709s6.m879a(m860t2);
        c2709s6.m865o();
        c2709s6.m872h();
        c2709s6.m860t(enumC2716z, null);
        C2709s c2709s7 = new C2709s();
        c2709s7.m864p();
        c2709s7.m879a(m860t);
        c2709s7.m875e('T');
        c2709s7.m879a(m860t2);
        C2691a m860t3 = c2709s7.m860t(enumC2716z, c2685h);
        C2709s c2709s8 = new C2709s();
        c2709s8.m864p();
        c2709s8.m879a(m860t3);
        c2709s8.m872h();
        C2691a m860t4 = c2709s8.m860t(enumC2716z, c2685h);
        f515i = m860t4;
        C2709s c2709s9 = new C2709s();
        c2709s9.m879a(m860t4);
        c2709s9.m865o();
        c2709s9.m875e('[');
        c2709s9.m863q();
        c2709s9.m867m();
        c2709s9.m875e(']');
        c2709s9.m860t(enumC2716z, c2685h);
        C2709s c2709s10 = new C2709s();
        c2709s10.m879a(m860t3);
        c2709s10.m865o();
        c2709s10.m872h();
        c2709s10.m865o();
        c2709s10.m875e('[');
        c2709s10.m863q();
        c2709s10.m867m();
        c2709s10.m875e(']');
        c2709s10.m860t(enumC2716z, c2685h);
        C2709s c2709s11 = new C2709s();
        c2709s11.m864p();
        C2709s m868l2 = c2709s11.m868l(enumC2730a, 4, 10, enumC2689A);
        m868l2.m875e('-');
        m868l2.m869k(EnumC2730a.DAY_OF_YEAR, 3);
        m868l2.m865o();
        m868l2.m872h();
        m868l2.m860t(enumC2716z, c2685h);
        C2709s c2709s12 = new C2709s();
        c2709s12.m864p();
        C2709s m868l3 = c2709s12.m868l(AbstractC2738i.f638c, 4, 10, enumC2689A);
        m868l3.m874f("-W");
        m868l3.m869k(AbstractC2738i.f637b, 2);
        m868l3.m875e('-');
        EnumC2730a enumC2730a7 = EnumC2730a.DAY_OF_WEEK;
        m868l3.m869k(enumC2730a7, 1);
        m868l3.m865o();
        m868l3.m872h();
        m868l3.m860t(enumC2716z, c2685h);
        C2709s c2709s13 = new C2709s();
        c2709s13.m864p();
        c2709s13.m877c();
        f516j = c2709s13.m860t(enumC2716z, null);
        C2709s c2709s14 = new C2709s();
        c2709s14.m864p();
        c2709s14.m869k(enumC2730a, 4);
        c2709s14.m869k(enumC2730a2, 2);
        c2709s14.m869k(enumC2730a3, 2);
        c2709s14.m865o();
        c2709s14.m873g("+HHMMss", "Z");
        c2709s14.m860t(enumC2716z, c2685h);
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
        C2709s c2709s15 = new C2709s();
        c2709s15.m864p();
        c2709s15.m862r();
        c2709s15.m865o();
        c2709s15.m871i(enumC2730a7, hashMap);
        c2709s15.m874f(", ");
        c2709s15.m866n();
        C2709s m868l4 = c2709s15.m868l(enumC2730a3, 1, 2, EnumC2689A.NOT_NEGATIVE);
        m868l4.m875e(' ');
        m868l4.m871i(enumC2730a2, hashMap2);
        m868l4.m875e(' ');
        m868l4.m869k(enumC2730a, 4);
        m868l4.m875e(' ');
        m868l4.m869k(enumC2730a4, 2);
        m868l4.m875e(':');
        m868l4.m869k(enumC2730a5, 2);
        m868l4.m865o();
        m868l4.m875e(':');
        m868l4.m869k(enumC2730a6, 2);
        m868l4.m866n();
        m868l4.m875e(' ');
        m868l4.m873g("+HHMM", "GMT");
        m868l4.m860t(EnumC2716z.SMART, c2685h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2691a(C2697g c2697g, Locale locale, C2714x c2714x, EnumC2716z enumC2716z, Set set, InterfaceC2684g interfaceC2684g, AbstractC2724n abstractC2724n) {
        this.f517a = c2697g;
        this.f518b = locale;
        this.f519c = c2714x;
        Objects.requireNonNull(enumC2716z, "resolverStyle");
        this.f520d = enumC2716z;
        this.f522f = interfaceC2684g;
        this.f523g = null;
    }

    /* renamed from: g */
    private InterfaceC2740k m898g(CharSequence charSequence, ParsePosition parsePosition) {
        String charSequence2;
        ParsePosition parsePosition2 = new ParsePosition(0);
        C2710t c2710t = new C2710t(this);
        int mo881b = this.f517a.mo881b(c2710t, charSequence, parsePosition2.getIndex());
        if (mo881b < 0) {
            parsePosition2.setErrorIndex(~mo881b);
            c2710t = null;
        } else {
            parsePosition2.setIndex(mo881b);
        }
        if (c2710t == null || parsePosition2.getErrorIndex() >= 0 || parsePosition2.getIndex() < charSequence.length()) {
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
        return c2710t.m840s(this.f520d, this.f521e);
    }

    /* renamed from: a */
    public String m904a(InterfaceC2740k interfaceC2740k) {
        StringBuilder sb = new StringBuilder(32);
        try {
            this.f517a.mo882a(new C2712v(interfaceC2740k, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new DateTimeException(e.getMessage(), e);
        }
    }

    /* renamed from: b */
    public InterfaceC2684g m903b() {
        return this.f522f;
    }

    /* renamed from: c */
    public C2714x m902c() {
        return this.f519c;
    }

    /* renamed from: d */
    public Locale m901d() {
        return this.f518b;
    }

    /* renamed from: e */
    public AbstractC2724n m900e() {
        return this.f523g;
    }

    /* renamed from: f */
    public Object m899f(CharSequence charSequence, InterfaceC2753x interfaceC2753x) {
        String charSequence2;
        Objects.requireNonNull(charSequence, "text");
        try {
            return ((C2715y) m898g(charSequence, null)).mo737g(interfaceC2753x);
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
    public C2697g m897h(boolean z) {
        return this.f517a.m895c(z);
    }

    public String toString() {
        String c2697g = this.f517a.toString();
        return c2697g.startsWith("[") ? c2697g : c2697g.substring(1, c2697g.length() - 1);
    }
}
