package p033j$.time.format;

import p033j$.lang.AbstractC2670d;
import p033j$.time.C2689f;
import p033j$.time.C2726o;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2741k;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
public final class C2701j implements InterfaceC2699h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2701j(int i) {
    }

    @Override // p033j$.time.format.InterfaceC2699h
    /* renamed from: a */
    public boolean mo883a(C2713v c2713v, StringBuilder sb) {
        Long m836e = c2713v.m836e(EnumC2731a.INSTANT_SECONDS);
        InterfaceC2741k m837d = c2713v.m837d();
        EnumC2731a enumC2731a = EnumC2731a.NANO_OF_SECOND;
        Long valueOf = m837d.mo737i(enumC2731a) ? Long.valueOf(c2713v.m837d().mo739e(enumC2731a)) : null;
        int i = 0;
        if (m836e == null) {
            return false;
        }
        long longValue = m836e.longValue();
        int m754i = enumC2731a.m754i(valueOf != null ? valueOf.longValue() : 0L);
        if (longValue >= -62167219200L) {
            long j = (longValue - 315569520000L) + 62167219200L;
            long m988e = AbstractC2670d.m988e(j, 315569520000L) + 1;
            C2689f m912u = C2689f.m912u(AbstractC2670d.m989d(j, 315569520000L) - 62167219200L, 0, C2726o.f610e);
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
            C2689f m912u2 = C2689f.m912u(j4 - 62167219200L, 0, C2726o.f610e);
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

    @Override // p033j$.time.format.InterfaceC2699h
    /* renamed from: b */
    public int mo882b(C2711t c2711t, CharSequence charSequence, int i) {
        int i2;
        int i3;
        C2710s c2710s = new C2710s();
        c2710s.m880a(C2692a.f514h);
        c2710s.m876e('T');
        EnumC2731a enumC2731a = EnumC2731a.HOUR_OF_DAY;
        c2710s.m870k(enumC2731a, 2);
        c2710s.m876e(':');
        EnumC2731a enumC2731a2 = EnumC2731a.MINUTE_OF_HOUR;
        c2710s.m870k(enumC2731a2, 2);
        c2710s.m876e(':');
        EnumC2731a enumC2731a3 = EnumC2731a.SECOND_OF_MINUTE;
        c2710s.m870k(enumC2731a3, 2);
        EnumC2731a enumC2731a4 = EnumC2731a.NANO_OF_SECOND;
        int i4 = 0;
        c2710s.m879b(enumC2731a4, 0, 9, true);
        c2710s.m876e('Z');
        C2698g m898h = c2710s.m862s().m898h(false);
        C2711t m857c = c2711t.m857c();
        int mo882b = m898h.mo882b(m857c, charSequence, i);
        if (mo882b < 0) {
            return mo882b;
        }
        long longValue = m857c.m851i(EnumC2731a.YEAR).longValue();
        int intValue = m857c.m851i(EnumC2731a.MONTH_OF_YEAR).intValue();
        int intValue2 = m857c.m851i(EnumC2731a.DAY_OF_MONTH).intValue();
        int intValue3 = m857c.m851i(enumC2731a).intValue();
        int intValue4 = m857c.m851i(enumC2731a2).intValue();
        Long m851i = m857c.m851i(enumC2731a3);
        Long m851i2 = m857c.m851i(enumC2731a4);
        int intValue5 = m851i != null ? m851i.intValue() : 0;
        int intValue6 = m851i2 != null ? m851i2.intValue() : 0;
        if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
            i2 = 0;
            i3 = intValue5;
            i4 = 1;
        } else if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
            c2711t.m845o();
            i2 = intValue3;
            i3 = 59;
        } else {
            i2 = intValue3;
            i3 = intValue5;
        }
        try {
            return c2711t.m846n(enumC2731a4, intValue6, i, c2711t.m846n(EnumC2731a.INSTANT_SECONDS, AbstractC2670d.m987f(longValue / 10000, 315569520000L) + C2689f.m914s(((int) longValue) % 10000, intValue, intValue2, i2, intValue4, i3, 0).m910w(i4).m930A(C2726o.f610e), i, mo882b));
        } catch (RuntimeException unused) {
            return ~i;
        }
    }

    public String toString() {
        return "Instant()";
    }
}
