package p034j$.time.temporal;

import java.io.Serializable;
import p034j$.time.C2362a;
/* renamed from: j$.time.temporal.m */
/* loaded from: classes2.dex */
public final class C2401m implements Serializable {

    /* renamed from: a */
    private final long f525a;

    /* renamed from: b */
    private final long f526b;

    /* renamed from: c */
    private final long f527c;

    /* renamed from: d */
    private final long f528d;

    private C2401m(long j, long j2, long j3, long j4) {
        this.f525a = j;
        this.f526b = j2;
        this.f527c = j3;
        this.f528d = j4;
    }

    /* renamed from: c */
    public static C2401m m652c(long j, long j2) {
        if (j <= j2) {
            return new C2401m(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: d */
    public static C2401m m651d(long j, long j2, long j3) {
        if (j <= j) {
            if (j2 <= j3) {
                if (j <= j3) {
                    return new C2401m(j, j, j2, j3);
                }
                throw new IllegalArgumentException("Minimum value must be less than maximum value");
            }
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
    }

    /* renamed from: a */
    public long m654a(long j, InterfaceC2398j interfaceC2398j) {
        if (j >= this.f525a && j <= this.f528d) {
            return j;
        }
        throw new C2362a("Invalid value for " + interfaceC2398j + " (valid values " + this + "): " + j);
    }

    /* renamed from: b */
    public boolean m653b() {
        return this.f525a == this.f526b && this.f527c == this.f528d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2401m) {
            C2401m c2401m = (C2401m) obj;
            return this.f525a == c2401m.f525a && this.f526b == c2401m.f526b && this.f527c == c2401m.f527c && this.f528d == c2401m.f528d;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f525a;
        long j2 = this.f526b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f527c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f528d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f525a);
        if (this.f525a != this.f526b) {
            sb.append('/');
            sb.append(this.f526b);
        }
        sb.append(" - ");
        sb.append(this.f527c);
        if (this.f527c != this.f528d) {
            sb.append('/');
            sb.append(this.f528d);
        }
        return sb.toString();
    }
}
