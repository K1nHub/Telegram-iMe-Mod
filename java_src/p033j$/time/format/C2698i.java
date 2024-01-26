package p033j$.time.format;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Objects;
import p033j$.time.AbstractC2674a;
import p033j$.time.temporal.C2728A;
import p033j$.time.temporal.InterfaceC2743o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.i */
/* loaded from: classes2.dex */
public final class C2698i implements InterfaceC2697h {

    /* renamed from: a */
    private final InterfaceC2743o f532a;

    /* renamed from: b */
    private final int f533b;

    /* renamed from: c */
    private final int f534c;

    /* renamed from: d */
    private final boolean f535d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2698i(InterfaceC2743o interfaceC2743o, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2743o, "field");
        if (!interfaceC2743o.mo734a().m763f()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2743o);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f532a = interfaceC2743o;
            this.f533b = i;
            this.f534c = i2;
            this.f535d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: a */
    public boolean mo886a(C2711v c2711v, StringBuilder sb) {
        Long m839e = c2711v.m839e(this.f532a);
        if (m839e == null) {
            return false;
        }
        C2713x m842b = c2711v.m842b();
        long longValue = m839e.longValue();
        C2728A mo734a = this.f532a.mo734a();
        mo734a.m767b(longValue, this.f532a);
        BigDecimal valueOf = BigDecimal.valueOf(mo734a.m764e());
        BigDecimal divide = BigDecimal.valueOf(longValue).subtract(valueOf).divide(BigDecimal.valueOf(mo734a.m765d()).subtract(valueOf).add(BigDecimal.ONE), 9, RoundingMode.FLOOR);
        BigDecimal stripTrailingZeros = divide.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO : divide.stripTrailingZeros();
        if (stripTrailingZeros.scale() != 0) {
            String m834a = m842b.m834a(stripTrailingZeros.setScale(Math.min(Math.max(stripTrailingZeros.scale(), this.f533b), this.f534c), RoundingMode.FLOOR).toPlainString().substring(2));
            if (this.f535d) {
                sb.append(m842b.m832c());
            }
            sb.append(m834a);
            return true;
        } else if (this.f533b > 0) {
            if (this.f535d) {
                sb.append(m842b.m832c());
            }
            for (int i = 0; i < this.f533b; i++) {
                sb.append(m842b.m829f());
            }
            return true;
        } else {
            return true;
        }
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: b */
    public int mo885b(C2709t c2709t, CharSequence charSequence, int i) {
        int i2;
        int i3 = c2709t.m852k() ? this.f533b : 0;
        int i4 = c2709t.m852k() ? this.f534c : 9;
        int length = charSequence.length();
        if (i == length) {
            return i3 > 0 ? ~i : i;
        }
        if (this.f535d) {
            if (charSequence.charAt(i) != c2709t.m857f().m832c()) {
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
            int m833b = c2709t.m857f().m833b(charSequence.charAt(i8));
            if (m833b >= 0) {
                i7 = (i7 * 10) + m833b;
                i8 = i9;
            } else if (i9 < i6) {
                return ~i5;
            } else {
                i2 = i9 - 1;
            }
        }
        BigDecimal movePointLeft = new BigDecimal(i7).movePointLeft(i2 - i5);
        C2728A mo734a = this.f532a.mo734a();
        BigDecimal valueOf = BigDecimal.valueOf(mo734a.m764e());
        return c2709t.m849n(this.f532a, movePointLeft.multiply(BigDecimal.valueOf(mo734a.m765d()).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact(), i5, i2);
    }

    public String toString() {
        String str = this.f535d ? ",DecimalPoint" : "";
        StringBuilder m964a = AbstractC2674a.m964a("Fraction(");
        m964a.append(this.f532a);
        m964a.append(",");
        m964a.append(this.f533b);
        m964a.append(",");
        m964a.append(this.f534c);
        m964a.append(str);
        m964a.append(")");
        return m964a.toString();
    }
}
