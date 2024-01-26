package p033j$.time.format;

import java.text.ParsePosition;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p033j$.time.AbstractC2723n;
import p033j$.time.C2724o;
import p033j$.time.DateTimeException;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2752x;
import p033j$.time.zone.AbstractC2761g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.r */
/* loaded from: classes2.dex */
public class C2707r implements InterfaceC2697h {

    /* renamed from: a */
    private static volatile Map.Entry f558a;

    /* renamed from: b */
    private static volatile Map.Entry f559b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2707r(InterfaceC2752x interfaceC2752x, String str) {
    }

    /* renamed from: c */
    private int m884c(C2709t c2709t, CharSequence charSequence, int i, int i2, C2701l c2701l) {
        String upperCase = charSequence.toString().substring(i, i2).toUpperCase();
        if (i2 >= charSequence.length() || charSequence.charAt(i2) == '0' || c2709t.m862a(charSequence.charAt(i2), 'Z')) {
            c2709t.m850m(AbstractC2723n.m792l(upperCase));
            return i2;
        }
        C2709t m860c = c2709t.m860c();
        int mo885b = c2701l.mo885b(m860c, charSequence, i2);
        try {
            if (mo885b >= 0) {
                c2709t.m850m(AbstractC2723n.m791m(upperCase, C2724o.m785s((int) m860c.m854i(EnumC2729a.OFFSET_SECONDS).longValue())));
                return mo885b;
            } else if (c2701l == C2701l.f543d) {
                return ~i;
            } else {
                c2709t.m850m(AbstractC2723n.m792l(upperCase));
                return i2;
            }
        } catch (DateTimeException unused) {
            return ~i;
        }
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: a */
    public boolean mo886a(C2711v c2711v, StringBuilder sb) {
        AbstractC2723n abstractC2723n = (AbstractC2723n) c2711v.m838f(C2691b.f524a);
        if (abstractC2723n == null) {
            return false;
        }
        sb.append(abstractC2723n.mo783j());
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: b */
    public int mo885b(C2709t c2709t, CharSequence charSequence, int i) {
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
                    if (c2709t.m862a(charAt, 'U') && c2709t.m862a(charAt2, 'T')) {
                        int i4 = i + 3;
                        return (length < i4 || !c2709t.m862a(charSequence.charAt(i3), 'C')) ? m884c(c2709t, charSequence, i, i3, C2701l.f544e) : m884c(c2709t, charSequence, i, i4, C2701l.f544e);
                    } else if (c2709t.m862a(charAt, 'G') && length >= (i2 = i + 3) && c2709t.m862a(charAt2, 'M') && c2709t.m862a(charSequence.charAt(i3), 'T')) {
                        return m884c(c2709t, charSequence, i, i2, C2701l.f544e);
                    }
                }
                Set m705a = AbstractC2761g.m705a();
                int size = ((HashSet) m705a).size();
                Map.Entry entry = c2709t.m853j() ? f558a : f559b;
                if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
                    synchronized (this) {
                        entry = c2709t.m853j() ? f558a : f559b;
                        if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
                            entry = new AbstractMap.SimpleImmutableEntry(Integer.valueOf(size), C2703n.m889e(m705a, c2709t));
                            if (c2709t.m853j()) {
                                f558a = entry;
                            } else {
                                f559b = entry;
                            }
                        }
                    }
                }
                ParsePosition parsePosition = new ParsePosition(i);
                String m891c = ((C2703n) entry.getValue()).m891c(charSequence, parsePosition);
                if (m891c != null) {
                    c2709t.m850m(AbstractC2723n.m792l(m891c));
                    return parsePosition.getIndex();
                } else if (c2709t.m862a(charAt, 'Z')) {
                    c2709t.m850m(C2724o.f610e);
                    return i + 1;
                } else {
                    return ~i;
                }
            }
            return m884c(c2709t, charSequence, i, i, C2701l.f543d);
        }
        throw new IndexOutOfBoundsException();
    }

    public String toString() {
        return "ZoneRegionId()";
    }
}
