package p033j$.time.format;

import java.text.ParsePosition;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p033j$.time.AbstractC2725n;
import p033j$.time.C2726o;
import p033j$.time.DateTimeException;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2754x;
import p033j$.time.zone.AbstractC2763g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.r */
/* loaded from: classes2.dex */
public class C2709r implements InterfaceC2699h {

    /* renamed from: a */
    private static volatile Map.Entry f558a;

    /* renamed from: b */
    private static volatile Map.Entry f559b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2709r(InterfaceC2754x interfaceC2754x, String str) {
    }

    /* renamed from: c */
    private int m881c(C2711t c2711t, CharSequence charSequence, int i, int i2, C2703l c2703l) {
        String upperCase = charSequence.toString().substring(i, i2).toUpperCase();
        if (i2 >= charSequence.length() || charSequence.charAt(i2) == '0' || c2711t.m859a(charSequence.charAt(i2), 'Z')) {
            c2711t.m847m(AbstractC2725n.m789l(upperCase));
            return i2;
        }
        C2711t m857c = c2711t.m857c();
        int mo882b = c2703l.mo882b(m857c, charSequence, i2);
        try {
            if (mo882b >= 0) {
                c2711t.m847m(AbstractC2725n.m788m(upperCase, C2726o.m782s((int) m857c.m851i(EnumC2731a.OFFSET_SECONDS).longValue())));
                return mo882b;
            } else if (c2703l == C2703l.f543d) {
                return ~i;
            } else {
                c2711t.m847m(AbstractC2725n.m789l(upperCase));
                return i2;
            }
        } catch (DateTimeException unused) {
            return ~i;
        }
    }

    @Override // p033j$.time.format.InterfaceC2699h
    /* renamed from: a */
    public boolean mo883a(C2713v c2713v, StringBuilder sb) {
        AbstractC2725n abstractC2725n = (AbstractC2725n) c2713v.m835f(C2693b.f524a);
        if (abstractC2725n == null) {
            return false;
        }
        sb.append(abstractC2725n.mo780j());
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2699h
    /* renamed from: b */
    public int mo882b(C2711t c2711t, CharSequence charSequence, int i) {
        int i2;
        int length = charSequence.length();
        if (i <= length) {
            if (i == length) {
                return ~i;
            }
            char charAt = charSequence.charAt(i);
            if (charAt != '+' && charAt != '-') {
                int i3 = i + 2;
                if (length >= i3) {
                    char charAt2 = charSequence.charAt(i + 1);
                    if (c2711t.m859a(charAt, 'U') && c2711t.m859a(charAt2, 'T')) {
                        int i4 = i + 3;
                        return (length < i4 || !c2711t.m859a(charSequence.charAt(i3), 'C')) ? m881c(c2711t, charSequence, i, i3, C2703l.f544e) : m881c(c2711t, charSequence, i, i4, C2703l.f544e);
                    } else if (c2711t.m859a(charAt, 'G') && length >= (i2 = i + 3) && c2711t.m859a(charAt2, 'M') && c2711t.m859a(charSequence.charAt(i3), 'T')) {
                        return m881c(c2711t, charSequence, i, i2, C2703l.f544e);
                    }
                }
                Set m702a = AbstractC2763g.m702a();
                int size = ((HashSet) m702a).size();
                Map.Entry entry = c2711t.m850j() ? f558a : f559b;
                if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
                    synchronized (this) {
                        entry = c2711t.m850j() ? f558a : f559b;
                        if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
                            entry = new AbstractMap.SimpleImmutableEntry(Integer.valueOf(size), C2705n.m886e(m702a, c2711t));
                            if (c2711t.m850j()) {
                                f558a = entry;
                            } else {
                                f559b = entry;
                            }
                        }
                    }
                }
                ParsePosition parsePosition = new ParsePosition(i);
                String m888c = ((C2705n) entry.getValue()).m888c(charSequence, parsePosition);
                if (m888c != null) {
                    c2711t.m847m(AbstractC2725n.m789l(m888c));
                    return parsePosition.getIndex();
                } else if (c2711t.m859a(charAt, 'Z')) {
                    c2711t.m847m(C2726o.f610e);
                    return i + 1;
                } else {
                    return ~i;
                }
            }
            return m881c(c2711t, charSequence, i, i, C2703l.f543d);
        }
        throw new IndexOutOfBoundsException();
    }

    public String toString() {
        return "ZoneRegionId()";
    }
}
