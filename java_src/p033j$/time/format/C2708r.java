package p033j$.time.format;

import java.text.ParsePosition;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p033j$.time.AbstractC2724n;
import p033j$.time.C2725o;
import p033j$.time.DateTimeException;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2753x;
import p033j$.time.zone.AbstractC2762g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.r */
/* loaded from: classes2.dex */
public class C2708r implements InterfaceC2698h {

    /* renamed from: a */
    private static volatile Map.Entry f558a;

    /* renamed from: b */
    private static volatile Map.Entry f559b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2708r(InterfaceC2753x interfaceC2753x, String str) {
    }

    /* renamed from: c */
    private int m880c(C2710t c2710t, CharSequence charSequence, int i, int i2, C2702l c2702l) {
        String upperCase = charSequence.toString().substring(i, i2).toUpperCase();
        if (i2 >= charSequence.length() || charSequence.charAt(i2) == '0' || c2710t.m858a(charSequence.charAt(i2), 'Z')) {
            c2710t.m846m(AbstractC2724n.m788l(upperCase));
            return i2;
        }
        C2710t m856c = c2710t.m856c();
        int mo881b = c2702l.mo881b(m856c, charSequence, i2);
        try {
            if (mo881b >= 0) {
                c2710t.m846m(AbstractC2724n.m787m(upperCase, C2725o.m781s((int) m856c.m850i(EnumC2730a.OFFSET_SECONDS).longValue())));
                return mo881b;
            } else if (c2702l == C2702l.f543d) {
                return ~i;
            } else {
                c2710t.m846m(AbstractC2724n.m788l(upperCase));
                return i2;
            }
        } catch (DateTimeException unused) {
            return ~i;
        }
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: a */
    public boolean mo882a(C2712v c2712v, StringBuilder sb) {
        AbstractC2724n abstractC2724n = (AbstractC2724n) c2712v.m834f(C2692b.f524a);
        if (abstractC2724n == null) {
            return false;
        }
        sb.append(abstractC2724n.mo779j());
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: b */
    public int mo881b(C2710t c2710t, CharSequence charSequence, int i) {
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
                    if (c2710t.m858a(charAt, 'U') && c2710t.m858a(charAt2, 'T')) {
                        int i4 = i + 3;
                        return (length < i4 || !c2710t.m858a(charSequence.charAt(i3), 'C')) ? m880c(c2710t, charSequence, i, i3, C2702l.f544e) : m880c(c2710t, charSequence, i, i4, C2702l.f544e);
                    } else if (c2710t.m858a(charAt, 'G') && length >= (i2 = i + 3) && c2710t.m858a(charAt2, 'M') && c2710t.m858a(charSequence.charAt(i3), 'T')) {
                        return m880c(c2710t, charSequence, i, i2, C2702l.f544e);
                    }
                }
                Set m701a = AbstractC2762g.m701a();
                int size = ((HashSet) m701a).size();
                Map.Entry entry = c2710t.m849j() ? f558a : f559b;
                if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
                    synchronized (this) {
                        entry = c2710t.m849j() ? f558a : f559b;
                        if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
                            entry = new AbstractMap.SimpleImmutableEntry(Integer.valueOf(size), C2704n.m885e(m701a, c2710t));
                            if (c2710t.m849j()) {
                                f558a = entry;
                            } else {
                                f559b = entry;
                            }
                        }
                    }
                }
                ParsePosition parsePosition = new ParsePosition(i);
                String m887c = ((C2704n) entry.getValue()).m887c(charSequence, parsePosition);
                if (m887c != null) {
                    c2710t.m846m(AbstractC2724n.m788l(m887c));
                    return parsePosition.getIndex();
                } else if (c2710t.m858a(charAt, 'Z')) {
                    c2710t.m846m(C2725o.f610e);
                    return i + 1;
                } else {
                    return ~i;
                }
            }
            return m880c(c2710t, charSequence, i, i, C2702l.f543d);
        }
        throw new IndexOutOfBoundsException();
    }

    public String toString() {
        return "ZoneRegionId()";
    }
}
