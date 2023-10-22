package p033j$.time.format;

import p033j$.lang.AbstractC2669d;
import p033j$.time.C2688f;
import p033j$.time.C2725o;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2740k;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
public final class C2700j implements InterfaceC2698h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2700j(int i) {
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: a */
    public boolean mo882a(C2712v c2712v, StringBuilder sb) {
        Long m835e = c2712v.m835e(EnumC2730a.INSTANT_SECONDS);
        InterfaceC2740k m836d = c2712v.m836d();
        EnumC2730a enumC2730a = EnumC2730a.NANO_OF_SECOND;
        Long valueOf = m836d.mo736i(enumC2730a) ? Long.valueOf(c2712v.m836d().mo738e(enumC2730a)) : null;
        int i = 0;
        if (m835e == null) {
            return false;
        }
        long longValue = m835e.longValue();
        int m753i = enumC2730a.m753i(valueOf != null ? valueOf.longValue() : 0L);
        if (longValue >= -62167219200L) {
            long j = (longValue - 315569520000L) + 62167219200L;
            long m987e = AbstractC2669d.m987e(j, 315569520000L) + 1;
            C2688f m911u = C2688f.m911u(AbstractC2669d.m988d(j, 315569520000L) - 62167219200L, 0, C2725o.f610e);
            if (m987e > 0) {
                sb.append('+');
                sb.append(m987e);
            }
            sb.append(m911u);
            if (m911u.m918n() == 0) {
                sb.append(":00");
            }
        } else {
            long j2 = longValue + 62167219200L;
            long j3 = j2 / 315569520000L;
            long j4 = j2 % 315569520000L;
            C2688f m911u2 = C2688f.m911u(j4 - 62167219200L, 0, C2725o.f610e);
            int length = sb.length();
            sb.append(m911u2);
            if (m911u2.m918n() == 0) {
                sb.append(":00");
            }
            if (j3 < 0) {
                if (m911u2.m917o() == -10000) {
                    sb.replace(length, length + 2, Long.toString(j3 - 1));
                } else if (j4 == 0) {
                    sb.insert(length, j3);
                } else {
                    sb.insert(length + 1, Math.abs(j3));
                }
            }
        }
        if (m753i > 0) {
            sb.append('.');
            int i2 = 100000000;
            while (true) {
                if (m753i <= 0 && i % 3 == 0 && i >= -2) {
                    break;
                }
                int i3 = m753i / i2;
                sb.append((char) (i3 + 48));
                m753i -= i3 * i2;
                i2 /= 10;
                i++;
            }
        }
        sb.append('Z');
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: b */
    public int mo881b(C2710t c2710t, CharSequence charSequence, int i) {
        int i2;
        int i3;
        C2709s c2709s = new C2709s();
        c2709s.m879a(C2691a.f514h);
        c2709s.m875e('T');
        EnumC2730a enumC2730a = EnumC2730a.HOUR_OF_DAY;
        c2709s.m869k(enumC2730a, 2);
        c2709s.m875e(':');
        EnumC2730a enumC2730a2 = EnumC2730a.MINUTE_OF_HOUR;
        c2709s.m869k(enumC2730a2, 2);
        c2709s.m875e(':');
        EnumC2730a enumC2730a3 = EnumC2730a.SECOND_OF_MINUTE;
        c2709s.m869k(enumC2730a3, 2);
        EnumC2730a enumC2730a4 = EnumC2730a.NANO_OF_SECOND;
        int i4 = 0;
        c2709s.m878b(enumC2730a4, 0, 9, true);
        c2709s.m875e('Z');
        C2697g m897h = c2709s.m861s().m897h(false);
        C2710t m856c = c2710t.m856c();
        int mo881b = m897h.mo881b(m856c, charSequence, i);
        if (mo881b < 0) {
            return mo881b;
        }
        long longValue = m856c.m850i(EnumC2730a.YEAR).longValue();
        int intValue = m856c.m850i(EnumC2730a.MONTH_OF_YEAR).intValue();
        int intValue2 = m856c.m850i(EnumC2730a.DAY_OF_MONTH).intValue();
        int intValue3 = m856c.m850i(enumC2730a).intValue();
        int intValue4 = m856c.m850i(enumC2730a2).intValue();
        Long m850i = m856c.m850i(enumC2730a3);
        Long m850i2 = m856c.m850i(enumC2730a4);
        int intValue5 = m850i != null ? m850i.intValue() : 0;
        int intValue6 = m850i2 != null ? m850i2.intValue() : 0;
        if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
            i2 = 0;
            i3 = intValue5;
            i4 = 1;
        } else if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
            c2710t.m844o();
            i2 = intValue3;
            i3 = 59;
        } else {
            i2 = intValue3;
            i3 = intValue5;
        }
        try {
            return c2710t.m845n(enumC2730a4, intValue6, i, c2710t.m845n(EnumC2730a.INSTANT_SECONDS, AbstractC2669d.m986f(longValue / 10000, 315569520000L) + C2688f.m913s(((int) longValue) % 10000, intValue, intValue2, i2, intValue4, i3, 0).m909w(i4).m929A(C2725o.f610e), i, mo881b));
        } catch (RuntimeException unused) {
            return ~i;
        }
    }

    public String toString() {
        return "Instant()";
    }
}
