package p033j$.time.format;

import java.io.IOException;
import java.text.ParsePosition;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p033j$.time.AbstractC2728n;
import p033j$.time.DateTimeException;
import p033j$.time.chrono.C2689h;
import p033j$.time.chrono.InterfaceC2688g;
import p033j$.time.temporal.AbstractC2742i;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2757x;
/* renamed from: j$.time.format.a */
/* loaded from: classes2.dex */
public final class C2695a {

    /* renamed from: h */
    public static final C2695a f514h;

    /* renamed from: i */
    public static final C2695a f515i;

    /* renamed from: j */
    public static final C2695a f516j;

    /* renamed from: a */
    private final C2701g f517a;

    /* renamed from: b */
    private final Locale f518b;

    /* renamed from: c */
    private final C2718x f519c;

    /* renamed from: d */
    private final EnumC2720z f520d;

    /* renamed from: e */
    private final Set f521e = null;

    /* renamed from: f */
    private final InterfaceC2688g f522f;

    /* renamed from: g */
    private final AbstractC2728n f523g;

    static {
        C2713s c2713s = new C2713s();
        EnumC2734a enumC2734a = EnumC2734a.YEAR;
        EnumC2693A enumC2693A = EnumC2693A.EXCEEDS_PAD;
        C2713s m869l = c2713s.m869l(enumC2734a, 4, 10, enumC2693A);
        m869l.m876e('-');
        EnumC2734a enumC2734a2 = EnumC2734a.MONTH_OF_YEAR;
        m869l.m870k(enumC2734a2, 2);
        m869l.m876e('-');
        EnumC2734a enumC2734a3 = EnumC2734a.DAY_OF_MONTH;
        m869l.m870k(enumC2734a3, 2);
        EnumC2720z enumC2720z = EnumC2720z.STRICT;
        C2689h c2689h = C2689h.f501a;
        C2695a m861t = m869l.m861t(enumC2720z, c2689h);
        f514h = m861t;
        C2713s c2713s2 = new C2713s();
        c2713s2.m865p();
        c2713s2.m880a(m861t);
        c2713s2.m873h();
        c2713s2.m861t(enumC2720z, c2689h);
        C2713s c2713s3 = new C2713s();
        c2713s3.m865p();
        c2713s3.m880a(m861t);
        c2713s3.m866o();
        c2713s3.m873h();
        c2713s3.m861t(enumC2720z, c2689h);
        C2713s c2713s4 = new C2713s();
        EnumC2734a enumC2734a4 = EnumC2734a.HOUR_OF_DAY;
        c2713s4.m870k(enumC2734a4, 2);
        c2713s4.m876e(':');
        EnumC2734a enumC2734a5 = EnumC2734a.MINUTE_OF_HOUR;
        c2713s4.m870k(enumC2734a5, 2);
        c2713s4.m866o();
        c2713s4.m876e(':');
        EnumC2734a enumC2734a6 = EnumC2734a.SECOND_OF_MINUTE;
        c2713s4.m870k(enumC2734a6, 2);
        c2713s4.m866o();
        c2713s4.m879b(EnumC2734a.NANO_OF_SECOND, 0, 9, true);
        C2695a m861t2 = c2713s4.m861t(enumC2720z, null);
        C2713s c2713s5 = new C2713s();
        c2713s5.m865p();
        c2713s5.m880a(m861t2);
        c2713s5.m873h();
        c2713s5.m861t(enumC2720z, null);
        C2713s c2713s6 = new C2713s();
        c2713s6.m865p();
        c2713s6.m880a(m861t2);
        c2713s6.m866o();
        c2713s6.m873h();
        c2713s6.m861t(enumC2720z, null);
        C2713s c2713s7 = new C2713s();
        c2713s7.m865p();
        c2713s7.m880a(m861t);
        c2713s7.m876e('T');
        c2713s7.m880a(m861t2);
        C2695a m861t3 = c2713s7.m861t(enumC2720z, c2689h);
        C2713s c2713s8 = new C2713s();
        c2713s8.m865p();
        c2713s8.m880a(m861t3);
        c2713s8.m873h();
        C2695a m861t4 = c2713s8.m861t(enumC2720z, c2689h);
        f515i = m861t4;
        C2713s c2713s9 = new C2713s();
        c2713s9.m880a(m861t4);
        c2713s9.m866o();
        c2713s9.m876e('[');
        c2713s9.m864q();
        c2713s9.m868m();
        c2713s9.m876e(']');
        c2713s9.m861t(enumC2720z, c2689h);
        C2713s c2713s10 = new C2713s();
        c2713s10.m880a(m861t3);
        c2713s10.m866o();
        c2713s10.m873h();
        c2713s10.m866o();
        c2713s10.m876e('[');
        c2713s10.m864q();
        c2713s10.m868m();
        c2713s10.m876e(']');
        c2713s10.m861t(enumC2720z, c2689h);
        C2713s c2713s11 = new C2713s();
        c2713s11.m865p();
        C2713s m869l2 = c2713s11.m869l(enumC2734a, 4, 10, enumC2693A);
        m869l2.m876e('-');
        m869l2.m870k(EnumC2734a.DAY_OF_YEAR, 3);
        m869l2.m866o();
        m869l2.m873h();
        m869l2.m861t(enumC2720z, c2689h);
        C2713s c2713s12 = new C2713s();
        c2713s12.m865p();
        C2713s m869l3 = c2713s12.m869l(AbstractC2742i.f638c, 4, 10, enumC2693A);
        m869l3.m875f("-W");
        m869l3.m870k(AbstractC2742i.f637b, 2);
        m869l3.m876e('-');
        EnumC2734a enumC2734a7 = EnumC2734a.DAY_OF_WEEK;
        m869l3.m870k(enumC2734a7, 1);
        m869l3.m866o();
        m869l3.m873h();
        m869l3.m861t(enumC2720z, c2689h);
        C2713s c2713s13 = new C2713s();
        c2713s13.m865p();
        c2713s13.m878c();
        f516j = c2713s13.m861t(enumC2720z, null);
        C2713s c2713s14 = new C2713s();
        c2713s14.m865p();
        c2713s14.m870k(enumC2734a, 4);
        c2713s14.m870k(enumC2734a2, 2);
        c2713s14.m870k(enumC2734a3, 2);
        c2713s14.m866o();
        c2713s14.m874g("+HHMMss", "Z");
        c2713s14.m861t(enumC2720z, c2689h);
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
        C2713s c2713s15 = new C2713s();
        c2713s15.m865p();
        c2713s15.m863r();
        c2713s15.m866o();
        c2713s15.m872i(enumC2734a7, hashMap);
        c2713s15.m875f(", ");
        c2713s15.m867n();
        C2713s m869l4 = c2713s15.m869l(enumC2734a3, 1, 2, EnumC2693A.NOT_NEGATIVE);
        m869l4.m876e(' ');
        m869l4.m872i(enumC2734a2, hashMap2);
        m869l4.m876e(' ');
        m869l4.m870k(enumC2734a, 4);
        m869l4.m876e(' ');
        m869l4.m870k(enumC2734a4, 2);
        m869l4.m876e(':');
        m869l4.m870k(enumC2734a5, 2);
        m869l4.m866o();
        m869l4.m876e(':');
        m869l4.m870k(enumC2734a6, 2);
        m869l4.m867n();
        m869l4.m876e(' ');
        m869l4.m874g("+HHMM", "GMT");
        m869l4.m861t(EnumC2720z.SMART, c2689h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2695a(C2701g c2701g, Locale locale, C2718x c2718x, EnumC2720z enumC2720z, Set set, InterfaceC2688g interfaceC2688g, AbstractC2728n abstractC2728n) {
        this.f517a = c2701g;
        this.f518b = locale;
        this.f519c = c2718x;
        Objects.requireNonNull(enumC2720z, "resolverStyle");
        this.f520d = enumC2720z;
        this.f522f = interfaceC2688g;
        this.f523g = null;
    }

    /* renamed from: g */
    private InterfaceC2744k m899g(CharSequence charSequence, ParsePosition parsePosition) {
        String charSequence2;
        ParsePosition parsePosition2 = new ParsePosition(0);
        C2714t c2714t = new C2714t(this);
        int mo882b = this.f517a.mo882b(c2714t, charSequence, parsePosition2.getIndex());
        if (mo882b < 0) {
            parsePosition2.setErrorIndex(~mo882b);
            c2714t = null;
        } else {
            parsePosition2.setIndex(mo882b);
        }
        if (c2714t == null || parsePosition2.getErrorIndex() >= 0 || parsePosition2.getIndex() < charSequence.length()) {
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
        return c2714t.m841s(this.f520d, this.f521e);
    }

    /* renamed from: a */
    public String m905a(InterfaceC2744k interfaceC2744k) {
        StringBuilder sb = new StringBuilder(32);
        try {
            this.f517a.mo883a(new C2716v(interfaceC2744k, this), sb);
            return sb.toString();
        } catch (IOException e) {
            throw new DateTimeException(e.getMessage(), e);
        }
    }

    /* renamed from: b */
    public InterfaceC2688g m904b() {
        return this.f522f;
    }

    /* renamed from: c */
    public C2718x m903c() {
        return this.f519c;
    }

    /* renamed from: d */
    public Locale m902d() {
        return this.f518b;
    }

    /* renamed from: e */
    public AbstractC2728n m901e() {
        return this.f523g;
    }

    /* renamed from: f */
    public Object m900f(CharSequence charSequence, InterfaceC2757x interfaceC2757x) {
        String charSequence2;
        Objects.requireNonNull(charSequence, "text");
        try {
            return ((C2719y) m899g(charSequence, null)).mo738g(interfaceC2757x);
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
    public C2701g m898h(boolean z) {
        return this.f517a.m896c(z);
    }

    public String toString() {
        String c2701g = this.f517a.toString();
        return c2701g.startsWith("[") ? c2701g : c2701g.substring(1, c2701g.length() - 1);
    }
}
