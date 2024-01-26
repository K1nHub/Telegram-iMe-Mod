package p033j$.time.temporal;

import java.io.Serializable;
import p033j$.time.DateTimeException;
/* renamed from: j$.time.temporal.A */
/* loaded from: classes2.dex */
public final class C2728A implements Serializable {

    /* renamed from: a */
    private final long f621a;

    /* renamed from: b */
    private final long f622b;

    /* renamed from: c */
    private final long f623c;

    /* renamed from: d */
    private final long f624d;

    private C2728A(long j, long j2, long j3, long j4) {
        this.f621a = j;
        this.f622b = j2;
        this.f623c = j3;
        this.f624d = j4;
    }

    /* renamed from: c */
    private String m766c(InterfaceC2743o interfaceC2743o, long j) {
        if (interfaceC2743o == null) {
            return "Invalid value (valid values " + this + "): " + j;
        }
        return "Invalid value for " + interfaceC2743o + " (valid values " + this + "): " + j;
    }

    /* renamed from: i */
    public static C2728A m760i(long j, long j2) {
        if (j <= j2) {
            return new C2728A(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: j */
    public static C2728A m759j(long j, long j2, long j3) {
        if (j <= j) {
            if (j2 <= j3) {
                if (j <= j3) {
                    return new C2728A(j, j, j2, j3);
                }
                throw new IllegalArgumentException("Minimum value must be less than maximum value");
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    /* renamed from: a */
    public int m768a(long j, InterfaceC2743o interfaceC2743o) {
        if (m762g() && m761h(j)) {
            return (int) j;
        }
        throw new DateTimeException(m766c(interfaceC2743o, j));
    }

    /* renamed from: b */
    public long m767b(long j, InterfaceC2743o interfaceC2743o) {
        if (m761h(j)) {
            return j;
        }
        throw new DateTimeException(m766c(interfaceC2743o, j));
    }

    /* renamed from: d */
    public long m765d() {
        return this.f624d;
    }

    /* renamed from: e */
    public long m764e() {
        return this.f621a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2728A) {
            C2728A c2728a = (C2728A) obj;
            return this.f621a == c2728a.f621a && this.f622b == c2728a.f622b && this.f623c == c2728a.f623c && this.f624d == c2728a.f624d;
        }
        return false;
    }

    /* renamed from: f */
    public boolean m763f() {
        return this.f621a == this.f622b && this.f623c == this.f624d;
    }

    /* renamed from: g */
    public boolean m762g() {
        return this.f621a >= -2147483648L && this.f624d <= 2147483647L;
    }

    /* renamed from: h */
    public boolean m761h(long j) {
        return j >= this.f621a && j <= this.f624d;
    }

    public int hashCode() {
        long j = this.f621a;
        long j2 = this.f622b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f623c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f624d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f621a);
        if (this.f621a != this.f622b) {
            sb.append('/');
            sb.append(this.f622b);
        }
        sb.append(" - ");
        sb.append(this.f623c);
        if (this.f623c != this.f624d) {
            sb.append('/');
            sb.append(this.f624d);
        }
        return sb.toString();
    }
}
