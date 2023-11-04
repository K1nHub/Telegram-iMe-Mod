package p033j$.time.format;

import p033j$.lang.AbstractC2673d;
import p033j$.time.C2692f;
import p033j$.time.C2729o;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2744k;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
public final class C2704j implements InterfaceC2702h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2704j(int i) {
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: a */
    public boolean mo883a(C2716v c2716v, StringBuilder sb) {
        Long m836e = c2716v.m836e(EnumC2734a.INSTANT_SECONDS);
        InterfaceC2744k m837d = c2716v.m837d();
        EnumC2734a enumC2734a = EnumC2734a.NANO_OF_SECOND;
        Long valueOf = m837d.mo737i(enumC2734a) ? Long.valueOf(c2716v.m837d().mo739e(enumC2734a)) : null;
        int i = 0;
        if (m836e == null) {
            return false;
        }
        long longValue = m836e.longValue();
        int m754i = enumC2734a.m754i(valueOf != null ? valueOf.longValue() : 0L);
        if (longValue >= -62167219200L) {
            long j = (longValue - 315569520000L) + 62167219200L;
            long m988e = AbstractC2673d.m988e(j, 315569520000L) + 1;
            C2692f m912u = C2692f.m912u(AbstractC2673d.m989d(j, 315569520000L) - 62167219200L, 0, C2729o.f610e);
            if (m988e > 0) {
                sb.append('+');
                sb.append(m988e);
            }
            sb.append(m912u);
            if (m912u.m919n() == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = longValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            C2692f m912u2 = C2692f.m912u(j4 - 62167219200L, 0, C2729o.f610e);
            int length = sb.length();
            sb.append(m912u2);
            if (m912u2.m919n() == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (m912u2.m918o() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (m754i > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (m754i <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = m754i / i2;
                sb.append((char) (i3 + 48));
                m754i -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: b */
    public int mo882b(C2714t c2714t, CharSequence charSequence, int i) {
        int i2;
        int i3;
        C2713s c2713s = new C2713s();
        c2713s.m880a(C2695a.f514h);
        c2713s.m876e('T');
        EnumC2734a enumC2734a = EnumC2734a.HOUR_OF_DAY;
        c2713s.m870k(enumC2734a, 2);
        c2713s.m876e(':');
        EnumC2734a enumC2734a2 = EnumC2734a.MINUTE_OF_HOUR;
        c2713s.m870k(enumC2734a2, 2);
        c2713s.m876e(':');
        EnumC2734a enumC2734a3 = EnumC2734a.SECOND_OF_MINUTE;
        c2713s.m870k(enumC2734a3, 2);
        EnumC2734a enumC2734a4 = EnumC2734a.NANO_OF_SECOND;
        int i4 = 0;
        c2713s.m879b(enumC2734a4, 0, 9, true);
        c2713s.m876e('Z');
        C2701g m898h = c2713s.m862s().m898h(false);
        C2714t m857c = c2714t.m857c();
        int mo882b = m898h.mo882b(m857c, charSequence, i);
        if (mo882b < 0) {
            return mo882b;
        }
        long longValue = m857c.m851i(EnumC2734a.YEAR).longValue();
        int intValue = m857c.m851i(EnumC2734a.MONTH_OF_YEAR).intValue();
        int intValue2 = m857c.m851i(EnumC2734a.DAY_OF_MONTH).intValue();
        int intValue3 = m857c.m851i(enumC2734a).intValue();
        int intValue4 = m857c.m851i(enumC2734a2).intValue();
        Long m851i = m857c.m851i(enumC2734a3);
        Long m851i2 = m857c.m851i(enumC2734a4);
        int intValue5 = m851i != null ? m851i.intValue() : 0;
        int intValue6 = m851i2 != null ? m851i2.intValue() : 0;
        if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
            i2 = 0;
            i3 = intValue5;
            i4 = 1;
        } else if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
            c2714t.m845o();
            i2 = intValue3;
            i3 = 59;
        } else {
            i2 = intValue3;
            i3 = intValue5;
        }
        try {
            return c2714t.m846n(enumC2734a4, intValue6, i, c2714t.m846n(EnumC2734a.INSTANT_SECONDS, AbstractC2673d.m987f(longValue / 10000, 315569520000L) + C2692f.m914s(((int) longValue) % 10000, intValue, intValue2, i2, intValue4, i3, 0).m910w(i4).m930A(C2729o.f610e), i, mo882b));
        } catch (RuntimeException unused) {
            return ~i;
        }
    }

    public String toString() {
        return "Instant()";
    }
}
