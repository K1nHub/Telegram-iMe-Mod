package p033j$.time.format;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Objects;
import p033j$.time.AbstractC2679a;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.InterfaceC2748o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.i */
/* loaded from: classes2.dex */
public final class C2703i implements InterfaceC2702h {

    /* renamed from: a */
    private final InterfaceC2748o f532a;

    /* renamed from: b */
    private final int f533b;

    /* renamed from: c */
    private final int f534c;

    /* renamed from: d */
    private final boolean f535d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2703i(InterfaceC2748o interfaceC2748o, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2748o, "field");
        if (!interfaceC2748o.mo731a().m760f()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2748o);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f532a = interfaceC2748o;
            this.f533b = i;
            this.f534c = i2;
            this.f535d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: a */
    public boolean mo883a(C2716v c2716v, StringBuilder sb) {
        Long m836e = c2716v.m836e(this.f532a);
        if (m836e == null) {
            return false;
        }
        C2718x m839b = c2716v.m839b();
        long longValue = m836e.longValue();
        C2733A mo731a = this.f532a.mo731a();
        mo731a.m764b(longValue, this.f532a);
        BigDecimal valueOf = BigDecimal.valueOf(mo731a.m761e());
        BigDecimal divide = BigDecimal.valueOf(longValue).subtract(valueOf).divide(BigDecimal.valueOf(mo731a.m762d()).subtract(valueOf).add(BigDecimal.ONE), 9, RoundingMode.FLOOR);
        BigDecimal stripTrailingZeros = divide.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO : divide.stripTrailingZeros();
        if (stripTrailingZeros.scale() != 0) {
            String m831a = m839b.m831a(stripTrailingZeros.setScale(Math.min(Math.max(stripTrailingZeros.scale(), this.f533b), this.f534c), RoundingMode.FLOOR).toPlainString().substring(2));
            if (this.f535d) {
                sb.append(m839b.m829c());
            }
            sb.append(m831a);
            return true;
        } else if (this.f533b > 0) {
            if (this.f535d) {
                sb.append(m839b.m829c());
            }
            for (int i = 0; i < this.f533b; i++) {
                sb.append(m839b.m826f());
            }
            return true;
        } else {
            return true;
        }
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: b */
    public int mo882b(C2714t c2714t, CharSequence charSequence, int i) {
        int i2;
        int i3 = c2714t.m849k() ? this.f533b : 0;
        int i4 = c2714t.m849k() ? this.f534c : 9;
        int length = charSequence.length();
        if (i == length) {
            return i3 > 0 ? ~i : i;
        }
        if (this.f535d) {
            if (charSequence.charAt(i) != c2714t.m854f().m829c()) {
                return i3 > 0 ? ~i : i;
            }
            i++;
        }
        int i5 = i;
        int i6 = i3 + i5;
        if (i6 > length) {
            return ~i5;
        }
        int min = Math.min(i4 + i5, length);
        int i7 = 0;
        int i8 = i5;
        while (true) {
            if (i8 >= min) {
                i2 = i8;
                break;
            }
            int i9 = i8 + 1;
            int m830b = c2714t.m854f().m830b(charSequence.charAt(i8));
            if (m830b >= 0) {
                i7 = (i7 * 10) + m830b;
                i8 = i9;
            } else if (i9 < i6) {
                return ~i5;
            } else {
                i2 = i9 - 1;
            }
        }
        BigDecimal movePointLeft = new BigDecimal(i7).movePointLeft(i2 - i5);
        C2733A mo731a = this.f532a.mo731a();
        BigDecimal valueOf = BigDecimal.valueOf(mo731a.m761e());
        return c2714t.m846n(this.f532a, movePointLeft.multiply(BigDecimal.valueOf(mo731a.m762d()).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact(), i5, i2);
    }

    public String toString() {
        String str = this.f535d ? ",DecimalPoint" : "";
        StringBuilder m961a = AbstractC2679a.m961a("Fraction(");
        m961a.append(this.f532a);
        m961a.append(",");
        m961a.append(this.f533b);
        m961a.append(",");
        m961a.append(this.f534c);
        m961a.append(str);
        m961a.append(")");
        return m961a.toString();
    }
}
