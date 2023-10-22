package p033j$.time.format;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Objects;
import p033j$.time.AbstractC2675a;
import p033j$.time.temporal.C2729A;
import p033j$.time.temporal.InterfaceC2744o;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.i */
/* loaded from: classes2.dex */
public final class C2699i implements InterfaceC2698h {

    /* renamed from: a */
    private final InterfaceC2744o f532a;

    /* renamed from: b */
    private final int f533b;

    /* renamed from: c */
    private final int f534c;

    /* renamed from: d */
    private final boolean f535d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2699i(InterfaceC2744o interfaceC2744o, int i, int i2, boolean z) {
        Objects.requireNonNull(interfaceC2744o, "field");
        if (!interfaceC2744o.mo730a().m759f()) {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + interfaceC2744o);
        } else if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i);
        } else if (i2 < 1 || i2 > 9) {
            throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i2);
        } else if (i2 >= i) {
            this.f532a = interfaceC2744o;
            this.f533b = i;
            this.f534c = i2;
            this.f535d = z;
        } else {
            throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i2 + " < " + i);
        }
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: a */
    public boolean mo882a(C2712v c2712v, StringBuilder sb) {
        Long m835e = c2712v.m835e(this.f532a);
        if (m835e == null) {
            return false;
        }
        C2714x m838b = c2712v.m838b();
        long longValue = m835e.longValue();
        C2729A mo730a = this.f532a.mo730a();
        mo730a.m763b(longValue, this.f532a);
        BigDecimal valueOf = BigDecimal.valueOf(mo730a.m760e());
        BigDecimal divide = BigDecimal.valueOf(longValue).subtract(valueOf).divide(BigDecimal.valueOf(mo730a.m761d()).subtract(valueOf).add(BigDecimal.ONE), 9, RoundingMode.FLOOR);
        BigDecimal stripTrailingZeros = divide.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO : divide.stripTrailingZeros();
        if (stripTrailingZeros.scale() != 0) {
            String m830a = m838b.m830a(stripTrailingZeros.setScale(Math.min(Math.max(stripTrailingZeros.scale(), this.f533b), this.f534c), RoundingMode.FLOOR).toPlainString().substring(2));
            if (this.f535d) {
                sb.append(m838b.m828c());
            }
            sb.append(m830a);
            return true;
        } else if (this.f533b > 0) {
            if (this.f535d) {
                sb.append(m838b.m828c());
            }
            for (int i = 0; i < this.f533b; i++) {
                sb.append(m838b.m825f());
            }
            return true;
        } else {
            return true;
        }
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: b */
    public int mo881b(C2710t c2710t, CharSequence charSequence, int i) {
        int i2;
        int i3 = c2710t.m848k() ? this.f533b : 0;
        int i4 = c2710t.m848k() ? this.f534c : 9;
        int length = charSequence.length();
        if (i == length) {
            return i3 > 0 ? ~i : i;
        }
        if (this.f535d) {
            if (charSequence.charAt(i) != c2710t.m853f().m828c()) {
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
            int m829b = c2710t.m853f().m829b(charSequence.charAt(i8));
            if (m829b >= 0) {
                i7 = (i7 * 10) + m829b;
                i8 = i9;
            } else if (i9 < i6) {
                return ~i5;
            } else {
                i2 = i9 - 1;
            }
        }
        BigDecimal movePointLeft = new BigDecimal(i7).movePointLeft(i2 - i5);
        C2729A mo730a = this.f532a.mo730a();
        BigDecimal valueOf = BigDecimal.valueOf(mo730a.m760e());
        return c2710t.m845n(this.f532a, movePointLeft.multiply(BigDecimal.valueOf(mo730a.m761d()).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact(), i5, i2);
    }

    public String toString() {
        String str = this.f535d ? ",DecimalPoint" : "";
        StringBuilder m960a = AbstractC2675a.m960a("Fraction(");
        m960a.append(this.f532a);
        m960a.append(",");
        m960a.append(this.f533b);
        m960a.append(",");
        m960a.append(this.f534c);
        m960a.append(str);
        m960a.append(")");
        return m960a.toString();
    }
}
