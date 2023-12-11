package p033j$.time.format;

import java.io.IOException;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.AbstractC2725n;
import p033j$.time.DateTimeException;
import p033j$.time.chrono.C2686h;
import p033j$.time.chrono.InterfaceC2685g;
import p033j$.time.temporal.AbstractC2739i;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2741k;
import p033j$.time.temporal.InterfaceC2754x;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2692a {

    /* renamed from: h */
    public static final C2692a f514h;

    /* renamed from: i */
    public static final C2692a f515i;

    /* renamed from: j */
    public static final C2692a f516j;

    /* renamed from: a */
    private final C2698g f517a;

    /* renamed from: b */
    private final Locale f518b;

    /* renamed from: c */
    private final C2715x f519c;

    /* renamed from: d */
    private final EnumC2717z f520d;

    /* renamed from: e */
    private final Set f521e = null;

    /* renamed from: f */
    private final InterfaceC2685g f522f;

    /* renamed from: g */
    private final AbstractC2725n f523g;

    static {
        C2710s c2710s = new C2710s();
        EnumC2731a enumC2731a = EnumC2731a.YEAR;
        EnumC2690A enumC2690A = EnumC2690A.EXCEEDS_PAD;
        C2710s m869l = c2710s.m869l(enumC2731a, 4, 10, enumC2690A);
        m869l.m876e('-');
        EnumC2731a enumC2731a2 = EnumC2731a.MONTH_OF_YEAR;
        m869l.m870k(enumC2731a2, 2);
        m869l.m876e('-');
        EnumC2731a enumC2731a3 = EnumC2731a.DAY_OF_MONTH;
        m869l.m870k(enumC2731a3, 2);
        EnumC2717z enumC2717z = EnumC2717z.STRICT;
        C2686h c2686h = C2686h.f501a;
        C2692a m861t = m869l.m861t(enumC2717z, c2686h);
        f514h = m861t;
        C2710s c2710s2 = new C2710s();
        c2710s2.m865p();
        c2710s2.m880a(m861t);
        c2710s2.m873h();
        c2710s2.m861t(enumC2717z, c2686h);
        C2710s c2710s3 = new C2710s();
        c2710s3.m865p();
        c2710s3.m880a(m861t);
        c2710s3.m866o();
        c2710s3.m873h();
        c2710s3.m861t(enumC2717z, c2686h);
        C2710s c2710s4 = new C2710s();
        EnumC2731a enumC2731a4 = EnumC2731a.HOUR_OF_DAY;
        c2710s4.m870k(enumC2731a4, 2);
        c2710s4.m876e(':');
        EnumC2731a enumC2731a5 = EnumC2731a.MINUTE_OF_HOUR;
        c2710s4.m870k(enumC2731a5, 2);
        c2710s4.m866o();
        c2710s4.m876e(':');
        EnumC2731a enumC2731a6 = EnumC2731a.SECOND_OF_MINUTE;
        c2710s4.m870k(enumC2731a6, 2);
        c2710s4.m866o();
        c2710s4.m879b(EnumC2731a.NANO_OF_SECOND, 0, 9, true);
        C2692a m861t2 = c2710s4.m861t(enumC2717z, null);
        C2710s c2710s5 = new C2710s();
        c2710s5.m865p();
        c2710s5.m880a(m861t2);
        c2710s5.m873h();
        c2710s5.m861t(enumC2717z, null);
        C2710s c2710s6 = new C2710s();
        c2710s6.m865p();
        c2710s6.m880a(m861t2);
        c2710s6.m866o();
        c2710s6.m873h();
        c2710s6.m861t(enumC2717z, null);
        C2710s c2710s7 = new C2710s();
        c2710s7.m865p();
        c2710s7.m880a(m861t);
        c2710s7.m876e('T');
        c2710s7.m880a(m861t2);
        C2692a m861t3 = c2710s7.m861t(enumC2717z, c2686h);
        C2710s c2710s8 = new C2710s();
        c2710s8.m865p();
        c2710s8.m880a(m861t3);
        c2710s8.m873h();
        C2692a m861t4 = c2710s8.m861t(enumC2717z, c2686h);
        f515i = m861t4;
        C2710s c2710s9 = new C2710s();
        c2710s9.m880a(m861t4);
        c2710s9.m866o();
        c2710s9.m876e('[');
        c2710s9.m864q();
        c2710s9.m868m();
        c2710s9.m876e(']');
        c2710s9.m861t(enumC2717z, c2686h);
        C2710s c2710s10 = new C2710s();
        c2710s10.m880a(m861t3);
        c2710s10.m866o();
        c2710s10.m873h();
        c2710s10.m866o();
        c2710s10.m876e('[');
        c2710s10.m864q();
        c2710s10.m868m();
        c2710s10.m876e(']');
        c2710s10.m861t(enumC2717z, c2686h);
        C2710s c2710s11 = new C2710s();
        c2710s11.m865p();
        C2710s m869l2 = c2710s11.m869l(enumC2731a, 4, 10, enumC2690A);
        m869l2.m876e('-');
        m869l2.m870k(EnumC2731a.DAY_OF_YEAR, 3);
        m869l2.m866o();
        m869l2.m873h();
        m869l2.m861t(enumC2717z, c2686h);
        C2710s c2710s12 = new C2710s();
        c2710s12.m865p();
        C2710s m869l3 = c2710s12.m869l(AbstractC2739i.f638c, 4, 10, enumC2690A);
        m869l3.m875f("-W");
        m869l3.m870k(AbstractC2739i.f637b, 2);
        m869l3.m876e('-');
        EnumC2731a enumC2731a7 = EnumC2731a.DAY_OF_WEEK;
        m869l3.m870k(enumC2731a7, 1);
        m869l3.m866o();
        m869l3.m873h();
        m869l3.m861t(enumC2717z, c2686h);
        C2710s c2710s13 = new C2710s();
        c2710s13.m865p();
        c2710s13.m878c();
        f516j = c2710s13.m861t(enumC2717z, null);
        C2710s c2710s14 = new C2710s();
        c2710s14.m865p();
        c2710s14.m870k(enumC2731a, 4);
        c2710s14.m870k(enumC2731a2, 2);
        c2710s14.m870k(enumC2731a3, 2);
        c2710s14.m866o();
        c2710s14.m874g("+HHMMss", "Z");
        c2710s14.m861t(enumC2717z, c2686h);
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
        C2710s c2710s15 = new C2710s();
        c2710s15.m865p();
        c2710s15.m863r();
        c2710s15.m866o();
        c2710s15.m872i(enumC2731a7, hashMap);
        c2710s15.m875f(", ");
        c2710s15.m867n();
        C2710s m869l4 = c2710s15.m869l(enumC2731a3, 1, 2, EnumC2690A.NOT_NEGATIVE);
        m869l4.m876e(' ');
        m869l4.m872i(enumC2731a2, hashMap2);
        m869l4.m876e(' ');
        m869l4.m870k(enumC2731a, 4);
        m869l4.m876e(' ');
        m869l4.m870k(enumC2731a4, 2);
        m869l4.m876e(':');
        m869l4.m870k(enumC2731a5, 2);
        m869l4.m866o();
        m869l4.m876e(':');
        m869l4.m870k(enumC2731a6, 2);
        m869l4.m867n();
        m869l4.m876e(' ');
        m869l4.m874g("+HHMM", "GMT");
        m869l4.m861t(EnumC2717z.SMART, c2686h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2692a(C2698g c2698g, Locale locale, C2715x c2715x, EnumC2717z enumC2717z, Set set, InterfaceC2685g interfaceC2685g, AbstractC2725n abstractC2725n) {
        this.f517a = c2698g;
        this.f518b = locale;
        this.f519c = c2715x;
        Objects.requireNonNull(enumC2717z, "resolverStyle");
        this.f520d = enumC2717z;
        this.f522f = interfaceC2685g;
        this.f523g = null;
    }

    /* renamed from: g */
    private InterfaceC2741k m899g(CharSequence charSequence, ParsePosition parsePosition) {
        String charSequence2;
        ParsePosition parsePosition2 = new ParsePosition(0);
        C2711t c2711t = new C2711t(this);
        int mo882b = this.f517a.mo882b(c2711t, charSequence, parsePosition2.getIndex());
        if (mo882b < 0) {
            parsePosition2.setErrorIndex(~mo882b);
            c2711t = null;
        } else {
            parsePosition2.setIndex(mo882b);
        }
        if (c2711t == null || parsePosition2.getErrorIndex() >= 0 || parsePosition2.getIndex() < charSequence.length()) {
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
        return c2711t.m841s(this.f520d, this.f521e);
    }

    /* renamed from: a */
    public String m905a(InterfaceC2741k interfaceC2741k) {
        StringBuilder sb = new StringBuilder(32);
        try {
            this.f517a.mo883a(new C2713v(interfaceC2741k, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new DateTimeException(e.getMessage(), e);
        }
    }

    /* renamed from: b */
    public InterfaceC2685g m904b() {
        return this.f522f;
    }

    /* renamed from: c */
    public C2715x m903c() {
        return this.f519c;
    }

    /* renamed from: d */
    public Locale m902d() {
        return this.f518b;
    }

    /* renamed from: e */
    public AbstractC2725n m901e() {
        return this.f523g;
    }

    /* renamed from: f */
    public Object m900f(CharSequence charSequence, InterfaceC2754x interfaceC2754x) {
        String charSequence2;
        Objects.requireNonNull(charSequence, "text");
        try {
            return ((C2716y) m899g(charSequence, null)).mo738g(interfaceC2754x);
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
    public C2698g m898h(boolean z) {
        return this.f517a.m896c(z);
    }

    public String toString() {
        String c2698g = this.f517a.toString();
        return c2698g.startsWith("[") ? c2698g : c2698g.substring(1, c2698g.length() - 1);
    }
}
