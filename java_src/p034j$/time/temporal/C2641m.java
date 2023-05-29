package p034j$.time.temporal;

import java.io.Serializable;
import p034j$.time.C2602a;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final class C2641m implements Serializable {

    /* renamed from: a */
    private final long f534a;

    /* renamed from: b */
    private final long f535b;

    /* renamed from: c */
    private final long f536c;

    /* renamed from: d */
    private final long f537d;

    private C2641m(long j, long j2, long j3, long j4) {
        this.f534a = j;
        this.f535b = j2;
        this.f536c = j3;
        this.f537d = j4;
    }

    /* renamed from: c */
    public static C2641m m637c(long j, long j2) {
        if (j <= j2) {
            return new C2641m(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: d */
    public static C2641m m636d(long j, long j2, long j3) {
        if (j <= j) {
            if (j2 <= j3) {
                if (j <= j3) {
                    return new C2641m(j, j, j2, j3);
                }
                throw new IllegalArgumentException("Minimum value must be less than maximum value");
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    /* renamed from: a */
    public long m639a(long j, InterfaceC2638j interfaceC2638j) {
        if (j >= this.f534a && j <= this.f537d) {
            return j;
        }
        throw new C2602a("Invalid value for " + interfaceC2638j + " (valid values " + this + "): " + j);
    }

    /* renamed from: b */
    public boolean m638b() {
        return this.f534a == this.f535b && this.f536c == this.f537d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2641m) {
            C2641m c2641m = (C2641m) obj;
            return this.f534a == c2641m.f534a && this.f535b == c2641m.f535b && this.f536c == c2641m.f536c && this.f537d == c2641m.f537d;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f534a;
        long j2 = this.f535b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f536c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f537d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f534a);
        if (this.f534a != this.f535b) {
            sb.append('/');
            sb.append(this.f535b);
        }
        sb.append(" - ");
        sb.append(this.f536c);
        if (this.f536c != this.f537d) {
            sb.append('/');
            sb.append(this.f537d);
        }
        return sb.toString();
    }
}
