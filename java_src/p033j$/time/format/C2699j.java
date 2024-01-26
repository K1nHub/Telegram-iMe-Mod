package p033j$.time.format;

import p033j$.lang.AbstractC2668d;
import p033j$.time.C2687f;
import p033j$.time.C2724o;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2739k;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
public final class C2699j implements InterfaceC2697h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2699j(int i) {
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: a */
    public boolean mo886a(C2711v c2711v, StringBuilder sb) {
        Long m839e = c2711v.m839e(EnumC2729a.INSTANT_SECONDS);
        InterfaceC2739k m840d = c2711v.m840d();
        EnumC2729a enumC2729a = EnumC2729a.NANO_OF_SECOND;
        Long valueOf = m840d.mo740i(enumC2729a) ? Long.valueOf(c2711v.m840d().mo742e(enumC2729a)) : null;
        int i = 0;
        if (m839e == null) {
            return false;
        }
        long longValue = m839e.longValue();
        int m757i = enumC2729a.m757i(valueOf != null ? valueOf.longValue() : 0L);
        if (longValue >= -62167219200L) {
            long j = (longValue - 315569520000L) + 62167219200L;
            long m991e = AbstractC2668d.m991e(j, 315569520000L) + 1;
            C2687f m915u = C2687f.m915u(AbstractC2668d.m992d(j, 315569520000L) - 62167219200L, 0, C2724o.f610e);
            if (m991e > 0) {
                sb.append('+');
                sb.append(m991e);
            }
            sb.append(m915u);
            if (m915u.m922n() == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = longValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            C2687f m915u2 = C2687f.m915u(j4 - 62167219200L, 0, C2724o.f610e);
            int length = sb.length();
            sb.append(m915u2);
            if (m915u2.m922n() == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (m915u2.m921o() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (m757i > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (m757i <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = m757i / i2;
                sb.append((char) (i3 + 48));
                m757i -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: b */
    public int mo885b(C2709t c2709t, CharSequence charSequence, int i) {
        int i2;
        int i3;
        C2708s c2708s = new C2708s();
        c2708s.m883a(C2690a.f514h);
        c2708s.m879e('T');
        EnumC2729a enumC2729a = EnumC2729a.HOUR_OF_DAY;
        c2708s.m873k(enumC2729a, 2);
        c2708s.m879e(':');
        EnumC2729a enumC2729a2 = EnumC2729a.MINUTE_OF_HOUR;
        c2708s.m873k(enumC2729a2, 2);
        c2708s.m879e(':');
        EnumC2729a enumC2729a3 = EnumC2729a.SECOND_OF_MINUTE;
        c2708s.m873k(enumC2729a3, 2);
        EnumC2729a enumC2729a4 = EnumC2729a.NANO_OF_SECOND;
        int i4 = 0;
        c2708s.m882b(enumC2729a4, 0, 9, true);
        c2708s.m879e('Z');
        C2696g m901h = c2708s.m865s().m901h(false);
        C2709t m860c = c2709t.m860c();
        int mo885b = m901h.mo885b(m860c, charSequence, i);
        if (mo885b < 0) {
            return mo885b;
        }
        long longValue = m860c.m854i(EnumC2729a.YEAR).longValue();
        int intValue = m860c.m854i(EnumC2729a.MONTH_OF_YEAR).intValue();
        int intValue2 = m860c.m854i(EnumC2729a.DAY_OF_MONTH).intValue();
        int intValue3 = m860c.m854i(enumC2729a).intValue();
        int intValue4 = m860c.m854i(enumC2729a2).intValue();
        Long m854i = m860c.m854i(enumC2729a3);
        Long m854i2 = m860c.m854i(enumC2729a4);
        int intValue5 = m854i != null ? m854i.intValue() : 0;
        int intValue6 = m854i2 != null ? m854i2.intValue() : 0;
        if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
            i2 = 0;
            i3 = intValue5;
            i4 = 1;
        } else if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
            c2709t.m848o();
            i2 = intValue3;
            i3 = 59;
        } else {
            i2 = intValue3;
            i3 = intValue5;
        }
        try {
            return c2709t.m849n(enumC2729a4, intValue6, i, c2709t.m849n(EnumC2729a.INSTANT_SECONDS, AbstractC2668d.m990f(longValue / 10000, 315569520000L) + C2687f.m917s(((int) longValue) % 10000, intValue, intValue2, i2, intValue4, i3, 0).m913w(i4).m933A(C2724o.f610e), i, mo885b));
        } catch (RuntimeException unused) {
            return ~i;
        }
    }

    public String toString() {
        return "Instant()";
    }
}
