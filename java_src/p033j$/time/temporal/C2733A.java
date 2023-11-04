package p033j$.time.temporal;

import java.io.Serializable;
import p033j$.time.DateTimeException;
/* renamed from: j$.time.temporal.A */
/* loaded from: classes2.dex */
public final class C2733A implements Serializable {

    /* renamed from: a */
    private final long f621a;

    /* renamed from: b */
    private final long f622b;

    /* renamed from: c */
    private final long f623c;

    /* renamed from: d */
    private final long f624d;

    private C2733A(long j, long j2, long j3, long j4) {
        this.f621a = j;
        this.f622b = j2;
        this.f623c = j3;
        this.f624d = j4;
    }

    /* renamed from: c */
    private String m763c(InterfaceC2748o interfaceC2748o, long j) {
        if (interfaceC2748o == null) {
            return "Invalid value (valid values " + this + "): " + j;
        }
        return "Invalid value for " + interfaceC2748o + " (valid values " + this + "): " + j;
    }

    /* renamed from: i */
    public static C2733A m757i(long j, long j2) {
        if (j <= j2) {
            return new C2733A(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: j */
    public static C2733A m756j(long j, long j2, long j3) {
        if (j <= j) {
            if (j2 <= j3) {
                if (j <= j3) {
                    return new C2733A(j, j, j2, j3);
                }
                throw new IllegalArgumentException("Minimum value must be less than maximum value");
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    /* renamed from: a */
    public int m765a(long j, InterfaceC2748o interfaceC2748o) {
        if (m759g() && m758h(j)) {
            return (int) j;
        }
        throw new DateTimeException(m763c(interfaceC2748o, j));
    }

    /* renamed from: b */
    public long m764b(long j, InterfaceC2748o interfaceC2748o) {
        if (m758h(j)) {
            return j;
        }
        throw new DateTimeException(m763c(interfaceC2748o, j));
    }

    /* renamed from: d */
    public long m762d() {
        return this.f624d;
    }

    /* renamed from: e */
    public long m761e() {
        return this.f621a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2733A) {
            C2733A c2733a = (C2733A) obj;
            return this.f621a == c2733a.f621a && this.f622b == c2733a.f622b && this.f623c == c2733a.f623c && this.f624d == c2733a.f624d;
        }
        return false;
    }

    /* renamed from: f */
    public boolean m760f() {
        return this.f621a == this.f622b && this.f623c == this.f624d;
    }

    /* renamed from: g */
    public boolean m759g() {
        return this.f621a >= -2147483648L && this.f624d <= 2147483647L;
    }

    /* renamed from: h */
    public boolean m758h(long j) {
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
